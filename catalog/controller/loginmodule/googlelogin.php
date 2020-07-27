<?php
class ControllerLoginmoduleGooglelogin extends Controller {
	public function index() {

	if(isset($this->request->get['code'])) {

	if ($this->request->server['HTTPS']) {
			$data['store_url'] = HTTPS_SERVER;
		} else {
			$data['store_url'] = HTTP_SERVER;
		}


		$query=$this->db->query("SELECT * FROM opencartweb_login_popup WHERE id=1")->row;
			try {
				// Get the access token 
				$data = $this->GetAccessToken($query['google_login_client_id'], $data['store_url'].$query['google_login_callback_url'], $query['google_login_client_secret'] , $this->request->get['code']);
				
				// Get user information
				$user_info =$this->GetUserProfileInfo($data['access_token']);
				
			}
			catch(Exception $e) {
				echo $e->getMessage();
				exit();
			}

			$this->load->model('account/customer');
			$this->load->language('account/login');
			$login_info = $this->model_account_customer->getLoginAttempts($user_info['emails'][0]['value']);

		if ($login_info && ($login_info['total'] >= $this->config->get('config_login_attempts')) && strtotime('-1 hour') < strtotime($login_info['date_modified'])) {
			$this->session->data['googleloginwarning'] = $this->language->get('error_attempts');
		}

		// Check if customer has been approved.
		$customer_info = $this->model_account_customer->getCustomerByEmail($user_info['emails'][0]['value']);

		if ($customer_info && !$customer_info['approved']) {
			$this->session->data['googleloginwarning'] = $this->language->get('error_approved');
			$this->response->redirect($this->url->link('common/home', '', true));
		}

		if (!$this->error) {
			if (empty($customer_info)) {

                $characters = "1234567890abcdefghijKLMNOPQRSTuvwxyzABCDEFGHIJklmnopqrstUVWXYZ0987654321";
 				$password = '';
				for($i=0;$i<8;$i++)
 				{
  					$password .= $characters{rand() % 72};   
				 }

				$data['email'] = $user_info['emails'][0]['value'];
                $data['firstname'] = $user_info['name']['givenName'];
                $data['lastname'] =  $user_info['name']['familyName'];
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
                   $this->session->data['googleloginsuccess']="ok";
                   $this->response->redirect($query['register_redirection']);

			} else {
				$this->customer->login($customer_info['email'], '', true);
				$this->model_account_customer->deleteLoginAttempts($user_info['emails'][0]['value']);
				$this->response->redirect($query['login_redirection']);
			}
		}
		return !$this->error;
	}
		
}


public function GetAccessToken($client_id, $redirect_uri, $client_secret, $code) {	
		$url = 'https://accounts.google.com/o/oauth2/token';			
		
		$curlPost = 'client_id=' . $client_id . '&redirect_uri=' . $redirect_uri . '&client_secret=' . $client_secret . '&code='. $code . '&grant_type=authorization_code';
		$ch = curl_init();		
		curl_setopt($ch, CURLOPT_URL, $url);		
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);		
		curl_setopt($ch, CURLOPT_POST, 1);		
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $curlPost);	
		$data = json_decode(curl_exec($ch), true);
		$http_code = curl_getinfo($ch,CURLINFO_HTTP_CODE);		
		if($http_code != 200) 
			throw new Exception('Error : Failed to receieve access token');
			
		return $data;
	}

	public function GetUserProfileInfo($access_token) {	
		$url = 'https://www.googleapis.com/plus/v1/people/me';			
		
		$ch = curl_init();		
		curl_setopt($ch, CURLOPT_URL, $url);		
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Authorization: Bearer '. $access_token));
		$data = json_decode(curl_exec($ch), true);
		$http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);		
		if($http_code != 200) 
			throw new Exception('Error : Failed to get user information');
			
		return $data;
	}





}
