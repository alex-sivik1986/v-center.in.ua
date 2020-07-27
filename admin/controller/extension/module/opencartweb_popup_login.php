<?php
class ControllerExtensionModuleOpencartwebPopupLogin extends Controller {
	private $error = array();

	public function index() {
		

		$data['module_opencartweb_popup_login_status'] = $this->config->get('module_opencartweb_popup_login_status');
		

		$this->load->language('customer/customer');
		$this->load->language('extension/module/opencartweb_popup_login');

		$this->document->setTitle($this->language->get('heading_title_form'));

		$data['token']=  $this->session->data['token'];

		$data['heading_title_form']    ='Opencartweb-Popup Login';

		$data['text_extension']       = $this->language->get('text_extension');
		$data['text_success']     	  = $this->language->get('text_success');
		$data['text_edit_popup']      	  = $this->language->get('text_edit_popup');
		$data['entry_status']     	  = $this->language->get('entry_status');
		$data['required']     		  = $this->language->get('required');
		$data['tab_language']	 	  = $this->language->get('tab_language');
		$data['tab_url']	 		  = $this->language->get('tab_url');
		$data['tab_register_fields']  = $this->language->get('tab_register_fields');
		$data['tab_social']  		  = $this->language->get('tab_social');
		$data['entry_login_url'] 	 			 = $this->language->get('entry_login_url');
		$data['entry_register_url'] 			 = $this->language->get('entry_register_url');
		$data['entry_login_text']        		 = $this->language->get('entry_login_text');
		$data['entry_login_redirection_page']  	 = $this->language->get('entry_login_redirection_page');
		$data['entry_register_redirection_page'] = $this->language->get('entry_register_redirection_page');
		$data['entry_remember_me']	   			 = $this->language->get('entry_remember_me');
		$data['entry_login_footer_text']	   	 = $this->language->get('entry_login_footer_text');
		$data['entry_register_footer_text']	   	 = $this->language->get('entry_register_footer_text');
		$data['entry_googleloginbuttontext']	   	 = $this->language->get('entry_googleloginbuttontext');
		$data['entry_facebookloginbuttontext']	   	 = $this->language->get('entry_facebookloginbuttontext');
		$data['entry_ortext']	   	 = $this->language->get('entry_ortext');

		$data['entry_customer_group'] = $this->language->get('entry_customer_group');
		$data['entry_firstname'] = $this->language->get('entry_firstname');
		$data['entry_lastname'] = $this->language->get('entry_lastname');
		$data['entry_telephone'] = $this->language->get('entry_telephone');
		$data['entry_newsletter'] = $this->language->get('entry_newsletter');
		$data['entry_fax'] = $this->language->get('entry_fax');
		
		$data['entry_company'] = $this->language->get('entry_company');
		$data['entry_address_1'] = $this->language->get('entry_address_1');
		$data['entry_address_2'] = $this->language->get('entry_address_2');
		$data['entry_city'] = $this->language->get('entry_city');
		$data['entry_postcode'] = $this->language->get('entry_postcode');
		$data['entry_zone'] = $this->language->get('entry_zone');
		$data['entry_country'] = $this->language->get('entry_country');
		
		$data['button_continue'] = $this->language->get('button_continue');
		$data['button_back'] = $this->language->get('button_back');
		$data['text_loading'] = $this->language->get('text_loading');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}


		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title_form'),
				'href' => $this->url->link('extension/module/opencartweb_popup_login', 'token=' . $this->session->data['token'], true)
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title_form'),
				'href' => $this->url->link('extension/module/opencartweb_popup_login', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true)
			);
		}

		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);


		$module_info = $this->db->query("SELECT * FROM opencartweb_login_popup WHERE id=1")->row;
		
		if (!empty($module_info)) {
			$data['login_text'] = $module_info['login_text'];
		} else {
			$data['login_text'] = '';
		}
		
		if (!empty($module_info)) {
			$data['login_url'] = $module_info['login_url'];
		} else {
			$data['login_url'] = '';
		}
		
		if (!empty($module_info)) {
			$data['register_url'] = $module_info['register_url'];
		} else {
			$data['register_url'] = '';
		}		
		
		
		if (!empty($module_info)) {
			$data['remember_me_text'] = $module_info['remember_me_text'];
		} else {
			$data['remember_me_text'] = '';
		}
		
		if (!empty($module_info)) {
			$data['login_footer'] = $module_info['login_footer'];
		} else {
			$data['login_footer'] = '';
		}
		
		if (!empty($module_info)) {
			$data['register_footer'] = $module_info['register_footer'];
		} else {
			$data['register_footer'] = '';
		}		

	
		if (!empty($module_info)) {
			$data['login_redirection'] = $module_info['login_redirection'];
		} else {
			$data['login_redirection'] = '';
		}			

		if (!empty($module_info)) {
			$data['register_redirection'] = $module_info['register_redirection'];
		} else {
			$data['register_redirection'] = '';
		}	

		if (!empty($module_info)) {
			$data['googleloginbuttontext'] = $module_info['googleloginbuttontext'];
		} else {
			$data['googleloginbuttontext'] = '';
		}	

		if (!empty($module_info)) {
			$data['facebookloginbuttontext'] = $module_info['facebookloginbuttontext'];
		} else {
			$data['facebookloginbuttontext'] = '';
		}		

		if (!empty($module_info)) {
			$data['ortext'] = $module_info['ortext'];
		} else {
			$data['ortext'] = '';
		}		

		$data['firstname'] 	= $module_info['firstname'];
		$data['lastname'] 	= $module_info['lastname'];
		$data['telephone']	= $module_info['telephone'];
		$data['newsletter'] = $module_info['newsletter'];
		$data['company']	= $module_info['company'];
		$data['address_1'] 	= $module_info['address_1'];
		$data['address_2'] 	= $module_info['address_2'];
		$data['city'] 		= $module_info['city'];
		$data['postcode'] 	= $module_info['postcode'];
		$data['zone'] 		= $module_info['zone'];
		$data['fax'] 		= $module_info['fax'];
		$data['country'] 	= $module_info['country'];
		$data['customer_group'] 	= $module_info['customergroup'];
		
		$data['firstnamer'] 	= $module_info['firstnamer'];
		$data['lastnamer'] 		= $module_info['lastnamer'];
		$data['telephoner']		= $module_info['telephoner'];
		$data['newsletterr'] 	= $module_info['newsletterr'];
		$data['companyr']		= $module_info['companyr'];
		$data['address_1r'] 	= $module_info['address_1r'];
		$data['address_2r'] 	= $module_info['address_2r'];
		$data['cityr'] 			= $module_info['cityr'];
		$data['postcoder'] 		= $module_info['postcoder'];
		$data['zoner'] 			= $module_info['zoner'];
		$data['countryr'] 		= $module_info['countryr'];
		$data['faxr'] 			= $module_info['faxr'];

		$data['firstnamei'] 	= $module_info['firstnamei'];
		$data['lastnamei'] 		= $module_info['lastnamei'];
		$data['telephonei']		= $module_info['telephonei'];
		$data['newsletteri'] 	= $module_info['newsletteri'];
		$data['companyi']		= $module_info['companyi'];
		$data['address_1i'] 	= $module_info['address_1i'];
		$data['address_2i'] 	= $module_info['address_2i'];
		$data['cityi'] 			= $module_info['cityi'];
		$data['postcodei'] 		= $module_info['postcodei'];
		$data['zonei'] 			= $module_info['zonei'];
		$data['countryi'] 		= $module_info['countryi'];
		$data['faxi'] 			= $module_info['faxi'];
		$data['customer_groupi'] 	= $module_info['customergroupi'];
			
		
		$this->load->language('catalog/language/*/extension/module/account.php');
		$text_account = $this->language->get('text_account');
		$text_edit = $this->language->get('text_edit');
		$text_password = $this->language->get('text_password');
		$text_address = $this->language->get('text_address');
		$text_wishlist = $this->language->get('text_wishlist');
		$text_order = $this->language->get('text_order');
		$text_download = $this->language->get('text_download');
		$text_reward = $this->language->get('text_reward');
		$text_return = $this->language->get('text_return');
		$text_transaction = $this->language->get('text_transaction');
		$text_newsletter = $this->language->get('text_newsletter');
		$text_recurring = $this->language->get('text_recurring');
		
		$account 	= 'index.php?route=account/account';
		$edit 		= 'index.php?route=account/edit';
		$password 	= 'index.php?route=account/password';
		$address 	= 'index.php?route=account/address';
		$wishlist 	= 'index.php?route=account/wishlist';
		$order 		= 'index.php?route=account/order';
		$download 	= 'index.php?route=account/download';
		$reward 	= 'index.php?route=account/reward';
		$return 	= 'index.php?route=account/return';
		$transaction ='index.php?route=account/transaction';
		$newsletter  ='index.php?route=account/newsletter'; 
		$recurring 	 = 'index.php?route=account/recurring'; 
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$data['redirection']=array();

		$data['redirection']=array(
		$account => $text_account,
		$edit => $text_edit,
		$password => $text_password, 
		$address => $text_address,
		$wishlist => $text_wishlist,
		$order => $text_order,
		$download => $text_download,
		$reward => $text_reward, 
		$return => $text_return,
		$transaction => $text_transaction,
		$newsletter => $text_newsletter,
		$recurring => $text_recurring
		  );

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

	if (isset($this->session->data['error_permission'])) {
			$data['error_permission'] = $this->session->data['error_permission'];

			unset($this->session->data['error_permission']);
		} else {
			$data['error_permission'] = '';
		}


		if ($this->request->server['HTTPS']) {
			$data['store_url'] = HTTPS_CATALOG;
		} else {
			$data['store_url'] = HTTP_CATALOG;
		}
