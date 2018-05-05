<?php
class ControllerSettingEzconfig extends Controller {
	private $error = array();
 
	public function index() {
		$this->load->model('setting/setting');
		$this->load->model('setting/ezconfig');

		$ezconfig = $this->model_setting_setting->getSetting('EZ_config');
		$config = (isset($this->request->get['config'])) ? $this->request->get['config'] : 'EZ_config';
		$config_file = $config . '.php';
		$permit = ($config == 'EZ_config' || !isset($ezconfig['validate']) || !$ezconfig['validate']) ? '' : '/' . $config;
		$lang_dir = $this->model_setting_ezconfig->getLanguageDir($this->config->get('config_admin_language'));
		$lang_ready = file_exists(DIR_LANGUAGE . $lang_dir . '/setting/' . $config_file);

		if (!$this->user->hasPermission('access', 'setting/ezconfig' . $permit)) {
			return $this->forward('error/permission');
		}

		$this->data = array_merge($this->data, $this->load->language('setting/EZ_config'));

		$url = 'config=' . $config . '&token=' . $this->session->data['token'];
		$tab_current = (!empty($this->request->get['tab'])) ? $this->request->get['tab'] : ((!empty($this->request->post['tab'])) ? $this->request->post['tab']: false);
		if ($tab_current) $url .= '&tab='.$tab_current;

		// (Un-)Install queries, if button was clicked
		if ($config == 'EZ_config' && isset($this->request->get['install']) || isset($this->request->get['uninstall'])) {
			$install = (isset($this->request->get['install']));
			$config_file = $install ? $this->request->get['install'] : $this->request->get['uninstall'];
			if (file_exists(DIR_CONFIG . 'EZConfig/' . $config_file . '.php')) {
				include(DIR_CONFIG . 'EZConfig/' . $config_file . '.php');
				$tab = '';
				$text = explode('_',$config_file);
				foreach ($text as $txt) $tab .= strtoupper(substr($txt,0,1)) . substr($txt,1) . ' ';
				$tab = trim($tab);
				if ($install_queries && $install) {
					foreach ($install_queries as $query) $this->db->query($query);
					$this->model_setting_ezconfig->editSetting('EZ_config', array('menu_'.$config_file => 'catalog', 'position_'.$config_file => '1'));
					$this->session->data['success'] = sprintf($this->language->get('text_install_success'), $tab);
				} elseif ($uninstall_queries && !$install) {
					foreach ($uninstall_queries as $query) $this->db->query($query);
					$this->model_setting_ezconfig->deleteSetting('EZ_config', array('menu_'.$config_file, 'position_'.$config_file));
					$this->session->data['success'] = sprintf($this->language->get('text_uninstall_success'), $tab, $config_file.'.php');
				}
				$this->redirect($this->url->link('setting/ezconfig', $url, 'SSL'));
			}
		}

		$this->data['tabs'] = array();
		if ($config && file_exists(DIR_CONFIG . 'EZConfig/' . $config_file)) {
			$this->load->model('tool/image');
			if ($config != 'EZ_config' && $lang_ready) $this->load->language('setting/' . $config);
			$title = ($lang_ready) ? $this->language->get('heading_title') : $config;

			$settings = $table = array();
			$type = 'database';

			// Load the generated file if it already exists (to load the settings, only for type == file)
			if (file_exists(DIR_CONFIG . $config_file)) {
				$this->config->load($config);
			}
			include(DIR_CONFIG . 'EZConfig/' . $config_file);

			if ($settings && is_array($settings) && ($type != 'database' || $table)) {
				$this->data['database'] = false;

				// $type == File
				if ($type == 'file') {
					if (!file_exists(DIR_CONFIG . $config_file)) {
						$f = fopen(DIR_CONFIG . $config_file, 'w');
						fclose($f);
					}
					if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate($settings, $config, $permit)) {
						$this->load->model('setting/ezconfig');

						if (!is_writable(DIR_CONFIG . $config_file)) {
							$this->error['warning'] = sprintf($this->language->get('error_not_writable'), $config_file);
						} else {
							if (!$this->request->post) {
								$this->error['warning'] = $this->language->get('error_no_data');
							} else {
								$success = $this->model_setting_ezconfig->saveFileConfig($config_file, $settings, $this->request->post);

								if ($success == false) {
									$this->error['warning'] = sprintf($this->language->get('error_not_saved'), $config_file);
								} else {
									$this->session->data['success'] = sprintf($this->language->get('text_success_file'), $config_file);
									$this->redirect($this->url->link('setting/ezconfig', $url,'SSL'));
								}
							}
						}
					}
				// $type == Config
				} elseif ($type == 'config') {
					if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate($settings, $config, $permit)) {
						$this->session->data['success'] = $this->language->get('text_success');

						foreach ($this->request->post as $group => $configs) {
							if ($config == 'EZ_config' && isset($installers)) {
								foreach ($installers as $installer => $name) {
									unset($configs['menu_'.$installer], $configs['position_'.$installer]);
									$this->session->data['success'] .= sprintf($this->language->get('error_did_not_save'), $name);
								}
							}
							if ($group == $config) $this->model_setting_setting->editSetting($group, $configs);
							else $this->model_setting_ezconfig->editSetting($group, $configs);
						}

						$this->redirect($this->url->link('setting/ezconfig', $url, 'SSL'));
					}
				// $type == Database
				} elseif (isset($table) && is_array($table)) {
					$this->load->model('setting/ezconfig');
					$this->data['database'] = true;
					$table['name'] = $config;
					$settings = $this->model_setting_ezconfig->getDatabaseSettings($table, $settings);
					if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate($settings, $config, $permit)) {
						$results = $this->model_setting_ezconfig->saveDatabaseConfig($table, $this->request->post);

						$success = '';
						foreach ($results as $tab_id => $result) {
							if ($result['text'] != 'delfail') {
								if ($result['text'] && $result['text'] != 'update') $success .= (($success) ? '<br/>' : '') . sprintf($this->language->get('text_success_' . $result['text']), $result['name']);
							} else {
								$this->error['warning'] = (isset($this->error['warning']) ? $this->error['warning'] . '<br/>' : '') . sprintf($this->language->get('error_delete'), $result['name']);
							}
						}

						if (!isset($this->error['warning'])) {
							$this->session->data['success'] = $success . '<br/>' . $this->language->get('text_success');
							$this->redirect($this->url->link('setting/ezconfig', $url, 'SSL'));
						}
					}
				}

