<?php
class ControllerLoginmoduleLogin extends Controller {
	private $error = array();
	public function login() {
		
		$query=$this->db->query("SELECT * FROM opencartweb_login_popup WHERE id=1")->row;

		$this->load->language('account/login');
		$this->load->model('account/customer');
		
		$json = array();
		
		$login_info = $this->model_account_customer->getLoginAttempts($this->request->post['email']);

		if ($login_info && ($login_info['total'] >= $this->config->get('config_login_attempts')) && strtotime('-1 hour') < strtotime($login_info['date_modified'])) {
			$json['error']['warning'] = $this->language->get('error_attempts');
		}

		// Check if customer has been approved.
		$customer_info = $this->model_account_customer->getCustomerByEmail($this->request->post['email']);

		if ($customer_info && !$customer_info['status']) {
			$json['error']['warning'] = $this->language->get('error_approved');
		}

		if (!isset($json['error'])) {
			if (!$this->customer->login($this->request->post['email'], $this->request->post['password'])) {
				$json['error']['warning'] = $this->language->get('error_login');

					$this->model_account_customer->addLoginAttempt($this->request->post['email']);
			} else {
				
					$this->model_account_customer->deleteLoginAttempts($this->request->post['email']);
					$json['redirect'] =$query['login_redirection'];
				}
		}
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
		
	}
	
