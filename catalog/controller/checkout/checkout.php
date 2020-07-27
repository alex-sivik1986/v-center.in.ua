<?php
class ControllerCheckoutCheckout extends Controller {
	public function index() {
		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$this->response->redirect($this->url->link('checkout/cart'));
		}

		// Validate minimum quantity requirements.
		$products = $this->cart->getProducts();

		foreach ($products as $product) {
			$product_total = 0;

			foreach ($products as $product_2) {
				if ($product_2['product_id'] == $product['product_id']) {
					$product_total += $product_2['quantity'];
				}
			}

			if ($product['minimum'] > $product_total) {
				$this->response->redirect($this->url->link('checkout/cart'));
			}
		}

		$this->load->language('checkout/checkout');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/locale/'.$this->session->data['language'].'.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

		// Required by klarna
		if ($this->config->get('klarna_account') || $this->config->get('klarna_invoice')) {
			$this->document->addScript('http://cdn.klarna.com/public/kitt/toc/v1.0/js/klarna.terms.min.js');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
        $data['breadcrumbs'][] = array(
			'text' => '-',
			'href' => ''
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_cart'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('checkout/checkout', '', true)
		);
		$data['entry_phone_checkout'] = $this->language->get('entry_phone_checkout');
		$data['entry_firstname_checkout'] = $this->language->get('entry_firstname_checkout');
		$data['text_chechout_order'] = $this->language->get('text_chechout_order');
        $data['text_home'] = $this->language->get('text_home');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_firstname'] = $this->language->get('text_firstname');
		$data['text_phone'] = $this->language->get('text_phone');
		$data['text_comment'] = $this->language->get('text_comment');
		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_payment'] = $this->language->get('text_payment');
		$data['text_pay'] = $this->language->get('text_pay');
		$data['text_delivery'] = $this->language->get('text_delivery');
		$data['text_inform'] = $this->language->get('text_inform');
		$data['entry_confirm'] = $this->language->get('entry_confirm');
        $data['entry_firstname'] = $this->language->get('entry_firstname');
		$data['entry_lastname'] = $this->language->get('entry_lastname');
		$data['text_checkout_option'] = sprintf($this->language->get('text_checkout_option'), 1);
		$data['text_checkout_account'] = sprintf($this->language->get('text_checkout_account'), 2);
		$data['text_checkout_payment_address'] = sprintf($this->language->get('text_checkout_payment_address'), 2);
		$data['text_checkout_shipping_address'] = sprintf($this->language->get('text_checkout_shipping_address'), 3);
		$data['text_checkout_shipping_method'] = sprintf($this->language->get('text_checkout_shipping_method'), 4);
		
		if ($this->cart->hasShipping()) {
			$data['text_checkout_payment_method'] = sprintf($this->language->get('text_checkout_payment_method'), 5);
			$data['text_checkout_confirm'] = sprintf($this->language->get('text_checkout_confirm'), 6);
		} else {
			$data['text_checkout_payment_method'] = sprintf($this->language->get('text_checkout_payment_method'), 3);
			$data['text_checkout_confirm'] = sprintf($this->language->get('text_checkout_confirm'), 4);	
		}

		if (isset($this->session->data['error'])) {
			$data['error_warning'] = $this->session->data['error'];
			unset($this->session->data['error']);
		} else {
			$data['error_warning'] = '';
		}
        $this->session->data['guest']=array();
		$data['logged'] = $this->customer->isLogged();
        if (!$this->customer->isLogged()) {
			$this->session->data['account'] = 'guest';
			$this->session->data['guest']['customer_group_id'] = 1;
			
		}
	
		if (isset($this->session->data['account'])) {
			$data['account'] = $this->session->data['account'];
		} else {
			$data['account'] = '';
		}
        if ($this->customer->isLogged()) {
				
                $data['customer_id'] = $this->customer->getId();
				$data['firstname'] = $this->customer->getFirstName();

				$data['telephone'] = $this->customer->getTelephone();
		} else {
			    $data['firstname'] = '';

				$data['telephone'] = '';
		}
		$data['logged'] = $this->customer->isLogged();
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		
     
		$this->response->setOutput($this->load->view('checkout/checkout', $data));
	}
	
     public function validate_this_input(){
        $this->language->load('checkout/checkout');
//var_dump( $this->request->post);
        $json = array();
        $json['errors'] = array();

        if ((utf8_strlen($this->request->post['firstname']) < 2)){
    
                $json['errors']['firstname'] = $this->language->get('error_firstname');
          
        }

       if ((utf8_strlen($this->request->post['phone']) < 4) ){
           
               $json['errors']['phone'] = $this->language->get('error_telephone');
            
        }


        if(!empty($json['errors'])) {
            $json['error_status'] = true;
        } else {
            $json['success'] = true;
        }


        $this->response->setOutput(json_encode($json));
    }
	
	public function country() {
		$json = array();

		$this->load->model('localisation/country');

		$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);

		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']
			);
		}
        $this->session->data['shipping_address']['country_id'] = $country_info['country_id'];
		$this->session->data['payment_address']['country_id'] = $country_info['country_id'];
		$this->session->data['payment_address']['country'] = $country_info['name'];
		$this->session->data['payment_address']['zone_id'] = '';
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function customfield() {
		$json = array();

		$this->load->model('account/custom_field');

		// Customer Group
		if (isset($this->request->get['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($this->request->get['customer_group_id'], $this->config->get('config_customer_group_display'))) {
			$customer_group_id = $this->request->get['customer_group_id'];
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}

		$custom_fields = $this->model_account_custom_field->getCustomFields($customer_group_id);

		foreach ($custom_fields as $custom_field) {
			$json[] = array(
				'custom_field_id' => $custom_field['custom_field_id'],
				'required'        => $custom_field['required']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
