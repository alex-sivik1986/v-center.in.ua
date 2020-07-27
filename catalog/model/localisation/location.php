<?php
class ModelLocalisationLocation extends Model {
	public function getLocation($location_id) {
		$query = $this->db->query("SELECT location_id, name, address, geocode, lang, telephone, fax, image, open, comment FROM " . DB_PREFIX . "location WHERE location_id = '" . (int)$location_id . "'");
    if($query->rows) {
	foreach($query->rows as $rows) { 
			$location[$rows['lang']] = $rows;
		}
		
		return $location;
	} else {
		return false;
	}
	}
}