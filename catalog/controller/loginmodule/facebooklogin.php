<?php

class ControllerLoginmoduleFacebooklogin extends Controller {

	public function login() {
		$query=$this->db->query("SELECT * FROM opencartweb_login_popup WHERE id=1")->row;

			$this->load->model('account/customer');
			$this->load->language('account/login');
			$login_info = $this->model_account_customer->getLoginAttempts($this->request->post['email']);

		if ($login_info && ($login_info['total'] >= $this->config->get('config_login_attempts')) && strtotime('-1 hour') < strtotime($login_info['date_modified'])) {
			$this->session->data['facebookloginwarning'] = $this->language->get('error_attempts');
		}
		// Check if customer has been approved.
		$customer_info = $this->model_account_customer->getCustomerByEmail($this->request->post['email']);
		if ($customer_info && !$customer_info['approved']) {
			$this->session->data['facebookloginwarning'] = $this->language->get('error_approved');
			$this->response->redirect($this->url->link('common/home', '', true));
		}

		$json = array();
	
		if (!$this->error) {
			if (empty($customer_info)) {
                $characters = "1234567890abcdefghijKLMNOPQRSTuvwxyzABCDEFGHIJklmnopqrstUVWXYZ0987654321";
 				$password = '';
				for($i=0;$i<8;$i++)
 				{
  					$password .= $characters{rand() % 72};   
				 }
				$data['email'] = $this->request->post['email'];
                $data['firstname'] =$this->request->post['firstname'];
                $data['lastname'] =  $this->request->post['lastname'];
                $data['telephone'] = '';
                $data['fax'] = '';
                $data['password'] = $password;
                $data['company'] = '';
                $data['address_1'] = '';
                $data['address_2'] = '';
                $data['city'] = '';
                $data['postcode'] = '';
                $data['country_id'] = '';
                $data['zone_id'] = '';
                $customer_id = $this->model_account_customer->addCustomer($data);
                    if ($customer_id && $this->customer->login($data['email'], '', true)) {
                       // Default Addresses
                         $this->load->model('account/address');

                        if ($this->config->get('config_tax_customer') == 'payment') {
                            $this->session->data['payment_address'] = $this->model_account_address->getAddress($this->customer->getAddressId());
                         }

                        if ($this->config->get('config_tax_customer') == 'shipping') {
                            $this->session->data['shipping_address'] = $this->model_account_address->getAddress($this->customer->getAddressId());
                        }
                    }
                   $this->session->data['facebookloginsuccess']="ok";
                   $json['redirect']=$query['register_redirection'];

			} else {
				$this->customer->login($customer_info['email'], '', true);
				$this->model_account_customer->deleteLoginAttempts($this->request->post['email']);
				 $json['redirect']=$query['login_redirection'];
			}
		}
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
}

}