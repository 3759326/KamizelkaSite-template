<?php
class ModelSettingEzconfig extends Model {
	public function getSetting($group, $store_id = 0) {
		$data = array(); 
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE store_id = '" . (int)$store_id . "' AND `group` = '" . $this->db->escape($group) . "'");
		
		foreach ($query->rows as $result) {
			if (!$result['serialized']) {
				$data[$result['key']] = $result['value'];
			} else {
				$data[$result['key']] = unserialize($result['value']);
			}
		}

		return $data;
	}

	// Check for Table, INSERT if needed, and return full settings array
	public function getDatabaseSettings($table, $setting) {
		// Check for Database Table, and add if needed
		$QryCheck = $this->db->query("SHOW TABLES");
		foreach ($QryCheck->rows as $Field) $Fields[] = $Field['Tables_in_'.DB_DATABASE]; // Build array of all table columns
		if (!in_array($table['name'], $Fields)) { // Database entry not found...
			$this->db->query("CREATE TABLE `" . DB_PREFIX . $table['name'] . "` (`".$table['id_column']."` int(11) NOT NULL AUTO_INCREMENT, `".$table['tab_names']."` varchar(32) DEFAULT NULL, PRIMARY KEY (`".$table['id_column']."`)) ENGINE=MyISAM COMMENT='".$table['comment']."'"); // Add database Table
		}
		$columns = array();
		foreach ($setting as $content) {
			foreach ($content as $options) {
				foreach ($options as $settings) {
					$columns[$settings['var']] = $settings['style'];
				}
			}
		}
		// Delete Columns from database, if key is not found in configuration (For when a value is renamed/deleted from settings)
		$rows = array();
		$check_query = $this->db->query("SHOW COLUMNS FROM " . $table['name']);
		foreach ($check_query->rows as $check) {
			if (!array_key_exists($check['Field'], $columns)) { // Database column not found in Settings...
				$this->db->query("ALTER TABLE `" . $table['name'] . "` DROP `" . $check['Field'] . "`"); // Delete database column
			} else {
				$rows[] = $check['Field'];
			}
		}
		// Add new Columns to the database
		foreach ($columns as $field => $set) {
			$sql = ($field == $table['id_column']) ? '' : " DEFAULT " . ((strpos($set, 'int') !== false) ? "'0'" : "''");
			if (isset($prev) && $prev) {
				$sql .= " AFTER `" . $prev . "`"; // Adds the new Column after the last one (keeps database columns lined up with the ones above)
			}
			$prev = $field;
			if (!in_array($field, $rows)) { // Database setting not found in columns...
				$this->db->query("ALTER TABLE `" . $table['name'] . "` ADD `" . $field . "` " . (($set) ? $set : "varchar(32)") . $sql); // Add database entry
			}
		}

		$query = $this->db->query("SELECT `" . $table['id_column'] . "` AS id, `" . $table['tab_names'] . "` AS name FROM `" . $table['name'] . "` ORDER BY `" . $table['id_column'] . "`");
		$settings = array();
		foreach ($query->rows as $value) {
			$tab = $value['id'] . '|' . $value['name'];
			$settings[$tab] = $setting;
		}
		$tab = $this->db->query("SELECT MAX(`" . $table['id_column'] . "`) + 1 AS id FROM `" . $table['name'] . "`");
		$tab = (isset($tab->row['id'])) ? $tab->row['id'] : 1;
		$tab .= '|'.$this->language->get('text_new_tab');
		$settings[$tab] = $setting;

		return $settings;
	}

	// Get Database Settings Values
	public function getDatabaseValues($table, $id) {
		$settings = array();
		$query = $this->db->query("SELECT DISTINCT * FROM `" . $table['name'] . "` WHERE `" . $table['id_column'] . "` = '" . $id . "' ORDER BY `" . $table['id_column'] . "`");
		if ($query->num_rows) {
			$settings = $query->row;
		} else {
			$settings = array($table['id_column'] => $id, $table['tab_names'] => '');
		}
		return $settings;
	}

	public function saveDatabaseConfig($table, $data) {
		// Check for INSERT or UPDATE needs!
		$return = array();
		foreach ($data as $tab => $setting) {
			$exists = $this->db->query("SELECT `" . $table['id_column'] . "` AS id, `" . $table['tab_names'] . "` AS name FROM `" . DB_PREFIX . $table['name'] . "` WHERE `" . $table['id_column'] . "` = '" . (int)$tab . "'");
			$name = (isset($exists->row['name']) && $exists->row['name']) ? $exists->row['name'] : '';
			$exists = (isset($exists->row['id']) && $exists->row['id']) ? $exists->row['id'] : false;
			$return[$tab] = array('name' => $name, 'text' => false);
			if ($setting[$table['tab_names']]) {
				$return[$tab] = array('name' => $setting[$table['tab_names']], 'text' => 'new');
				$id = '';
				$query = "INSERT INTO `" . DB_PREFIX . $table['name'] . "` SET ";
				if ($exists) {
					$query = "UPDATE `" . DB_PREFIX . $table['name'] . "` SET ";
					$id = " WHERE `" . $table['id_column'] . "` = '" . $exists . "'";
					$return[$tab]['text'] = ($setting[$table['tab_names']] == $name) ? 'update' : 'rename';
				}
				foreach ($setting as $key => $value) {
					if (is_array($value)) {
						$vals = '';
						foreach ($value as $val) $vals .= (($vals) ? ',' : '') . $val;
						$value = $vals;
					}
					$query .= "`" . $key . "` = '" . $value . "',";
				}
				$query = substr($query,0,-1) . $id;
				$this->db->query($query);
			} elseif (!$setting[$table['tab_names']] && $exists) {
				$return[$tab]['text'] = 'del';
				if (isset($table['del_check']) && $table['del_check']) {
					$check = $this->db->query("SELECT * FROM `" . DB_PREFIX . $table['del_check'] . "` WHERE `" . $table['id_column'] . "` = '" . $exists . "'");
					if (!$check->num_rows) {
						$this->db->query("DELETE FROM `" . DB_PREFIX . $table['name'] . "` WHERE `" . $table['id_column'] . "` = '" . $exists . "'");
					} else {
						$return[$tab]['text'] = 'delfail';
					}
				} else {
					$this->db->query("DELETE FROM `" . DB_PREFIX . $table['name'] . "` WHERE `" . $table['id_column'] . "` = '" . $exists . "'");
				}
			}
		}
		return $return;
	}

