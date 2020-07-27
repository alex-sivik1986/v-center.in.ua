<?php
class ControllerExtensionModuleZayvka extends Controller {
	public function index() {
		$this->load->language('module/zayvka');
		
		$data['heading_title'] = $this->language->get('heading_title');
        $data['heading_sub_title'] = $this->language->get('heading_sub_title');
		$data['text_brands'] = $this->language->get('text_brands');
		$data['text_index'] = $this->language->get('text_index');
		$data['heading_sub_text'] = $this->language->get('heading_sub_text');
		$data['heading_button'] = $this->language->get('heading_button');
		$data['phone'] = $this->language->get('phone');
		$data['brands'] = array();
		$data['ok_sent'] = $this->language->get('ok_sent');
		$data['details'] = $this->language->get('details');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/zayvka.tpl')) {
		
			return $this->load->view($this->config->get('config_template') . '/template/module/zayvka.tpl', $data); 
		} else { 	
			return $this->load->view('module/zayvka.tpl', $data);
		}
	}
	public function newzayvka()
	{
        $json = array();
		if (($this->request->server['REQUEST_METHOD'] == 'POST')) { 
			$this->load->language('module/zayvka');
-

			$subject = $this->language->get('text_subject');

			
			$message  = sprintf($this->language->get('text_phone'), $this->request->post['tel']) . "\n\n";

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom('zayvka@v-center.com');
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			$mail->send();
            $json['message'] = 'Спасибо за заявку. В ближайщее время с Вами свяжутся';
			
		}
		
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
		
	}
	
}
