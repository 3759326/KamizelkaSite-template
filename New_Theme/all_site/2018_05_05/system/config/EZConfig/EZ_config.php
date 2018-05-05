<?php
/*
  This file automatically generates a configuration page.
  Normally there would be an explenation here, describing all functions.
  This page is somewhat hacked however, and is a very bad example...
*/

	$type = 'config';
	$version = '1.0.4';
	$settings = $installers = array();
	$dir = DIR_CONFIG . 'EZConfig/';
	if ($root = @opendir($dir)) {
		while (false !== ($file=readdir($root))) {
			$file = explode('.',$file);
			if ($file[1] == 'php') { // file extension filter
				$tab = '';
				$file = $file[0];
				$text = explode('_',$file);
				foreach ($text as $txt) $tab .= strtoupper(substr($txt,0,1)) . substr($txt,1) . ' ';
				$tab = trim($tab);
				$settings[$tab] = array(
					array(
						array(
							'input' => 'menus',
							'style' => 'variable',
							'var' => 'menu_' . $file
						)
					),
					array(
						array(
							'input' => array('numbers', 1, 20, 1),
							'style' => 'variable',
							'var' => 'position_' . $file
						)
					)
				);
				if ($file == 'EZ_config') {
					$settings[$tab][] = array(
						array(
							'input' => array('options', array('All' => 0, 'Each' => 1)),
							'style' => 'variable',
							'var' => 'validate'
						)
					);
				}
				$contents = file_get_contents(DIR_CONFIG . 'EZConfig/' . $file . '.php');
				$pattern = preg_quote('$version', '/');
				// finalise the regular expression, matching the whole line
				$pattern = "/^.*$pattern.*\$/m";
				// search, and store all matching occurences in $matches
				if(preg_match_all($pattern, $contents, $matches)){
					$q = strpos($matches[0][0], '"') ? '"' : "'";
					$ver = explode($q, $matches[0][0]);
					$ver = $ver[1];
					$settings[$tab][] = array(
						array(
							'input' => 'version',
							'var' => $ver
						)
					);
				}
				if ($file != 'EZ_config') {
					if (isset($ezconfig['menu_'.$file])) $install = 'uninstall';
					$pattern = preg_quote('$install_check', '/');
					$pattern = "/^.*$pattern.*\$/m";
					if (preg_match_all($pattern, $contents, $matches)) {
						eval($matches[0][0]);
						if (isset($install_check)) {
							$install = $this->model_setting_ezconfig->checkInstall($install_check);
							if ($install) {
								$settings[$tab][] = array(
									array(
										'input' => $install,
										'var' => $file
									)
								);
							}
							if ($install == 'install') $installers[$file] = $tab;
						}
					}
				}
			}
		}
	}
?>