<?php
/*
  This file automatically generates a configuration page.
  It will save to the database table "setting". (because $type = 'config')
 * You can load the settings to a variable: $settings = $this->config->load('foobar');
   After this, Variables will be available as $settings['foo'];
 * By default, group "THIS_FILENAME" will be used, but you can set any group name you want
 * When using group "config", your settings will be directly available: $this->config->get('foo');
 * By setting the correct variable and group name, you can also load existing settings into your page.
  The configuration page is devided with tabs.
  Each tab can be devided with vertical tabs.
  Each page can have as many rows with options as wanted.
  The number of columns in each row is controlled by the number of options set for that row.
  All the settings are given to the script by a great big array.
  When you "Nest" the rows in another array, a vertical tab will be inserted.
  At the moment, only the following provided inputs are available:
  Use the following values for the 'input' key:
 *	'text'
		-- Use for textfield
 *  'numeric'
		-- Use for numeric textfield (only allows numbers entered)
 *	'yesno'
		-- Use for yes/no dropdown (saves 1 or 0)
 * 	array('yesno', 'true', 'false')
		-- Use for Custom yes/no dropdown
 *	'color' OR 'colors'
		-- Use for color selector (color=FFFFFF, colors=#FFFFFF)
 * 	'image'
		-- Use for browsing/setting an image
 * 	'seconds'
		-- Use for seconds dropdown (saves milliseconds)
 * 	array('numbers', 0, 10, 1)
		-- Use for numbers dropdown (Startnumber, Endnumber, Interval)
 * 	array('options', array('option1','option2'))
		-- Use for custom dropdown (use array with options) OR
 * 	array('options', array('Name 1' => 'option1', 'Name 2' => 'option2'))
		-- Different Val/Option Name combo's
 * 	array('files', 'dir', array('ext', 'ext'))
		-- Use for files dropdown (set directory, and array with extensions)
 ********************* Available Keys ************************
 * 	'input' => SEE ABOVE
		-- Set the type of input (see above for available options)
 * 	'var' => 'variable_name'
		-- Set the Variable Name (also used to get the language variable)
 * 	'style' => 'variable' or 'define'
		-- Setting Style (Used for File Only! Not needed for Database or Config)
 * 	'group' => 'group_name'
		-- Set a custom group to save to (instead of "THIS_FILENAME")
 * 	'subvar' => 'var_name'
		-- Used to Save an array of values => var[subvar] (Only for "config" & "file", Tested for "config" only!)
 * 	'menus'
		-- Used to get Admin Menu's dropdown (For EZ Config itself)
 * 	'status'
		-- Use to get Order Status dropdown (For PDF Invoice)
 * 	'default' => 'value'
		-- Use to set a Default value for your Settings
* 	'required' => true / false
		-- Use to set if an option HAS to be filled-in (Auto-fills Color-fields)
 * 	'multi' => ','
		-- Use for Multiple Select (input = options!). Saves values as String, seperated by the value (',')
 * 	'java' => 'onchange="showHide($(this).attr(\'name\'), this.value)"'
		-- to insert javascript (or other-) attributes to the input
*/

	// Set Configuration Type ('file' or 'config' --> set $db variable for Database)
	$type = 'config';
	$version = '1.1.0';

	$image = $this->model_setting_setting->getSetting('config');
	// Add new image settings to the array
	// Replace the !isset() test with a new test after you saved settings once!
	if (!isset($image['config_image_module_cart_width'])) {
		$image['config_image_module_cart_width'] = $image['config_image_module_cart_height'] = 45;
		$image['config_image_option_width'] = $image['config_image_option_height'] = 45;
	}

	$settings = array(
		'General Settings' => array(
			array(
				array(
					'input' => array('numbers', 0, 100, 5),
					'var' => 'imagengine_image_quality'
				)
			),
			array(
				array(
					'input' => array('numbers', 0, 100, 5),
					'var' => 'imagengine_popup_quality'
				)
			),
			array(
				array(
					'input' => array('options', array('FancyBox' => 'fancybox', 'ColorBox' => 'colorbox')),
					'var' => 'popup_plugin',
					'java' => 'onchange="changePlugin(this.value);"'
				)
			),
			array(
				array(
					'input' => array('options', array('Once' => 0, 'Each Angle' => 1)),
					'var' => 'imagengine_save_angle'
				)
			),
			array(
				array(
					'input' => 'yesno',
					'var' => 'imagengine_cache'
				)
			)
		),
		'Normal Popups' => array(
			'Main Settings' => array(
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_image',
						'subvar' => 'changeSpeed',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_image',
						'subvar' => 'changeFade',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'var' => 'cyclic',
						'default' => 'false'
					)
				)
			),
			'Layout Settings' => array(
				array(
					array(
						'input' => array('options', array('auto', 'yes', 'no')),
						'var' => 'popup_image',
						'subvar' => 'scrolling',
						'default' => 'auto'
					)
				),
				array(
					array(
						'input' => array('numbers', 0, 20, 1),
						'var' => 'popup_image',
						'subvar' => 'padding',
						'default' => '10'
					)
				),
				array(
					array(
						'input' => array('numbers', 0, 30, 1),
						'var' => 'popup_image',
						'subvar' => 'margin',
						'default' => '20'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'autoScale',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'autoDimensions',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => 'numeric',
						'var' => 'popup_image',
						'subvar' => 'width',
						'default' => '560'
					)
				),
				array(
					array(
						'input' => 'numeric',
						'var' => 'popup_image',
						'subvar' => 'height',
						'default' => '340'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'centerOnScroll',
						'default' => 'false'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'hideOnOverlayClick',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'hideOnContentClick',
						'default' => 'false'
					)
				)
			),
			'Display Settings' => array(
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'overlayShow',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('numbers', 0, 1, 0.1),
						'var' => 'popup_image',
						'subvar' => 'overlayOpacity',
						'default' => '3'
					)
				),
				array(
					array(
						'input' => 'colors',
						'var' => 'popup_image',
						'subvar' => 'overlayColor',
						'default' => '#666'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'titleShow',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('options', array('outside', 'float', 'inside', 'over')),
						'var' => 'popup_image',
						'subvar' => 'titlePosition',
						'default' => 'outside'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'showCloseButton',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'showNavArrows',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'enableEscapeButton',
						'default' => 'true'
					)
				)
			),
			'Animation Settings' => array(
				array(
					array(
						'input' => array('options', array('elastic', 'fade', 'none')),
						'var' => 'popup_image',
						'subvar' => 'transitionIn',
						'default' => 'fade'
					)
				),
				array(
					array(
						'input' => array('options', array('elastic', 'fade', 'none')),
						'var' => 'popup_image',
						'subvar' => 'transitionOut',
						'default' => 'fade'
					)
				),
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_image',
						'subvar' => 'speedIn',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_image',
						'subvar' => 'speedOut',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => array('options', array('swing','linear','easeInBack','easeOutBack','easeInOutBack','easeInBounce',
						'easeOutBounce','easeInOutBounce','easeInElastic','easeOutElastic','easeInOutElastic','easeInCirc',
						'easeOutCirc','easeInOutCirc','easeInExpo','easeOutExpo','easeInOutExpo','easeInQuad','easeOutQuad',
						'easeInOutQuad','easeInCubic','easeOutCubic','easeInOutCubic','easeInQuart','easeOutQuart','easeInOutQuart',
						'easeInQuint','easeOutQuint','easeInOutQuint','easeInSine','easeOutSine','easeInOutSine')),
						'var' => 'popup_image',
						'subvar' => 'easingIn',
						'default' => 'swing'
					)
				),
				array(
					array(
						'input' => array('options', array('swing','linear','easeInBack','easeOutBack','easeInOutBack','easeInBounce',
						'easeOutBounce','easeInOutBounce','easeInElastic','easeOutElastic','easeInOutElastic','easeInCirc',
						'easeOutCirc','easeInOutCirc','easeInExpo','easeOutExpo','easeInOutExpo','easeInQuad','easeOutQuad',
						'easeInOutQuad','easeInCubic','easeOutCubic','easeInOutCubic','easeInQuart','easeOutQuart','easeInOutQuart',
						'easeInQuint','easeOutQuint','easeInOutQuint','easeInSine','easeOutSine','easeInOutSine')),
						'var' => 'popup_image',
						'subvar' => 'easingOut',
						'default' => 'swing'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_image',
						'subvar' => 'opacity',
						'default' => 'false'
					)
				)
			)
		),
		'Information Popups' => array(
			'Main Settings' => array(
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_info',
						'subvar' => 'changeSpeed',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_info',
						'subvar' => 'changeFade',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'var' => 'cyclic',
						'default' => 'false'
					)
				)
			),
			'Layout Settings' => array(
				array(
					array(
						'input' => array('options', array('auto', 'yes', 'no')),
						'var' => 'popup_info',
						'subvar' => 'scrolling',
						'default' => 'auto'
					)
				),
				array(
					array(
						'input' => array('numbers', 0, 20, 1),
						'var' => 'popup_info',
						'subvar' => 'padding',
						'default' => '10'
					)
				),
				array(
					array(
						'input' => array('numbers', 0, 30, 1),
						'var' => 'popup_info',
						'subvar' => 'margin',
						'default' => '20'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'autoScale',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'autoDimensions',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => 'numeric',
						'var' => 'popup_info',
						'subvar' => 'width',
						'default' => '560'
					)
				),
				array(
					array(
						'input' => 'numeric',
						'var' => 'popup_info',
						'subvar' => 'height',
						'default' => '340'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'centerOnScroll',
						'default' => 'false'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'hideOnOverlayClick',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'hideOnContentClick',
						'default' => 'false'
					)
				)
			),
			'Display Settings' => array(
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'overlayShow',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('numbers', 0, 1, 0.1),
						'var' => 'popup_info',
						'subvar' => 'overlayOpacity',
						'default' => '3'
					)
				),
				array(
					array(
						'input' => 'colors',
						'var' => 'popup_info',
						'subvar' => 'overlayColor',
						'default' => '#666'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'titleShow',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('options', array('outside', 'float', 'inside', 'over')),
						'var' => 'popup_info',
						'subvar' => 'titlePosition',
						'default' => 'outside'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'showCloseButton',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'showNavArrows',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'enableEscapeButton',
						'default' => 'true'
					)
				)
			),
			'Animation Settings' => array(
				array(
					array(
						'input' => array('options', array('elastic', 'fade', 'none')),
						'var' => 'popup_info',
						'subvar' => 'transitionIn',
						'default' => 'fade'
					)
				),
				array(
					array(
						'input' => array('options', array('elastic', 'fade', 'none')),
						'var' => 'popup_info',
						'subvar' => 'transitionOut',
						'default' => 'fade'
					)
				),
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_info',
						'subvar' => 'speedIn',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_info',
						'subvar' => 'speedOut',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => array('options', array('swing','linear','easeInBack','easeOutBack','easeInOutBack','easeInBounce',
						'easeOutBounce','easeInOutBounce','easeInElastic','easeOutElastic','easeInOutElastic','easeInCirc',
						'easeOutCirc','easeInOutCirc','easeInExpo','easeOutExpo','easeInOutExpo','easeInQuad','easeOutQuad',
						'easeInOutQuad','easeInCubic','easeOutCubic','easeInOutCubic','easeInQuart','easeOutQuart','easeInOutQuart',
						'easeInQuint','easeOutQuint','easeInOutQuint','easeInSine','easeOutSine','easeInOutSine')),
						'var' => 'popup_info',
						'subvar' => 'easingIn',
						'default' => 'swing'
					)
				),
				array(
					array(
						'input' => array('options', array('swing','linear','easeInBack','easeOutBack','easeInOutBack','easeInBounce',
						'easeOutBounce','easeInOutBounce','easeInElastic','easeOutElastic','easeInOutElastic','easeInCirc',
						'easeOutCirc','easeInOutCirc','easeInExpo','easeOutExpo','easeInOutExpo','easeInQuad','easeOutQuad',
						'easeInOutQuad','easeInCubic','easeOutCubic','easeInOutCubic','easeInQuart','easeOutQuart','easeInOutQuart',
						'easeInQuint','easeOutQuint','easeInOutQuint','easeInSine','easeOutSine','easeInOutSine')),
						'var' => 'popup_info',
						'subvar' => 'easingOut',
						'default' => 'swing'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_info',
						'subvar' => 'opacity',
						'default' => 'false'
					)
				)
			)
		),
		'Frame Popups' => array(
			'Main Settings' => array(
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_frame',
						'subvar' => 'changeSpeed',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_frame',
						'subvar' => 'changeFade',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'var' => 'cyclic',
						'default' => 'false'
					)
				)
			),
			'Layout Settings' => array(
				array(
					array(
						'input' => array('options', array('auto', 'yes', 'no')),
						'var' => 'popup_frame',
						'subvar' => 'scrolling',
						'default' => 'auto'
					)
				),
				array(
					array(
						'input' => array('numbers', 0, 20, 1),
						'var' => 'popup_frame',
						'subvar' => 'padding',
						'default' => '10'
					)
				),
				array(
					array(
						'input' => array('numbers', 0, 30, 1),
						'var' => 'popup_frame',
						'subvar' => 'margin',
						'default' => '20'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'autoScale',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'autoDimensions',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => 'numeric',
						'var' => 'popup_frame',
						'subvar' => 'width',
						'default' => '560'
					)
				),
				array(
					array(
						'input' => 'numeric',
						'var' => 'popup_frame',
						'subvar' => 'height',
						'default' => '340'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'centerOnScroll',
						'default' => 'false'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'hideOnOverlayClick',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'hideOnContentClick',
						'default' => 'false'
					)
				)
			),
			'Display Settings' => array(
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'overlayShow',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('numbers', 0, 1, 0.1),
						'var' => 'popup_frame',
						'subvar' => 'overlayOpacity',
						'default' => '3'
					)
				),
				array(
					array(
						'input' => 'colors',
						'var' => 'popup_frame',
						'subvar' => 'overlayColor',
						'default' => '#666'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'titleShow',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('options', array('outside', 'float', 'inside', 'over')),
						'var' => 'popup_frame',
						'subvar' => 'titlePosition',
						'default' => 'outside'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'showCloseButton',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'showNavArrows',
						'default' => 'true'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'enableEscapeButton',
						'default' => 'true'
					)
				)
			),
			'Animation Settings' => array(
				array(
					array(
						'input' => array('options', array('elastic', 'fade', 'none')),
						'var' => 'popup_frame',
						'subvar' => 'transitionIn',
						'default' => 'fade'
					)
				),
				array(
					array(
						'input' => array('options', array('elastic', 'fade', 'none')),
						'var' => 'popup_frame',
						'subvar' => 'transitionOut',
						'default' => 'fade'
					)
				),
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_frame',
						'subvar' => 'speedIn',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => 'seconds',
						'var' => 'popup_frame',
						'subvar' => 'speedOut',
						'default' => '300'
					)
				),
				array(
					array(
						'input' => array('options', array('swing','linear','easeInBack','easeOutBack','easeInOutBack','easeInBounce',
						'easeOutBounce','easeInOutBounce','easeInElastic','easeOutElastic','easeInOutElastic','easeInCirc',
						'easeOutCirc','easeInOutCirc','easeInExpo','easeOutExpo','easeInOutExpo','easeInQuad','easeOutQuad',
						'easeInOutQuad','easeInCubic','easeOutCubic','easeInOutCubic','easeInQuart','easeOutQuart','easeInOutQuart',
						'easeInQuint','easeOutQuint','easeInOutQuint','easeInSine','easeOutSine','easeInOutSine')),
						'var' => 'popup_frame',
						'subvar' => 'easingIn',
						'default' => 'swing'
					)
				),
				array(
					array(
						'input' => array('options', array('swing','linear','easeInBack','easeOutBack','easeInOutBack','easeInBounce',
						'easeOutBounce','easeInOutBounce','easeInElastic','easeOutElastic','easeInOutElastic','easeInCirc',
						'easeOutCirc','easeInOutCirc','easeInExpo','easeOutExpo','easeInOutExpo','easeInQuad','easeOutQuad',
						'easeInOutQuad','easeInCubic','easeOutCubic','easeInOutCubic','easeInQuart','easeOutQuart','easeInOutQuart',
						'easeInQuint','easeOutQuint','easeInOutQuint','easeInSine','easeOutSine','easeInOutSine')),
						'var' => 'popup_frame',
						'subvar' => 'easingOut',
						'default' => 'swing'
					)
				),
				array(
					array(
						'input' => array('yesno', 'true', 'false'),
						'var' => 'popup_frame',
						'subvar' => 'opacity',
						'default' => 'false'
					)
				)
			)
		),
		'Image Add-on Settings' => array(
			array(
				array(
					'input' => 'image',
					'var' => 'imagengine_border_addon'
				),
				array(
					'input' => array('options', array('Wishlist' => 'wishlist', 'Cart' => 'cart',
						'Bestseller' => 'bestseller', 'Carousel' => 'carousel', 'Search' => 'search',
						'Featured' => 'featured', 'Latest' => 'latest', 'Product' => 'thumb',
						'Extra Product' => 'additional', 'Manufacturer' => 'manufacturer',
						'Cart Module' => 'module_cart', 'Compare' => 'compare', 'Special' => 'special',
						'Product Listing' => 'product', 'Category' => 'category', 'Related' => 'related')),
					'multi' => true,
					'var' => 'imagengine_border_show'
				),
				array(
					'input' => 'color',
					'var' => 'imagengine_border_fill'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_border_scale'
				)
			),
			array(
				array(
					'input' => 'numeric',
					'var' => 'imagengine_addon_padding'
				),
				array(
					'input' => 'numeric',
					'required' => true,
					'default' => 20,
					'group'    => 'config',
					'var' => 'config_bestseller_limit'
				),
				array(
					'input' => 'numeric',
					'required' => true,
					'default' => 20,
					'group'    => 'config',
					'var' => 'config_latest_limit'
				),
			),
			array(
				array(
					'input' => 'image',
					'var' => 'imagengine_specials_addon'
				),
				array(
					'input' => array('options', array('Wishlist' => 'wishlist', 'Bestseller' => 'bestseller',
						'Search' => 'search', 'Featured' => 'featured', 'Latest' => 'latest',
						'Product' => 'thumb', 'Compare' => 'compare', 'Product Listing' => 'product',
						'Related' => 'related', 'Manufacturer' => 'manufacturer')),
					'multi' => true,
					'var' => 'imagengine_specials_show'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_specials_x'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_specials_y'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_specials_scale'
				)
			),
			array(
				array(
					'input' => 'image',
					'var' => 'imagengine_bestseller_addon'
				),
				array(
					'input' => array('options', array('Wishlist' => 'wishlist', 'Search' => 'search',
						'Featured' => 'featured', 'Latest' => 'latest', 'Product' => 'thumb',
						'Compare' => 'compare', 'Special' => 'special', 'Product Listing' => 'product',
						'Related' => 'related', 'Manufacturer' => 'manufacturer')),
					'multi' => true,
					'var' => 'imagengine_bestseller_show'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_bestseller_x'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_bestseller_y'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_bestseller_scale'
				)
			),
			array(
				array(
					'input' => 'image',
					'var' => 'imagengine_latest_addon'
				),
				array(
					'input' => array('options', array('Wishlist' => 'wishlist', 'Bestseller' => 'bestseller',
						'Search' => 'search', 'Featured' => 'featured', 'Product' => 'thumb',
						'Compare' => 'compare', 'Special' => 'special', 'Product Listing' => 'product',
						'Related' => 'related', 'Manufacturer' => 'manufacturer')),
					'multi' => true,
					'var' => 'imagengine_latest_show'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_latest_x'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_latest_y'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_latest_scale'
				)
			),
			array(
				array(
					'input' => 'image',
					'var' => 'imagengine_zoom_addon'
				),
				array(
					'input' => array('options', array('Product' => 'thumb', 'Extra Product' => 'additional')),
					'multi' => true,
					'var' => 'imagengine_zoom_show'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_zoom_x'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_zoom_y'
				),
				array(
					'input' => 'numeric',
					'var' => 'imagengine_zoom_scale'
				)
			)
		)
	);

	$images = array();
	foreach ($image as $key => $value) {
		if (substr($key,0,12) == 'config_image') {
			$k = explode('_', $key);
			array_pop($k);
			$k = implode('_', $k);
			if (!isset($images[$k])) $images[$k] = array();
			$images[$k][] = $key;
			if (count($images[$k]) == 2 && !isset($image[$k.'_fixed'])) {
				$images[$k][] = $k . '_angle';
				$images[$k][] = $k . '_anglefix';
				$images[$k][] = $k . '_fixed';
				$images[$k][] = $k . '_border';
				$images[$k][] = $k . '_back';
			}
		}
	}

	asort($images);
	$settings['Image Sizes'] = array();
	foreach ($images as $vars) {
		arsort($vars);
		$row = array();
		foreach ($vars as $var) {
			$input = 'numeric';
			$default = 80;
			$required = true;
			if (stripos(strrev($var), 'dexif_') === 0) {
				$input = array('options', array('Yes' => true, 'No' => false, 'Stretch' => 'stretch'));
				$default = 1;
				$required = false;
			} elseif (stripos(strrev($var), 'redrob_') === 0) {
				$input = array('numbers', 0, 50, 1);
				$default = 0;
				$required = false;
			} elseif (stripos(strrev($var), 'elgna_') === 0) {
				$input = array('numbers', 0, 90, 5);
				$default = 0;
				$required = false;
			} elseif (stripos(strrev($var), 'xifelgna_') === 0) {
				$input = 'yesno';
				$default = 0;
				$required = false;
			} elseif (stripos(strrev($var), 'kcab_') === 0) {
				$default = '';
				$input = 'color';
				$required = false;
			}
			$row[] = array(
				'input'    => $input,
				'default'  => $default,
				'required' => $required,
				'group'    => 'config',
				'var'      => $var
			);
		}
		$settings['Image Sizes'][] = $row;
	}

	$javascript = "	function changePlugin(plugin) {
		var hide = $('[name$=\"[changeSpeed]\"],[name$=\"[padding]\"],[name$=\"[margin]\"],[name$=\"[autoDimensions]\"],[name$=\"[hideOnContentClick]\"],[name$=\"[overlayShow]\"],[name$=\"[overlayColor]\"],[name$=\"[titleShow]\"],[name$=\"[titlePosition]\"],[name$=\"[showNavArrows]\"],[name$=\"[transitionOut]\"],[name$=\"[speedOut]\"],[name$=\"[easingIn]\"],[name$=\"[easingOut]\"],[name$=\"[opacity]\"]');
		var change = $('[id$=\"[cyclic]\"],[id$=\"[autoScale]\"],[id$=\"[centerOnScroll]\"],[id$=\"[hideOnOverlayClick]\"],[id$=\"[overlayOpacity]\"],[id$=\"[enableEscapeButton]\"],[id$=\"[showCloseButton]\"],[id$=\"[transitionIn]\"],[id$=\"[speedIn]\"],[id$=\"[opacity]\"],[id$=\"[changeFade]\"]');
		if (plugin != 'fancybox') {
			hide.parents('table').hide();
			change.each(function() {
				var name = $(this).attr('name');
				if (name.indexOf('[cyclic]') >= 0) name = 'loop';
				else if (name.indexOf('[autoScale]') >= 0) name = 'scalePhotos';
				else if (name.indexOf('[centerOnScroll]') >= 0) name = 'fixed';
				else if (name.indexOf('[hideOnOverlayClick]') >= 0) name = 'overlayClose';
				else if (name.indexOf('[overlayOpacity]') >= 0) name = 'opacity';
				else if (name.indexOf('[opacity]') >= 0) name = 'noopacity';
				else if (name.indexOf('[enableEscapeButton]') >= 0) name = 'escKey';
				else if (name.indexOf('[showCloseButton]') >= 0) name = 'closeButton';
				else if (name.indexOf('[transitionIn]') >= 0) name = 'transition';
				else if (name.indexOf('[speedIn]') >= 0) name = 'speed';
				else if (name.indexOf('[changeFade]') >= 0) name = 'fadeOut';
				$(this).attr('name', name);
			});
			$('[name$=\"[scrolling]\"]').html('<option value=\"true\">true</option><option value=\"false\">false</option>');
		} else {
			hide.parents('table').show();
			change.each(function() {
				$(this).attr('name', $(this).attr('id'));
			});
			$('[name$=\"[scrolling]\"]').html('<option value=\"auto\">auto</option><option value=\"yes\">yes</option><option value=\"no\">no</option>');
		}
	}
	$('[name$=\"[popup_plugin]\"]').change();";
?>