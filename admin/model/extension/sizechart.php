<?php

class ModelExtensionSizechart extends Model {

    public function getList($data = null) {

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "sizechart");
        if ($query->rows) {
            foreach ($query->rows as $result) {
                $sizechart[$result['chart_id']] = array(
                    'chart_id' => $result['chart_id'],
                    'chart_title' => $result['chart_title'],
                    'chart_description_top' => $result['chart_description_top'],
                    'chart_description_bottom' => $result['chart_description_bottom'],
                    'chart_data' => $result['chart_data'],
                    'chart_status' => $result['is_active']
                );
            }
            return $sizechart;
        }
        return false;
    }

    public function deleteChartProduct($i_prod_id = null) { //once we assign any chart and later we want to delete that chart 
        if (!empty($i_prod_id)) {
            $query = $this->db->query("DELETE FROM " . DB_PREFIX . "sizechart_product WHERE product_id = '" . (int) $i_prod_id . "' ");
        }
    }

    public function getChartData($i_prod_id = null) { //once we assign any chart and later we want to delete that chart 
        
        if (!empty($i_prod_id)) {
            return $this->db->query("SELECT chart_id FROM " . DB_PREFIX . "sizechart_product WHERE product_id = '" . (int) $i_prod_id . "' ")->row;
        }
    }

    public function addEditChartProduct($i_produ_id = null, $i_status = null, $i_chart_id = null) {
        if (!empty($i_produ_id) && !empty($i_status) && !empty($i_chart_id)) {
            if ($i_status == '1') { // insert into table
                $this->db->query("INSERT INTO " . DB_PREFIX . "sizechart_product (chart_id,product_id) VALUES ('" . $i_chart_id . "','" . $i_produ_id . "')");
            } else if ($i_status == '2') { // update 
                $this->db->query("UPDATE " . DB_PREFIX . "sizechart_product SET chart_id='" . $i_chart_id . "' where product_id='" . $i_produ_id . "'");
            }
        }
    }

    public function getListProduct() {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "sizechart WHERE is_active = 1");
        if ($query->rows) {
            foreach ($query->rows as $result) {
                $sizechart[$result['chart_id']] = array(
                    'chart_id' => $result['chart_id'],
                    'chart_title' => $result['chart_title'],
                    'chart_description_top' => $result['chart_description_top'],
                    'chart_description_bottom' => $result['chart_description_bottom'],
                    'chart_data' => $result['chart_data']
                );
            }
            return $sizechart;
        }
        return false;
    }

    public function addProductList($product_id, $id) {

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "sizechart_product  WHERE product_id = '" . (int) $product_id . "'");
        if (count($query->rows) > 0) {
            $this->db->query("UPDATE " . DB_PREFIX . "sizechart_product SET `chart_id` = '" . $this->db->escape($id) . "', "
                    . " WHERE product_id = '" . (int) $product_id . "' ");
        } else {
            $this->db->query("INSERT INTO " . DB_PREFIX . "sizechart_product SET `chart_id` = '" . $this->db->escape($id) . "', "
                    . " `product_id` = '" . $this->db->escape($product_id) . "' ");
        }
    }

    public function editProductList($product_id, $id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "sizechart_product  WHERE product_id = '" . (int) $product_id . "'");

        if (count($query->rows) > 0) {
            $this->db->query("UPDATE " . DB_PREFIX . "sizechart_product SET `chart_id` = '" . $this->db->escape($id) . "' "
                    . " WHERE product_id = '" . (int) $product_id . "' ");
        } else {
            $this->db->query("INSERT INTO " . DB_PREFIX . "sizechart_product SET `chart_id` = '" . $this->db->escape($id) . "', "
                    . " `product_id` = '" . $this->db->escape($product_id) . "' ");
        }
    }

    public function add($data) {

        $this->db->query("INSERT INTO " . DB_PREFIX . "sizechart SET `chart_title` = '" . $this->db->escape($data['chart-name']) . "', "
                . " `chart_description_top` = '" . $this->db->escape($data['text-top-description']) . "', "
                . " `chart_description_bottom` = '" . $this->db->escape($data['text-bottom-description']) . "', "
                . " `chart_headings` = '" . $this->db->escape(serialize($data['chart-heading'])) . "', "
                . " `chart_data` = '" . $this->db->escape(serialize($data['size-data'])) . "', "
                . " `is_active` = '1' ");
    }

    public function edit($id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "sizechart WHERE chart_id = '" . (int) $id . "'");

        foreach ($query->rows as $result) {
            $sizechart['chart_id'] = $result['chart_id'];
            $sizechart['chart_title'] = $result['chart_title'];
            $sizechart['chart_description_top'] = $result['chart_description_top'];
            $sizechart['chart_description_bottom'] = $result['chart_description_bottom'];
            $sizechart['chart_headings'] = $result['chart_headings'];
            $sizechart['chart_data'] = $result['chart_data'];
            $sizechart['chart_status'] = $result['is_active'];
        }

        return $sizechart;
    }

    public function save($data) {
        if (empty($data) || !isset($data)) {
            return false;
        }

        $this->db->query("UPDATE " . DB_PREFIX . "sizechart SET `chart_title` = '" . $this->db->escape($data['chart-name']) . "', "
                . " `chart_description_top` = '" . $this->db->escape($data['text-top-description']) . "', "
                . " `chart_description_bottom` = '" . $this->db->escape($data['text-bottom-description']) . "', "
                . " `chart_headings` = '" . $this->db->escape(serialize($data['chart-heading'])) . "', "
                . " `chart_data` = '" . $this->db->escape(serialize($data['size-data'])) . "', "
                . " `is_active` = '" . (int) $data['is_active'] . "' "
                . " WHERE chart_id = '" . (int) $data['chart-id'] . "' ");
    }

    public function delete($data) {
        if (empty($data) || !isset($data)) {
            return false;
        }

        $this->db->query("DELETE FROM " . DB_PREFIX . "sizechart WHERE chart_id = '" . (int) $data['chart-id'] . "' ");
    }
    
}

?>
