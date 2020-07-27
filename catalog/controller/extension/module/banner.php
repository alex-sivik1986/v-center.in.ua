<?php
class ControllerExtensionModuleBanner extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.transitions.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');
		$data['benefits'] = $this->language->get('benefits');
		$data['our_partners'] = $this->language->get('our_partners');
		$data['our_clients'] = $this->language->get('our_clients');
		$data['all_reviews'] = $this->language->get('all_reviews');
		$data['leave_reviews'] = $this->language->get('leave_reviews');
        $data['types_skin'] = $this->language->get('types_skin');  
		$data['banners'] = array();
       
		$results = $this->model_design_banner->getBanner($setting['banner_id']);

		foreach ($results as $result) {
		if($result['theme'] == 'default') {
				$data['banners'][] = array(
					'title' => html_entity_decode($result['title'], ENT_QUOTES, 'UTF-8'),
					'theme' => $result['theme'],
					'href'  => $this->url->link('design/banner', 'banner_id=' . $result['banner_id']),
					'description' => html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'),
					'link'  => $result['link'],
					'video'  => $result['video'],
					'banner_id' => $result['banner_id'],
					'image' => !(empty($result['image']))?'/image/' . $result['image']:'/image/placeholder.png'
		
				);
		} else {
			$data['banners'][] = array(
					'title' => html_entity_decode($result['title'], ENT_QUOTES, 'UTF-8'),
					'theme' => $result['theme'],
					'href'  => $this->url->link('design/banner', 'banner_id=' . $result['banner_id']),
					'description' => html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'),
					'link'  => $result['link'],
					'banner_id' => $result['banner_id'],
					'image' => !(empty($result['image']))?$this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']):'/image/placeholder.png'
		
				);
		}
			
		}


		
		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) { 
				$data['partners'][] = array(
					'title' => html_entity_decode($result['title'], ENT_QUOTES, 'UTF-8'),
					'theme' => $result['theme'],
					'href'  => $result['link'],
					'description' => html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'),
					'link'  => $result['link'],
					/*'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])*/
					'image' => $result['image']
				);
			}
		}
        $data['theme'] = $result['theme'];
		$data['module'] = $module++;

		return $this->load->view('extension/module/banner', $data);
	}
}