				$tab_id = 0;
				//echo "<pre>";print_r($settings);echo "</pre>";
				foreach ($settings as $tab => $content) {
					if ($type == 'database') {
						$tab_id = explode('|',$tab);
						$tab = $tab_id[1];
						$tab_id = $tab_id[0];
						$db = $this->model_setting_ezconfig->getDatabaseValues($table, $tab_id);
					} else {
						$tab_id++;
						$db = array();
					}
					$contents = array();
					$subtabs = false;
					foreach ($content as $head => $option) {
						$data = array();
						foreach ($option as $subhead => $setting) {
							if (isset($setting['input'])) { // Horizontal Tabs Only
								$db_val = isset($db[$setting['var']]) ? $db[$setting['var']] : '';
								$input = $this->getInput($setting, $config, $type, $tab_id, $db_val);
								$data[] = $input;
							} else { // Horizontal and Vertical Tabs
								$subhead = $this->language->get($subhead);
								foreach ($setting as $sett) {
									$db_val = isset($db[$sett['var']]) ? $db[$sett['var']] : '';
									$input = $this->getInput($sett, $config, $type, $tab_id, $db_val);
									$data[$subhead][] = $input;
								}
								$subtabs = true;
							}
						}

						$head = (!is_int($head)) ? $this->language->get($head) : '';
						$contents[] = array('header' => $head, 'settings' => $data);
					}

					$this->data['tabs'][] = array(
						'name' => $this->language->get($tab),
						'id' => $tab_id,
						'content' => $contents,
						'subtabs' => $subtabs
					);
				}

			} else { // Error: No Config or No Settings
				$title = $this->language->get('title_no_settings');
				$this->error['warning'] = sprintf($this->language->get('error_no_settings'), DIR_CONFIG . 'EZConfig/' . $config_file);
			}
		} else { // Error: No Config file found!
			$title = $this->language->get('title_no_config');
			$this->error['warning'] = sprintf($this->language->get('error_no_config'), DIR_CONFIG . 'EZConfig/' . $config_file);
		}

		$this->data['breadcrumbs'] = array();
		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('common/home', $url,'SSL'),
			'text'      => $this->language->get('text_home'),
			'separator' => FALSE
		);
		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('setting/ezconfig',$url,'SSL'),
			'text'      => $title,
			'separator' => ' :: '
		);

		$this->data['action'] = $this->url->link('setting/ezconfig',$url,'SSL');
		$this->data['cancel'] = $this->url->link('setting/ezconfig',$url,'SSL');
		$this->data['image'] = (file_exists(DIR_APPLICATION . 'view/image/' . $config . '.png')) ? $config . '.png' : 'setting.png';

 		if (isset($this->session->data['warning'])) {
			$this->data['error_warning'] = $this->session->data['warning'];
			unset($this->session->data['warning']);
		} elseif (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		$this->document->setTitle($title);

		$this->data['heading_title'] = $title;

		$this->data['javascript'] = (isset($javascript)) ? $javascript : '';

		$this->data['token'] = $this->session->data['token'];

		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$this->template = 'setting/ezconfig.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	private function getInput($setting, $config, $type, $tab_id, $db='') {
		if (isset($this->request->post[$setting['var']])) {
			$var = $this->request->post[$setting['var']];
		} else {
			$default = (isset($setting['default'])) ? $setting['default'] : '';
			if ($type == 'database') {
				$var = ($db) ? $db : $default;
			} else {
				if ($this->config->get($setting['var']) !== null) { // Both 'file' and 'config'!
					$var = $this->config->get($setting['var']);
				} elseif ($type == 'file' && $setting['style'] != 'variable') {
					$var = (defined($setting['var'])) ? constant($setting['var']) : $default;
				} else {
					$var = $default;
				}
			}
		}

		$id = $setting['var'];
		if (($type == 'config' || $type == 'database') && $setting['input'] != 'install' && $setting['input'] != 'uninstall') {
			$group = ($type == 'database') ? $tab_id : (isset($setting['group']) ? $setting['group'] : $config);
			$id = $group . '[' . $id .']';
		}
		$java = (isset($setting['java'])) ? $setting['java'] : false;
		$required = (isset($setting['required'])) ? $setting['required'] : false;
		$error = (isset($this->error[$setting['var']])) ? $this->error[$setting['var']] : false;
		$name = 'entry_' . $setting['var'];
		if (isset($setting['subvar'])) {
			$var = (isset($var[$setting['subvar']])) ? $var[$setting['subvar']] : (isset($setting['default']) ? $setting['default'] : '');
			$id .= '[' . $setting['subvar'] . ']';
			$name = 'entry_' . $setting['subvar'];
			$error = (isset($this->error[$setting['var']][$setting['subvar']])) ? $this->error[$setting['var']][$setting['subvar']] : false;
		}
		if (isset($setting['multi']) && is_array($setting['input'])) {
			$id .= '[]';
			if (!is_array($var)) $var = array($var);
		}
		// Zappo - EZ Config Specific code: Get "global" text (as all settings are auto-generated)
		if ($config == 'EZ_config') {
			if ($setting['input'] == 'version' || $setting['input'] == 'install' || $setting['input'] == 'uninstall') {
				$name = 'entry_' . $setting['input'];
			} else {
				$name = explode('_', $setting['var']);
				$name = 'entry_' . $name[0];
			}
		}
		
		$input = ($setting['input'] != 'version') ? $this->getConfigInput($id, $setting['input'], $var, $required, $java) : '<b>' . $setting['var'] . '</b>';
		$return = array(
			'name'     => ($setting['input'] == 'hidden') ? 'hidden' : $this->getName($name),
			'input'    => $input,
			'required' => $required,
			'error'    => $error
		);
		return $return;
	}

	// Search name entry, by removing 2nd-last part of the string
	private function getName($name, $root=true) {
		$newname = false;
		if ($this->language->get($name) === $name) {
			if (strpos($name, '_')) {
				$newname = explode('_', $name);
				$type = array_pop($newname);
				array_pop($newname);
				$newname = implode('_', $newname) . '_' . $type;
				if ($this->language->get($newname) === $newname) {
					$newname = $this->getName($newname, false);
				}
			}
		}
		if ($newname && $this->language->get($newname) !== $newname) $name = $newname;
		return ($root) ? $this->language->get($name) : $newname;
	}

	private function getConfigInput($name, $input, $selected, $required = false, $java = false) {
		$id = (substr($name,-2) == '[]') ? substr($name,0,-2) . '" multiple="multiple' : $name;
		$id = str_replace(']', '', str_replace('[', '-', str_replace('][', '-', $id)));
		$id = 'id="' . $id . '" name="' . $name . '"' . (($java) ? ' '.$java : '');
		if (is_array($input)) {
			$options = array($id, $selected);
			foreach ($input as $nr => $option) {
				if ($nr) $options[] = $option;
			}
			$returner = call_user_func_array(array($this,$input[0]), $options);
		} else {
			if ($input == 'text' || $input == 'numeric') {
				$size = ($input == 'numeric') ? '3" class="numeric' : '18';
				$returner = '<input type="text" size="'.$size.'" value="'.$selected.'" ' . $id . '/>';
			} elseif ($input == 'hidden') {
				$returner = '<input type="hidden" value="'.$selected.'" ' . $id . '/>';
			} elseif ($input == 'color' || $input == 'colors') {
				$returner = '<input size="8" class="color {required:'.(($required) ? 'true' : 'false').',pickerMode:\'HSV\',hash:'.(($input == 'colors') ? 'true' : 'false').'}" value="'.$selected.'" ' . $id . '/>';
			} elseif ($input == 'image') {
				$thumb = ($selected && file_exists(DIR_IMAGE . $selected)) ? $selected : 'no_image.jpg';
				$thumb = $this->model_tool_image->resize($thumb, 100, 100);
				$num = mt_rand(0, 999999);
				$returner = '<div class="image"><img src="' . $thumb . '" alt="" id="thumb-' . $num . '" /><br /><input type="hidden" name="' . $name . '" value="' . $selected . '" id="image-' . $num . '" />'."\n".
	                  '<a onclick="image_upload(\'image-' . $num . '\', \'thumb-' . $num . '\');">' . $this->language->get('text_browse') . '</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$(\'#thumb-' . $num . '\').attr(\'src\', \'' . $this->language->get('no_image') . '\'); $(\'#image-' . $num . '\').attr(\'value\', \'\');">' . $this->language->get('text_clear') . '</a></div>';
			} elseif ($input == 'install' || $input == 'uninstall') {
				$returner = '<a href="'.$this->url->link('setting/ezconfig', 'config=EZ_config&' . $input . '=' . $name . '&token=' . $this->session->data['token'], 'SSL').'" class="button">' . $this->language->get('text_' . $input) . '</a>';
			} else {
				$returner = call_user_func_array(array($this,$input), array($id, $selected));
			}
		}
		return $returner;
	}

	private function validate($settings, $config, $permit = '') {
		if (!$this->user->hasPermission('modify', 'setting/ezconfig' . $permit)) {
			$this->error['warning'] = $this->language->get('error_permission');
		} else {
			foreach ($settings as $content) {
				foreach ($content as $option) {
					foreach ($option as $setting) {
						if (!isset($setting['var'])) $setting = $setting[0]; // Vertical Tab
						$group = (isset($setting['group'])) ? $setting['group'] : $config; // Group or Filename
						$data = (isset($this->request->post[$group])) ? $this->request->post[$group] : $this->request->post;
						if ($setting['input'] != 'version') {
							$posted = (isset($data[$setting['var']])) ? $data[$setting['var']] : false;
							if (isset($setting['required']) && $setting['required'] && !$posted) {
								$this->error[$setting['var']] = $this->language->get('error_' . $setting['var']);
							}
							if (isset($setting['subvar']) && isset($setting['required']) && $setting['required'] && !$data[$setting['var']][$setting['subvar']]) {
								$this->error[$setting['var']][$setting['subvar']] = $this->language->get('error_' . $setting['subvar']);
							}
						}
					}
				}
			}
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

// - Zappo - Dropdown Functions (Receives: $id, [$selected, [any other options set by 'input']])
	// Get Yes/No Dropdown
	private function yesno($id, $selected='',$yes=1,$no=0) {
		$YesNoDropdown = '<select ' . $id . '>'."\n";
		$YesNoDropdown .= '<option value="'.$yes.'"'.(($selected == $yes) ? ' selected="selected"' : '').'>'.$this->data['text_yes'].'</option>';
		$YesNoDropdown .= '<option value="'.$no.'"'.(($selected == $no || empty($selected)) ? ' selected="selected"' : '').'>'.$this->data['text_no'].'</option>';
		$YesNoDropdown .= '</select>';
		return $YesNoDropdown;
	}

	// Get Seconds Dropdown (in ms)
	private function seconds($id, $selected='') {
		return  '<select ' . $id . '>'.
				'<option value="0"'.(($selected == '0') ? ' selected="selected"' : '').'>0 '.$this->data['text_seconds'].'</option>'.
				'<option value="100"'.(($selected == '100') ? ' selected="selected"' : '').'>0.1 '.$this->data['text_seconds'].'</option>'.
				'<option value="200"'.(($selected == '200') ? ' selected="selected"' : '').'>0.2 '.$this->data['text_seconds'].'</option>'.
				'<option value="300"'.(($selected == '300') ? ' selected="selected"' : '').'>0.3 '.$this->data['text_seconds'].'</option>'.
				'<option value="400"'.(($selected == '400') ? ' selected="selected"' : '').'>0.4 '.$this->data['text_seconds'].'</option>'.
				'<option value="500"'.(($selected == '500' || empty($selected)) ? ' selected="selected"' : '').'>0.5 '.$this->data['text_seconds'].'</option>'.
				'<option value="600"'.(($selected == '600') ? ' selected="selected"' : '').'>0.6 '.$this->data['text_seconds'].'</option>'.
				'<option value="700"'.(($selected == '700') ? ' selected="selected"' : '').'>0.7 '.$this->data['text_seconds'].'</option>'.
				'<option value="800"'.(($selected == '800') ? ' selected="selected"' : '').'>0.8 '.$this->data['text_seconds'].'</option>'.
				'<option value="1000"'.(($selected == '1000') ? ' selected="selected"' : '').'>1 '.$this->data['text_seconds'].'</option>'.
				'<option value="1500"'.(($selected == '1500') ? ' selected="selected"' : '').'>1.5 '.$this->data['text_seconds'].'</option>'.
				'<option value="2000"'.(($selected == '2000') ? ' selected="selected"' : '').'>2 '.$this->data['text_seconds'].'</option>'.
				'<option value="2500"'.(($selected == '2500') ? ' selected="selected"' : '').'>2.5 '.$this->data['text_seconds'].'</option>'.
				'</select>';
	}

	// Get Number Dropdown
	private function numbers($id, $selected=0, $start=0,$stop=10,$interval=1) {
		$interval = (empty($interval) || !is_numeric($interval)) ? 1 : abs((float)$interval);
		$NumberDropdown = '<select ' . $id . '>';
		if ($stop > $start) {
			for ($C = $start; $C <= $stop; $C+=$interval) {
				$NumberDropdown .= '<option value="'.$C.'"'.(($selected == $C) ? ' selected="selected"' : '').'>'.$C.'</option>';
			}
		} else {
			for ($C = $start; $C >= $stop; $C-=$interval) {
				$NumberDropdown .= '<option value="'.$C.'"'.(($selected == $C) ? ' selected="selected"' : '').'>'.$C.'</option>';
			}
		}
		$NumberDropdown .= '</select>';
		return $NumberDropdown;
	}

	// Get the Custom Options dropdown
	private function options($id, $selected, $options) {
		$selected = (!empty($selected) || is_array($selected)) ? $selected : (!in_array('', $options) ? $options[key($options)] : '');
		$optionsDropdown = '<select ' . $id . '>';
		foreach ($options as $name => $option) {
			$name = (is_string($name)) ? $name : $option;
			$optionsDropdown .= '<option value="'.$option.'"';
			if ((is_array($selected) && in_array($option,$selected)) || (!is_array($selected) && $option === $selected)) {
				$optionsDropdown .= ' selected="selected"';
			}
			$optionsDropdown .= '>' . $name . '</option>';
		}
		$optionsDropdown .= '</select>';
		return $optionsDropdown;
	}

	// Get the Files dropdown
	private function files($id, $selected, $dir, $ext) {
		$filesDropdown = '<select ' . $id . '><option value=""'.(empty($selected) ? ' selected="selected"' : '').'> ------ </option>';
		if (file_exists($dir) && $root = @opendir($dir)) {
			while (false !== ($file=readdir($root))) {
				if (in_array(substr($file,-3),$ext)) { // file extension filter
					$filesDropdown .= '<option value="'.$file.'"'.(($selected == $file) ? ' selected="selected"' : '').'>'.$file.'</option>';
				}
			}
		}
		$filesDropdown .= '</select>';
		return $filesDropdown;
	}

// BOF - Zappo - EZ Config - Special Input Functions
	// Get dropdown with Admin Menu values
	function menus($id, $selected='') {
		$this->load->language('common/header');
		$menus = '<select ' . $id . '>'."\n".
				'<option value="catalog"'.((!$selected || $selected == 'catalog') ? ' selected="selected"' : '').'>' . $this->language->get('text_catalog') . '</option>'."\n".
				'<option value="extension"'.(($selected == 'extension') ? ' selected="selected"' : '').'>' . $this->language->get('text_extension') . '</option>'."\n".
				'<option value="sale"'.(($selected == 'sale') ? ' selected="selected"' : '').'>' . $this->language->get('text_sale') . '</option>'."\n".
				'<option value="system"'.(($selected == 'system') ? ' selected="selected"' : '').'>' . $this->language->get('text_system') . '</option>'."\n".
				'<option value="reports"'.(($selected == 'reports') ? ' selected="selected"' : '').'>' . $this->language->get('text_reports') . '</option>'."\n".
				'<option value="help"'.(($selected == 'help') ? ' selected="selected"' : '').'>' . $this->language->get('text_help') . '</option>'."\n".
				'</select>';
		return $menus;
	}
// EOF - Zappo - EZ Config - Special Input Functions

// BOF - Zappo - PDF Invoice - Special Input Functions
	// Get dropdown with Order Status values
	function status($id, $selected='') {
		$status = '<select ' . $id . '><option value=""'.(empty($selected) ? ' selected="selected"' : '').'> ------ </option>';
		$query = $this->db->query("SELECT order_status_id AS id, name FROM " . DB_PREFIX . "order_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY name");
		foreach ($query->rows as $stat) {
			$status .= '<option value="'.$stat['id'].'"'.(((is_array($selected) && in_array($stat['id'],$selected)) || ($selected == $stat['id'])) ? ' selected="selected"' : '').'>'.$stat['name'].'</option>';
		}
		$status .= '</select>';
		return $status;
	}
// EOF - Zappo - PDF Invoice - Special Input Functions
}
?>
