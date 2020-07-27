<?php
class ModelLocalisationLocation extends Model {
	public function addLocation($data) {
		$this->load->model('localisation/language');
		$this->db->query("INSERT INTO " . DB_PREFIX . "location_name SET name = '" . $this->db->escape($data['name'][$this->config->get('config_language_id')]) . "', address = '" . $this->db->escape($data['address'][$this->config->get('config_language_id')]) . "'");
		
		$id = $this->db->getLastId();
		
		foreach ($this->model_localisation_language->getLanguageId() as $lang) {
 			
		$this->db->query("INSERT INTO " . DB_PREFIX . "location SET name = '" . $this->db->escape($data['name'][$lang['language_id']]) . "', lang = '" . $lang['language_id'] . "', location_id = '" . $id . "', address = '" . $this->db->escape($data['address'][$lang['language_id']]) . "', geocode = '" . $this->db->escape($data['geocode'][$lang['language_id']]) . "', telephone = '" . $this->db->escape($data['telephone'][$lang['language_id']]) . "', fax = '" . $this->db->escape($data['fax'][$lang['language_id']]) . "', image = '" . $this->db->escape($data['image'][$lang['language_id']]) . "', open = '" . $this->db->escape($data['open'][$lang['language_id']]) . "', comment = '" . $this->db->escape($data['comment'][$lang['language_id']]) . "'");	
		
		}
		
	
		return $id;
	}

	public function editLocation($location_id, $data) {
	    $this->db->query("UPDATE " . DB_PREFIX . "location_name SET name = '" . $this->db->escape($data['name'][$this->config->get('config_language_id')]) . "', address = '" . $this->db->escape($data['address'][$this->config->get('config_language_id')]) . "' WHERE location_id = '" . $location_id . "'");
		foreach ($data as $name => $value) {		
			foreach ($value as $language_id => $val) { 
		$this->db->query("UPDATE " . DB_PREFIX . "location SET " . $name . " = '" . $val . "' WHERE location_id = '" . $location_id . "' AND lang = '" . $language_id . "'");
			}
		}
	}

	public function deleteLocation($location_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "location WHERE location_id = " . (int)$location_id);
		$this->db->query("DELETE FROM " . DB_PREFIX . "location_name WHERE location_id = " . (int)$location_id);
	}

	public function getLocation($location_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "location WHERE location_id = '" . (int)$location_id . "'");
        foreach($query->rows as $rows) { 
			$location[$rows['lang']] = $rows;
		}
		
		return $location;
	}

	public function getLocations($data = array()) {
		$sql = "SELECT location_id, name, address FROM " . DB_PREFIX . "location_name";

		$sort_data = array(
			'name',
			'address',
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTotalLocations() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "location_name");

		return $query->row['total'];
	}
}