	public function forgetten() {

	if ($this->customer->isLogged()) {
			$this->response->redirect($this->url->link('account/account', '', true));
		}

		$this->load->language('account/forgotten');
		$this->load->model('account/customer');
			
		$json = array();
		
		if (!isset($this->request->post['email'])) {
			$json['error']['warning'] = $this->language->get('error_email');
		} else if (!$this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
			$json['error']['warning'] = $this->language->get('error_email');
		}
		
		// Check if customer has been approved.
		$customer_info = $this->model_account_customer->getCustomerByEmail($this->request->post['email']);

		if ($customer_info && !$customer_info['status']) {
			$json['error']['warning'] = $this->language->get('error_approved');
		}
		
		else if($customer_info) {
			
			$this->load->language('mail/forgotten');
			$code = token(40);

			$this->model_account_customer->editCode($this->request->post['email'], $code);

			$subject = sprintf($this->language->get('text_subject'), html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));

			$message  = sprintf($this->language->get('text_greeting'), html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8')) . "\n\n";
			$message .= $this->language->get('text_change') . "\n\n";
			$message .= $this->url->link('account/reset', 'code=' . $code, true) . "\n\n";
			$message .= sprintf($this->language->get('text_ip'), $this->request->server['REMOTE_ADDR']) . "\n\n";

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->request->post['email']);
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			$mail->send();
		
			$this->session->data['success'] = $this->language->get('text_success');
			
			$json['redirect']= $this->language->get('text_success');
		}
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
		
	}
	
	public function register() {

		$json = array();
		$this->load->model('account/customer');
		$this->load->language('account/register');
		$this->load->language('account/address');
		$this->load->language('account/success');
		$query=$this->db->query("SELECT * FROM opencartweb_login_popup WHERE id=1")->row;

		$firstnamer = $query['firstnamer'];
		$lastnamer 	= $query['lastnamer'];
		$telephoner	= $query['telephoner'];
		$newsletterr = $query['newsletterr'];
		$companyr	= $query['companyr'];
		$address_1r = $query['address_1r'];
		$address_2r = $query['address_2r'];
		$cityr		= $query['cityr'];
		$postcoder 	= $query['postcoder'];
		$zonerr 	= $query['zoner'];
		$countryr 	= $query['countryr'];
		$faxr 		= $query['faxr'];

		$firstname 		= $query['firstname'];
		$lastname 		= $query['lastname'];
		$telephone		= $query['telephone'];	
		$fax 			= $query['fax'];
		$newsletter 	= $query['newsletter'];
		$company		= $query['company'];
		$address_1 		= $query['address_1'];
		$address_2 		= $query['address_2'];
		$city 			= $query['city'];
		$postcode 		= $query['postcode'];
		$zone 			= $query['zone'];
		$country 		= $query['country'];
		$customergroup 	= $query['customergroup'];


	if ($firstname==1 && $firstnamer==1) {

		if ((utf8_strlen(trim($this->request->post['firstname'])) < 1) || (utf8_strlen(trim($this->request->post['firstname'])) > 32)) {
			$json['error']['firstname'] = $this->language->get('error_firstname');
		}
	}



	if ($lastname==1 && $lastnamer==1) {
		if ((utf8_strlen(trim($this->request->post['lastname'])) < 1) || (utf8_strlen(trim($this->request->post['lastname'])) > 32)) {
			$json['error']['lastname'] = $this->language->get('error_lastname');
		}
	}

	if ($telephone==1 && $telephoner==1) {
			if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32)) {
				$json['error']['telephone'] = $this->language->get('error_telephone');
			}
		}

	if ($fax==1 && $faxr==1) {
			if ((utf8_strlen($this->request->post['fax']) < 3) || (utf8_strlen($this->request->post['fax']) > 32)) {
				$json['error']['fax'] =str_replace('%s', $this->language->get('entry_fax'), $this->language->get('error_custom_field'));
			}
		}


	if ($company==1 && $companyr==1) {
		if ((utf8_strlen($this->request->post['company']) < 3) || (utf8_strlen($this->request->post['company'])) > 32) {
			$json['error']['company'] =str_replace('%s', $this->language->get('entry_company'), $this->language->get('error_custom_field'));
		}
	}	

	if ($customergroup==1 && $customergroupr==1) {
		if ($this->request->post['customer_group_id'] == '') {
			$json['error']['customer_group'] =str_replace('%s', $this->language->get('entry_customer_group'), $this->language->get('error_custom_field'));
		}
	}	


	if($address_1==1 && $address_1r==1) {
		if ((utf8_strlen(trim($this->request->post['address_1'])) < 3) || (utf8_strlen(trim($this->request->post['address_1'])) > 128)){
			$json['error']['address_1'] = $this->language->get('error_address_1');
		}
	}

	if($address_2==1 && $address_2r==1) {
		if ((utf8_strlen(trim($this->request->post['address_2'])) < 3) || (utf8_strlen(trim($this->request->post['address_2'])) > 128)) {
			$json['error']['address_2'] = $this->language->get('error_address_1');
		}
	}

	if($city==1 && $cityr==1) {
		if ((utf8_strlen(trim($this->request->post['city'])) < 2) || (utf8_strlen(trim($this->request->post['city'])) > 128)) {
			$json['error']['city'] = $this->language->get('error_city');
		}
	}

	
	if($postcode==1 && $postcoder==1) {
	
	if ((utf8_strlen(trim($this->request->post['postcode'])) < 2 || utf8_strlen(trim($this->request->post['postcode'])) > 10)) {
		$json['error']['postcode'] = $this->language->get('error_postcode');
	}
	}

	if($country==1 && $countryr==1) {
		if ($this->request->post['country_id'] == '') {
			$json['error']['country'] = $this->language->get('error_country');
		}
	}

	if($zone==1 && $zoner==1) {
		if (!$this->request->post['zone_id'] || $this->request->post['zone_id'] == '' || !is_numeric($this->request->post['zone_id'])) {
			$json['error']['zone'] = $this->language->get('error_zone');
		}
	}
	
	if ((utf8_strlen($this->request->post['email']) > 96) || !filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) {
			$json['error']['email'] = $this->language->get('error_email');
	}

	if ($this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
			$json['error']['warning'] = $this->language->get('error_exists');
	}

	if ((utf8_strlen(html_entity_decode($this->request->post['password'], ENT_QUOTES, 'UTF-8')) < 4) || (utf8_strlen(html_entity_decode($this->request->post['password'], ENT_QUOTES, 'UTF-8')) > 40)) {
			$json['error']['password']  = $this->language->get('error_password');
	}

	/*if ($this->request->post['confirm'] != $this->request->post['password']) {
			$json['error']['confirm'] = $this->language->get('error_confirm');
	}*/

		// Agree to terms
	if ($this->config->get('config_account_id')) {
			$this->load->model('catalog/information');

			$information_info = $this->model_catalog_information->getInformation($this->config->get('config_account_id'));

			if ($information_info && !isset($this->request->post['agree'])) {
			$json['error']['agree'] = sprintf($this->language->get('error_agree'), $information_info['title']);
			}
	}

	if (!isset($json['error'])) {
			
			$customer_id = $this->model_account_customer->addCustomer($this->request->post);

			$this->model_account_customer->deleteLoginAttempts($this->request->post['email']);

			$this->customer->login($this->request->post['email'], $this->request->post['password']);

			unset($this->session->data['guest']);

			if($this->customer->login($this->request->post['email'], $this->request->post['password']))
			{
			$json['redirect'] = $query['register_redirection'];
			}

			else {
				$json['text_approval']=$this->language->get('text_approval');
			}

		}
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
		
	}

	public function AccountInformation() {
	
	$this->load->language('account/edit');
	$this->load->language('account/register');
	$json = array();

	if ((utf8_strlen(trim($this->request->post['firstname'])) < 1) || (utf8_strlen(trim($this->request->post['firstname'])) > 32)) {
		$json['error']['firstname'] = $this->language->get('error_firstname');
	}

	if ((utf8_strlen(trim($this->request->post['lastname'])) < 1) || (utf8_strlen(trim($this->request->post['lastname'])) > 32)) {
		$json['error']['lastname']  = $this->language->get('error_lastname');
	}


	if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32)) {
		$json['error']['telephone']  = $this->language->get('error_telephone');
	}

	if ((utf8_strlen(html_entity_decode($this->request->post['password'], ENT_QUOTES, 'UTF-8')) < 4) || (utf8_strlen(html_entity_decode($this->request->post['password'], ENT_QUOTES, 'UTF-8')) > 40)) {
			$json['error']['password']  = $this->language->get('error_password');
	}

	if ($this->request->post['confirm'] != $this->request->post['password']) {
			$json['error']['confirm'] = $this->language->get('error_confirm');
	}

	if (!isset($json['error'])) {
		if(isset($this->request->post['customer_id'])) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET firstname = '" . $this->db->escape($this->request->post['firstname']) . "', lastname = '" . $this->db->escape($this->request->post['lastname']) . "', telephone = '" . $this->db->escape($this->request->post['telephone']) . "', password = '" . MD5($this->db->escape($this->request->post['password'])) . "' WHERE customer_id = '" . (int)$this->request->post['customer_id'] . "'");
			$json['success']=$this->language->get('text_success');
		}
	}
			
			$this->response->addHeader('Content-Type: application/json');
			$this->response->setOutput(json_encode($json));

	}

}
