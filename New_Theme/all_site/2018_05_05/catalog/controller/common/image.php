<?php
class ControllerCommonImage extends Controller {
	public function image() {
		$this->load->model('tool/image');
		if (!isset($this->request->get['file']) || !isset($this->request->get['width']) || !isset($this->request->get['height'])) exit;
		$file = $this->request->get['file'];
		if (is_numeric($file)) {
			$this->load->model('catalog/option_types');
			$file = $this->model_catalog_option_types->getUpload($file,'server_name');
		}
		$config = array(
			'angle' => (isset($this->request->get['rotate'])) ? $this->request->get['rotate'] : 0,
			'anglefix' => (isset($this->request->get['anglefix'])) ? $this->request->get['anglefix'] : false,
			'border' => (isset($this->request->get['border'])) ? $this->request->get['border'] : 0,
			'fixed' => (isset($this->request->get['keepsize'])) ? true : false,
			'back' => (isset($this->request->get['bgcolor'])) ? $this->request->get['bgcolor'] : '',
			'output' => (isset($this->request->get['output'])) ? $this->request->get['output'] : 'data'
		);
		if (isset($this->request->get['crop']) && strpos($this->request->get['crop'],'/')) $config['crop'] = explode('/',$this->request->get['crop']);
		$output = $this->model_tool_image->resize($file, $this->request->get['width'], $this->request->get['height'], $config);
		if ($config['output'] == 'json') {
			header("Cache-Control: no-cache");
			echo htmlspecialchars(json_encode($output), ENT_NOQUOTES);
		} elseif ($config['output'] != 'data') {
			echo '<img src="'.$output.'" alt="" title="" border="0" />';
		} else {
			header("Content-type: image/png");
			header('Content-Length: ' . strlen($output));
			echo $output;
		}
		exit;
	}
	public function text() {
		$this->load->language('product/product');
		$this->load->model('tool/image');
		$this->load->config('option_types');
		$text = ($this->request->get['text']) ? htmlspecialchars_decode($this->request->get['text']) : $this->language->get('text_enter_text');
		$height = (isset($this->request->get['size']) && $this->request->get['size']) ? $this->request->get['size'] : $this->config->get('default_font_size');
		$font = DIR_FONT . ((isset($this->request->get['font']) && $this->request->get['font']) ? $this->request->get['font'] : $this->config->get('default_font'));
		$rotate = (isset($this->request->get['rotate']) && $this->request->get['rotate']) ? $this->request->get['rotate'] : 0;
		$save = (isset($this->request->get['save'])) ? $this->request->get['save'] : '';
		$color = (isset($this->request->get['color']) && $this->request->get['color']) ? $this->request->get['color'] : $this->config->get('default_font_color');
		$bgcolor = (isset($this->request->get['bgcolor']) && $this->request->get['bgcolor']) ? $this->request->get['bgcolor'] : '';
		$output = (isset($this->request->get['output']) && $this->request->get['output']) ? $this->request->get['output'] : 'data';
		$output = $this->model_tool_image->text($text, $height, $font, $rotate, $color, $bgcolor, $save, $output, $this->config->get('font_generate_size'));
		if (isset($this->request->get['output']) && $this->request->get['output'] == 'json') {
			header("Cache-Control: no-cache");
			echo htmlspecialchars(json_encode($output), ENT_NOQUOTES);
		} else {
			header("Content-type: image/png");
			header('Content-Length: ' . strlen($output));
			echo $output;
		}
		exit;
	}
	public function preview() {
		$this->load->model('tool/image');
		if (isset($this->request->post['jsondata'])) {
			$des = json_decode(stripslashes(htmlspecialchars_decode($this->request->post['jsondata'])), TRUE);
        /*echo "<pre>images = ".$this->request->post['jsondata']."<br>";
        print_r($des);
        echo "</pre>";*/
			$images = $newArr = array();
			if (is_array($des) && count($des) > 1) {
				// BOF - Zappo - Sort Array by the values of "zindex"
				foreach($des as $k=>$v) {
					if ($k == 0) $images[$k] = $v;
					else $images[$k] = $v['zindex'];
				}
				asort($images);
				// EOF - Zappo - Sort Array by the values of "zindex"
				foreach($images as $k => $z) $newArr[] = $des[$k];
				$images = $newArr;
				$images[] = $images[0]; // Add the background again, as final merge image
				$output = $this->model_tool_image->design($images, $this->request->get['border'],'IMG_FILTER_GRAYSCALE','','url');
			} else {
			$config = array(
				'angle' => $des[0]['rotation'],
				'anglefix' => (isset($this->request->get['anglefix'])) ? $this->request->get['anglefix'] : false,
				'border' => (isset($this->request->get['border'])) ? $this->request->get['border'] : 0,
				'fixed' => (isset($this->request->get['keepsize'])) ? true : false,
				'back' => $des[0]['color'],
				'output' => 'url'
			);
			if (isset($this->request->get['crop']) && strpos($this->request->get['crop'],'/')) $config['crop'] = explode('/',$this->request->get['crop']);
				$output = $this->model_tool_image->resize($des[0]['src'], $des[0]['width'], $des[0]['height'], $config);
			}
			echo '<img src="'.$output.'?rnd='.mt_rand().'" alt="" title="" />';
      /*header("Content-type: image/png");
      header('Content-Length: ' . strlen($output));
      echo $output;*/
			exit;
		}
    }
}
?>