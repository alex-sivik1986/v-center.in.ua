<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$data['scripts'] = $this->document->getScripts('footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_pravila'] = $this->language->get('text_pravila');
		$data['text_servis'] = $this->language->get('text_servis');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
        $data['reviews'] = $this->language->get('reviews');
		$data['entry_mail']     = $this->language->get('entry_mail');
		$data['your_mail']      = $this->language->get('your_mail');
		$data['text_forgot']      = $this->language->get('text_forgot');
		$data['remember_text']      = $this->language->get('remember_text');
		$data['have_account']      = $this->language->get('have_account');
		$data['wishlist_in_cart']      = $this->language->get('wishlist_in_cart');
		$data['wishlist_register']      = $this->language->get('wishlist_register');
		$data['wishlist_button_register']      = $this->language->get('wishlist_button_register');
		
       $query=$this->db->query("SELECT * FROM opencartweb_login_popup WHERE id=1")->row;
	$this->load->language('account/forgotten');
	$this->load->language('account/account');
	$this->load->language('account/address');
	$this->load->language('account/register');
	$this->load->language('account/login');
	if ($this->request->server['HTTPS']) {
		$server = $this->config->get('config_ssl');
	} else {
		$server = $this->config->get('config_url');
	}
	if($this->customer->isLogged()) {

	$data['socialfirstname'] = $this->customer->getFirstName();
	$data['sociallastname']  = $this->customer->getLastName();
	$data['socialtelephone'] = $this->customer->getTelephone();
	$data['customer_id'] = $this->customer->getId();

	} else {

	$data['socialfirstname'] = "";
	$data['sociallastname']  = "";
	$data['socialtelephone'] = "";
	$data['customer_id']	="";
	}

	$data['text_login']		 	= $this->language->get('text_login');
	$data['text_forgotten']  	= $this->language->get('text_forgotten');
	$data['text_register'] 		= $this->language->get('text_register');
	$data['text_email'] 		= $this->language->get('text_email');
	$data['text_yes'] 			= $this->language->get('text_yes');
	$data['text_no'] 		 	= $this->language->get('text_no');
	$data['account_login']      = $this->language->get('heading_title');
	$data['text_select']		= $this->language->get('text_select');
	$data['text_none']	 		= $this->language->get('text_none');
	$data['text_edit']	 		= $this->language->get('text_edit');
	$data['text_newsletter']	= $this->language->get('text_newsletter');
	$data['button_update']	    = $this->language->get('button_update');
	$data['button_cancel']	    = $this->language->get('button_cancel');
	$data['button_continue']	= $this->language->get('button_continue');
	
	$data['login_title'] 		= $this->language->get('login_title');
	$data['remember_me_text']   = $this->language->get('remember_me_text');
	$data['login_footer'] 		= $this->language->get('login_footer');
	$data['input_login'] 		= $this->language->get('input_login');
	$data['register_footer'] 	= $this->language->get('register_footer'); 
	$data['login_url'] 			= $server.$query['login_url']; 
	
	$lang = $this->language->get('code');
	if ($lang=='ua' || $lang=='en') { 
		$data['login_url'] 			= $server.$lang.'/'.$query['login_url']; 
		} else { 
		$data['login_url'] 			= $server.$query['login_url']; 
		}
	$data['register_url'] 		= $server.$query['register_url'];  
	$data['googleloginbuttontext']    = $query['googleloginbuttontext'];
	$data['facebookloginbuttontext']    = $query['facebookloginbuttontext'];
	$data['ortext']  		     = $query['ortext'];

	$data['firstname'] 		= $query['firstname'];
	$data['customergroup'] 	= $query['customergroup'];
	$data['lastname'] 	= $query['lastname'];
	$data['telephone']	= $query['telephone'];
	$data['fax']		= $query['fax'];
	$data['newsletter'] = $query['newsletter'];
	$data['company']	= $query['company'];
	$data['address_1'] 	= $query['address_1'];
	$data['address_2'] 	= $query['address_2'];
	$data['city'] 		= $query['city'];
	$data['postcode'] 	= $query['postcode'];
	$data['zone'] 		= $query['zone'];
	$data['country'] 	= $query['country'];

	$data['firstnamer'] 	= $query['firstnamer'];
	$data['lastnamer'] 		= $query['lastnamer'];
	$data['telephoner']		= $query['telephoner'];
	$data['faxr']			= $query['faxr'];
	$data['newsletterr'] 	= $query['newsletterr'];
	$data['companyr']		= $query['companyr'];
	$data['address_1r'] 	= $query['address_1r'];
	$data['address_2r'] 	= $query['address_2r'];
	$data['cityr'] 			= $query['cityr'];
	$data['postcoder'] 		= $query['postcoder'];
	$data['zoner'] 			= $query['zoner'];
	$data['countryr'] 		= $query['countryr'];

	$data['firstnamei'] 	= $query['firstnamei'];
	$data['customergroupi'] 	= $query['customergroupi'];
	$data['lastnamei'] 		= $query['lastnamei'];
	$data['telephonei']		= $query['telephonei'];
	$data['faxi']			= $query['faxi'];
	$data['newsletteri'] 	= $query['newsletteri'];
	$data['companyi']		= $query['companyi'];
	$data['address_1i'] 	= $query['address_1i'];
	$data['address_2i'] 	= $query['address_2i'];
	$data['cityi'] 			= $query['cityi'];
	$data['postcodei'] 		= $query['postcodei'];
	$data['zonei'] 			= $query['zonei'];
	$data['countryi'] 		= $query['countryi'];

	$data['entry_firstname'] = $this->language->get('entry_firstname');
	$data['entry_lastname'] = $this->language->get('entry_lastname');
	$data['entry_email'] = $this->language->get('entry_email');
	$data['entry_telephone'] = $this->language->get('entry_telephone');
	$data['entry_customer_group'] = $this->language->get('entry_customer_group');

	$data['entry_fax'] = $this->language->get('entry_fax');
	$data['entry_company'] = $this->language->get('entry_company');
	$data['entry_address_1'] = $this->language->get('entry_address_1');
	$data['entry_address_2'] = $this->language->get('entry_address_2');
	$data['entry_postcode'] = $this->language->get('entry_postcode');
	$data['entry_city'] = $this->language->get('entry_city');
	$data['entry_country'] = $this->language->get('entry_country');
	$data['entry_zone'] = $this->language->get('entry_zone');
	$data['entry_newsletter'] = $this->language->get('entry_newsletter');
	$data['entry_password'] = $this->language->get('entry_password');
	$data['entry_confirm'] = $this->language->get('entry_confirm');
	$data['button_continue'] 	= $this->language->get('button_continue');

	$data['customer_groups'] = array();

		if (is_array($this->config->get('config_customer_group_display'))) {
			$this->load->model('account/customer_group');

			$customer_groups = $this->model_account_customer_group->getCustomerGroups();

			foreach ($customer_groups as $customer_group) {
				if (in_array($customer_group['customer_group_id'], $this->config->get('config_customer_group_display'))) {
					$data['customer_groups'][] = $customer_group;
				}
			}
		}

	$data['customer_group_id'] = $this->config->get('config_customer_group_id');

	$this->load->model('localisation/country');
	$data['countries'] = $this->model_localisation_country->getCountries();
	if ($this->config->get('config_account_id')) {
				$this->load->model('catalog/information');
				$information_info = $this->model_catalog_information->getInformation($this->config->get('config_account_id'));
				if ($information_info) {
					$data['text_agree'] = sprintf($this->language->get('text_agree'), $this->url->link('information/information', 'information_id=7', true),$this->url->link('information/information', 'information_id=' . $this->config->get('config_account_id'), true));

				} else {
					$data['text_agree'] = '';

				}

			} else {

				$data['text_agree'] = '';

			}

		if (isset($this->request->server['HTTPS'])) {
			$data['store_url'] = HTTPS_SERVER;
		} else {
			$data['store_url'] = HTTP_SERVER;
		}
