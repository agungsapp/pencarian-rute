<?php
//defined('BASEPATH') or exit('No direct script access allowed');

class KategoriModel extends CI_Model
{

			public function getkat()
			{
				$query = $this->db->query("SELECT * FROM kategori");
		return $query->result_array();

    }
}