//GOOGLE SOCIAL LOGIN 
        $data['google_login_client_id'] =$module_info['google_login_client_id'];
        $data['google_login_client_secret'] =$module_info['google_login_client_secret'];
        $data['google_login_callback_url'] = $data['store_url'].$module_info['google_login_callback_url'];
        $data['google_login_status'] = $module_info['google_login_status'];
// GOOGLE SOCIAL LOGIN END

//FACEBOOK SOCIAL LOGIN 
        $data['facebookappid'] =$module_info['facebookappid'];
        $data['facebookappsecret'] =$module_info['facebookappsecret'];
        $data['facebook_login_status'] = $module_info['facebook_login_status'];
        $data['facebook_login_callback_url'] =$data['store_url'].$module_info['facebook_login_callback_url'];
// FACEBOOK SOCIAL LOGIN END
		$this->response->setOutput($this->load->view('extension/module/opencartweb_popup_login', $data));
	}
	
	public function update() {

	$this->load->model('setting/setting');
	$this->model_setting_setting->editSetting('module_opencartweb_popup_login', $this->request->post);

	$json = array();
	
	$this->load->language('extension/module/opencartweb_popup_login');
	
	if (!$this->user->hasPermission('modify', 'extension/module/opencartweb_popup_login')) {

			$this->session->data['error_permission'] = $this->language->get('error_permission');
			$json['error_permission'] = $this->language->get('error_permission');
	} 
	else {

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			
			$this->db->query("UPDATE opencartweb_login_popup SET login_text='".$this->db->escape($this->request->post['login_text'])."', login_url='".$this->db->escape($this->request->post['login_url'])."', register_url='".$this->db->escape($this->request->post['register_url'])."', remember_me_text='".$this->db->escape($this->request->post['remember_me_text'])."', login_footer='".$this->db->escape($this->request->post['login_footer'])."', register_footer='".$this->db->escape($this->request->post['register_footer'])."', login_redirection='".$this->db->escape($this->request->post['login_redirection'])."', register_redirection='".$this->db->escape($this->request->post['register_redirection'])."',firstname= '".(int)$this->request->post['firstname']."', lastname= '".(int)$this->request->post['lastname']."', telephone= '".(int)$this->request->post['telephone']."', fax= '".(int)$this->request->post['fax']."', newsletter= '".(int)$this->request->post['newsletter']."', company= '".(int)$this->request->post['company']."', address_1= '".(int)$this->request->post['address_1']."', address_2= '".(int)$this->request->post['address_2']."', city= '".(int)$this->request->post['city']."', postcode= '".(int)$this->request->post['postcode']."', zone= '".(int)$this->request->post['zone']."', country= '".(int)$this->request->post['country']."', firstnamer= '".(int)$this->request->post['firstnamer']."', lastnamer= '".(int)$this->request->post['lastnamer']."', telephoner= '".(int)$this->request->post['telephoner']."', newsletterr= '".(int)$this->request->post['newsletterr']."', companyr= '".(int)$this->request->post['companyr']."', address_1r= '".(int)$this->request->post['address_1r']."', address_2r= '".(int)$this->request->post['address_2r']."', cityr= '".(int)$this->request->post['cityr']."', postcoder= '".(int)$this->request->post['postcoder']."', zoner= '".(int)$this->request->post['zoner']."', countryr= '".(int)$this->request->post['countryr']."', firstnamei= '".$this->request->post['firstnamei']."', lastnamei= '".$this->request->post['lastnamei']."', telephonei= '".$this->request->post['telephonei']."', newsletteri= '".$this->request->post['newsletteri']."', companyi= '".$this->request->post['companyi']."', address_1i= '".$this->request->post['address_1i']."', address_2i= '".$this->request->post['address_2i']."', cityi= '".$this->request->post['cityi']."', postcodei= '".$this->request->post['postcodei']."', zonei= '".$this->request->post['zonei']."', countryi= '".$this->request->post['countryi']."',google_login_client_id='".$this->request->post['google_login_client_id']."', google_login_client_secret='".$this->request->post['google_login_client_secret']."', google_login_status='".$this->request->post['google_login_status']."', googleloginbuttontext='".$this->db->escape($this->request->post['googleloginbuttontext'])."', facebookloginbuttontext='".$this->db->escape($this->request->post['facebookloginbuttontext'])."', ortext='".$this->db->escape($this->request->post['ortext'])."', facebookappid='".$this->db->escape($this->request->post['facebookappid'])."',facebookappsecret='".$this->db->escape($this->request->post['facebookappsecret'])."', facebook_login_status='".(int)$this->request->post['facebook_login_status']."',customergroupi= '".$this->request->post['customer_groupi']."',customergroup= '".$this->request->post['customer_group']."', fax = '" . $this->db->escape($this->request->post['fax']) . "', faxr= '".(int)$this->request->post['faxr']."',faxi= '".$this->db->escape($this->request->post['faxi'])."' WHERE id=1");
			
			$this->session->data['success'] = $this->language->get('text_success');
			$json['success']=$this->language->get('text_success');
			
		}
		
		
	}
	$this->response->addHeader('Content-Type: application/json');
	$this->response->setOutput(json_encode($json));
	
}

}


