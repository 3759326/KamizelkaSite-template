<?php

class ControllerModulelabelimage extends Controller {

    private $error = array();

    public function index() {
        $this->load->language('module/labelimage');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');

        $opencartversion = (int) VERSION . '.' . str_replace('.', "", substr(VERSION, 2));

        if ((float) $opencartversion < 1.51) {
            if ($this->request->server['REQUEST_METHOD'] == 'POST') {
                $module = array();
                $i = 0;
                if (isset($this->request->post['labelimage_module'])) {
                    foreach ($this->request->post['labelimage_module'] as $k => $v) {
                        foreach ($v as $key => $value) {
                            $this->request->post['labelimage_' . $k . '_' . $key] = $value;
                        }
                        $module[] = $i;
                        $i++;
                    }
                }
                $this->request->post['labelimage_module'] = implode(',', $module);
            }
        }

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('labelimage', $this->request->post);
            $this->session->data['success'] = $this->language->get('text_success');
            $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }

        $this->load->model('localisation/language');

        $languages = $this->model_localisation_language->getLanguages();
        $this->data['languages'] = $languages;

        $this->data['heading_title'] = $this->language->get('heading_title');


        $this->data['entry_creator'] = $this->language->get('entry_creator');
        $this->data['entry_version'] = $this->language->get('entry_version');
        $this->data['entry_updated'] = $this->language->get('entry_updated');
        $this->data['entry_licence'] = $this->language->get('entry_licence');


        $this->data['button_save'] = $this->language->get('button_save');
        $this->data['button_cancel'] = $this->language->get('button_cancel');

        $this->data['entry_product'] = $this->language->get('entry_product');
        $this->data['entry_product_desc'] = $this->language->get('entry_product_desc');
        $this->data['entry_productetc'] = $this->language->get('entry_productetc');
        $this->data['entry_productetc_desc'] = $this->language->get('entry_productetc_desc');
        $this->data['entry_latest'] = $this->language->get('entry_latest');
        $this->data['entry_latest_desc'] = $this->language->get('entry_latest_desc');
        $this->data['entry_featured'] = $this->language->get('entry_featured');
        $this->data['entry_featured_desc'] = $this->language->get('entry_featured_desc');
        $this->data['entry_bestseller'] = $this->language->get('entry_bestseller');
        $this->data['entry_bestseller_desc'] = $this->language->get('entry_bestseller_desc');
        $this->data['entry_special'] = $this->language->get('entry_special');
        $this->data['entry_special_desc'] = $this->language->get('entry_special_desc');
        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }

        if (isset($this->error['code'])) {
            $this->data['error_code'] = $this->error['code'];
        } else {
            $this->data['error_code'] = '';
        }

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('module/labelimage', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $this->data['action'] = $this->url->link('module/labelimage', 'token=' . $this->session->data['token'], 'SSL');

        $this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

        $this->data['modules'] = array();

        if (isset($this->request->post['labelimage_product'])) {
            $this->data['labelimage_product'] = $this->request->post['labelimage_product'];
        } elseif ($this->config->get('labelimage_product')) {
            $this->data['labelimage_product'] = $this->config->get('labelimage_product');
        } else
            $this->data['labelimage_product'] = '';

        if (isset($this->request->post['labelimage_productetc'])) {
            $this->data['labelimage_productetc'] = $this->request->post['labelimage_productetc'];
        } elseif ($this->config->get('labelimage_productetc')) {
            $this->data['labelimage_productetc'] = $this->config->get('labelimage_productetc');
        } else
            $this->data['labelimage_productetc'] = '';

        if (isset($this->request->post['labelimage_latest'])) {
            $this->data['labelimage_latest'] = $this->request->post['labelimage_latest'];
        } elseif ($this->config->get('labelimage_latest')) {
            $this->data['labelimage_latest'] = $this->config->get('labelimage_latest');
        } else
            $this->data['labelimage_latest'] = '';

        if (isset($this->request->post['labelimage_featured'])) {
            $this->data['labelimage_featured'] = $this->request->post['labelimage_featured'];
        } elseif ($this->config->get('labelimage_featured')) {
            $this->data['labelimage_featured'] = $this->config->get('labelimage_featured');
        } else
            $this->data['labelimage_featured'] = '';

        if (isset($this->request->post['labelimage_bestseller'])) {
            $this->data['labelimage_bestseller'] = $this->request->post['labelimage_bestseller'];
        } elseif ($this->config->get('labelimage_bestseller')) {
            $this->data['labelimage_bestseller'] = $this->config->get('labelimage_bestseller');
        } else
            $this->data['labelimage_bestseller'] = '';
        
        if (isset($this->request->post['labelimage_special'])) {
            $this->data['labelimage_special'] = $this->request->post['labelimage_special'];
        } elseif ($this->config->get('labelimage_special')) {
            $this->data['labelimage_special'] = $this->config->get('labelimage_special');
        } else
            $this->data['labelimage_special'] = '';

        if ($opencartversion < 1.51) {
            $this->data['modules'] = array();
            $toarray = $obj_get = '';
            if (isset($this->request->post['labelimage_module'])) {
                $toarray = $this->request->post['labelimage_module'];
                $obj_get = 'post';
            } elseif ($this->config->get('labelimage_module') != '') {
                $toarray = $this->config->get('labelimage_module');
                $obj_get = 'config';
            }
        } else {
            if (isset($this->request->post['labelimage_module'])) {
                $this->data['modules'] = $this->request->post['labelimage_module'];
            } elseif ($this->config->get('labelimage_module')) {
                $this->data['modules'] = $this->config->get('labelimage_module');
            }
        }

        $this->load->model('design/layout');

        $this->data['layouts'] = $this->model_design_layout->getLayouts();

        $this->template = 'module/labelimage.tpl';
        $this->children = array(
            'common/header',
            'common/footer',
        );

        $this->response->setOutput($this->render());
    }

    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/labelimage')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        /*if (!$this->request->post['ocesmsgateway_smscustomer']) {
            $this->error['code'] = $this->language->get('error_code');
        }*/

        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }

}

?>