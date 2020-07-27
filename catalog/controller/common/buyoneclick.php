<?php
class ControllerCommonBuyoneclick extends Controller {
	public function index() {
		$data['buy'] = $this->language->get('buy');
		$data['phone_input'] = $this->language->get('phone_input');
		$data['text_submitbuy'] = $this->language->get('text_submitbuy');
		if (isset($this->request->post['product_id'])) {
			$product_id = (int)$this->request->post['product_id'];
			$this->session->data['boc_product_id'] = $product_id;
		} else {
			$product_id = 0;
		}
        
		$this->load->model('catalog/product');
	
		//$this->load->model('tool/upload');
		$product = $this->model_catalog_product->getProduct($product_id);
		if ($product) {
			
			$data['product'] = array(
			    'product_id' => $product['product_id'],
				'name'      => $product['name'],
				'href'      => $this->url->link('product/product', 'product_id=' . $product['product_id'])
			);
		}
		
		return $this->load->view('common/buyoneclick', $data);
	}
	public function info() {
		$this->response->setOutput($this->index());
	}
	
	public function buy() {
		$json = array();
if (($this->request->server['REQUEST_METHOD'] == 'POST')) { 
	if(empty($this->request->post['phone']) || utf8_strlen($this->request->post['phone']) < 4) {
		$json['error'] = $this->language->get('phone_input');
	} else {
			$subject = $this->language->get('subtext_oneclick');
        
			
			$message  = sprintf($this->language->get('product_buy'), $this->request->post['prod_name'], $this->request->post['prod_href']) . "\n\n";
			$message  .= sprintf($this->language->get('phone_buy'), $this->request->post['phone']) . "\n\n";

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom('zayvka@v-center.in.ua');
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText($message);
			$mail->send();
            $json['message'] = 'Спасибо за заявку. В ближайщее время с Вами свяжутся';
			$json['success'] = true;
			
		}
}
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
		
		
	}
}