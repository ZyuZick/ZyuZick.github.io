<?php

class ControllerExtensionModuleSoCountdown extends Controller {
	public function index() {
		$this->load->model('extension/module/so_countdown');
        $this->document->addStyle('catalog/view/javascript/so_countdown/css/style.css');
        $this->document->addScript('catalog/view/javascript/so_countdown/js/jquery.cookie.js');
        $data       = array();
        $result     = $this->model_extension_module_so_countdown->getList();
        if (!empty($result)) {
            $now        = strtotime(date('Y-m-d', time()));
            $end_date   = strtotime($result['date_expire']);
            $result['end_date'] = date('Y/m/d', $end_date);
            $data['result']     = $result;        
            
    		if(VERSION >= '2.2.0.0'){
            	return $this->load->view('extension/module/so_countdown', $data);
            }elseif (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/so_countdown.tpl')) {
                return $this->load->view($this->config->get('config_template') . '/template/module/so_countdown.tpl', $data);
            } else {
                return $this->load->view('default/template/module/so_countdown.tpl', $data);
            }
        }
        else
            return '';
	}
}