	public function editSetting($group, $data, $store_id = 0) {
		if (!is_array($data)) return false;
		// Check for INSERT or UPDATE needs!
		foreach ($data as $key => $value) {
			$id = '';
			$query = "INSERT INTO ";
			$exist = $this->db->query("SELECT setting_id AS id FROM " . DB_PREFIX . "setting WHERE `key` = '" . $this->db->escape($key) . "'");
			if (isset($exist->row['id']) && $exist->row['id']) {
				$query = "UPDATE ";
				$id = " WHERE `key` = '" . $key . "'";
			}
			if (is_array($value)) {
				$value = serialize($value);
				$id = ", serialized = '1'" . $id;
			}
			$query .= DB_PREFIX . "setting SET store_id = '" . (int)$store_id . "', `group` = '" . $this->db->escape($group) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($value) . "'" . $id;
			$this->db->query($query);
		}
	}

	public function deleteSetting($group, $data) {
		if (!is_array($data)) $data = array($data);
		foreach ($data as $key) {
			$this->db->query("DELETE FROM `" . DB_PREFIX . "setting` WHERE `key` = '" . $this->db->escape($key) . "' AND `group` = '" . $this->db->escape($group) . "'");
		}
	}

	public function checkInstall($data) {
		if (!$data) return false;
		$action = 'uninstall';
		if (!is_array($data)) {
			$QryCheck = $this->db->query("SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = `" . DB_PREFIX . $data . "`");
			if (!$QryCheck->num_rows) $action = 'install';
		} else {
			$QryCheck = $this->db->query("SHOW COLUMNS FROM `" . DB_PREFIX . $data[0] . "`");
			foreach ($QryCheck->rows as $Field) $Fields[] = $Field['Field']; // Build array of all table columns
			if (!in_array($data[1], $Fields)) $action = 'install';
		}
		return $action;
	}

	public function saveFileConfig($file, $settings, $data) {
		$returner = "<?php\r\n".
					"/*\r\n".
					"* OpenCart Shopping Cart\r\n\r\n".
					"* EZConfig created by AvanOsch for http://www.CrystalCopy.nl \r\n\r\n".
					"***********************************************************\r\n".
					"****      THIS FILE IS AUTOMATICALLY GENERATED!!!      ****\r\n".
					"****     USE ADMIN AREA TO CHANGE YOUR SETTINGS!!!     ****\r\n".
					"****   EDIT FILE IN \"EZConfig\" FOLDER TO ADD ENTRIES!  ****\r\n".
					"***********************************************************\r\n".
					"Released under the GNU General Public License\r\n".
					"*/\r\n\r\n";
		foreach ($settings as $tab => $content) {
			$returner .= (!empty($tab)) ? '// BOF - Settings for: '.$tab."\r\n" : '';
			foreach ($content as $head => $option) {
				$returner .= (!empty($head)) ? '  // - Settings for: '.$tab.' - '.$head."\r\n" : '';
				foreach ($option as $setting) {
					$var = $subvar = '';
					if ($data) {
						if (strpos($setting['var'],'[') && strpos($setting['var'],']')) {
							$var = substr($setting['var'], 0, strpos($setting['var'],'['));
							$subvar = substr($setting['var'], strpos($setting['var'],'[')+1, -1);
							$value = (isset($data[$var][$subvar]) && is_numeric($data[$var][$subvar])) ? $data[$var][$subvar] : "'".$data[$var][$subvar]."'";
							if (isset($data[$var][$subvar])) $returner .= "  \$_['".$var."']['".$subvar."'] = ".$value.";\r\n";
						} else {
							$value = '';
							if (isset($setting['multi']) && isset($data[$setting['var']]) && is_array($data[$setting['var']])) {
								foreach ($data[$setting['var']] as $val) $value .= (($value) ? $setting['multi'] : '') . $val;
								$value = "'" . $value . "'";
							} else {
								$value = (isset($data[$setting['var']]) && is_numeric($data[$setting['var']])) ? $data[$setting['var']] : "'".$data[$setting['var']]."'";
							}
							if (isset($data[$setting['var']])) {
								if ($setting['style'] == 'define') {
									$returner .= "  define('".$setting['var']."', ".$value.");\r\n";
								} else {
									$returner .= "  \$_['".$setting['var']."'] = ".$value.";\r\n";
								}
							}
						}
					}
				}
			}
			if (!empty($tab)) $returner .= "// EOF - Settings for: ".$tab."\r\n";
		}
		$returner .= "?>";
		if (@file_put_contents(DIR_CONFIG . $file, $returner)) {
			return true;
		}
		return false;
	}

	// Get Language Directory
	public function getLanguageDir($code = 'en') {
		$query = $this->db->query("SELECT directory as dir FROM `" . DB_PREFIX . "language` WHERE `code` = '" . $code . "'");
		$dir = ($query->num_rows) ? $query->row['dir'] : 'english';
		return $dir;
	}
}
?>
