<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));
        
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$this->load->model('tool/image');

		$data['categories'] = array();
		$categories = $this->model_catalog_category->getCategoriesHome();
		
		foreach ($categories as $category) {
			
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);
                
				
				if ($category['image_home']) {
					$image_home = $this->model_tool_image->resize($category['image_home'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				} else {
					$image_home = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				}
				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);
                if ($child['image']) {
					$image = $this->model_tool_image->resize($child['image'], 231, 130);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', 231, 130);
				}
					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'image' => $image,
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
				     'id' => $category['category_id'],
					'name'     => $category['name'],
					'image_home'=> $image_home,
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			
		}
		
		
		$data['products'] = array();

        $results = $this->model_catalog_product->getProductsHome();
			foreach ($results as $result) {
				if ($result['image_home']) {
					$image = $this->model_tool_image->resize($result['image_home'], $this->config->get($this->config->get('config_theme') . '_image_related_width'), $this->config->get($this->config->get('config_theme') . '_image_related_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_related_width'), $this->config->get($this->config->get('config_theme') . '_image_related_height'));
				}

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => html_entity_decode($result['description2'], ENT_QUOTES, 'UTF-8'),
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}
		
		
		$this->load->model('extension/module');

		$data['modules'] = array();

            $modules[5] = array("code"=> "html.35");
			$modules[4] = array("code"=> "banner.31");
            $modules[3] = array("code"=> "banner.30");
			$modules[2] = array("code"=> "news.34");
			$modules[1] = array("code"=> "banner.33");
			$modules[0] = array("code"=> "banner.40");
			foreach ($modules as $module) { 
			$part = explode('.', $module['code']);

			if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
				$module_data = $this->load->controller('extension/module/' . $part[0]);

				if ($module_data) {
					$data['modules'][] = $module_data;
				}
			}

			if (isset($part[1])) {
				$setting_info = $this->model_extension_module->getModule($part[1]);

				if ($setting_info && $setting_info['status']) {
					$output = $this->load->controller('extension/module/' . $part[0], $setting_info);

					if ($output) {
						$data['modules'][] = $output;
					}
				}
			}
		}
		
		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}
		
        $this->load->model('design/banner');
		$data['slider'] = $this->model_design_banner->getBanner(10);
		
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		$data['types_skin'] = $this->language->get('types_skin');
		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