//FACEBOOK LOGIN
	if ($query['facebook_login_status']==1 && $query['facebookappid']!="") {
			$data['facebook_app_id'] = $query['facebookappid']; 
		} else { 
			$data['facebook_app_id'] = '';
		} 

	if(isset($this->session->data['facebookloginwarning'])) {
		$data['facebookloginwarning']=$this->session->data['facebookloginwarning'];
	} else {
		$data['facebookloginwarning']="";
	}

	$this->session->data['facebookloginwarning']="";
	if(isset($this->session->data['facebookloginsuccess'])) {
		$data['facebookloginsuccess']=$this->session->data['facebookloginsuccess'];
	} else {
		$data['facebookloginsuccess']="";
	}
	$this->session->data['facebookloginsuccess']="";
	$data['facebook_login_status']    = $query['facebook_login_status'];

//FACEBOOK LOGIN END

// GOOGLE SOCIAL LOGIN
	$data['google_client_id']	    = $query['google_login_client_id'];
	$data['google_client_secret']   = $query['google_login_client_secret'];
	$data['google_callback_url']    = $data['store_url'].$query['google_login_callback_url'];
	$data['google_login_status']    = $query['google_login_status'];

	if(isset($this->session->data['googleloginwarning'])) {
		$data['googleloginwarning']=$this->session->data['googleloginwarning'];
	} else {
		$data['googleloginwarning']="";
	}

	$this->session->data['googleloginwarning']="";

	if(isset($this->session->data['googleloginsuccess'])) {
		$data['googleloginsuccess']=$this->session->data['googleloginsuccess'];
	} else {
		$data['googleloginsuccess']="";
	}
	$this->session->data['googleloginsuccess']="";
      
		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', true);
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', true);
		$data['affiliate'] = $this->url->link('affiliate/account', '', true);
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['newsletters'] = $this->url->link('account/newsletter', '', true);
		$data['your_name']      = $this->language->get('your_name');
		$data['your_lastname']      = $this->language->get('your_lastname');
		$data['entry_lastname']      = $this->language->get('entry_lastname');
		$data['your_telephone']      = $this->language->get('your_telephone');
		$data['entry_name']      = $this->language->get('entry_name');
		$data['input_register']      = $this->language->get('input_register');
		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));
        $data['add_to_cart'] = $this->language->get('add_to_cart');
		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		return $this->load->view('common/footer', $data);
	}
}
