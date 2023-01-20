<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

	/**
	 * index
	 * menampilkan halaman dashboard
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();
		header('Cache-Control: no-cache, must-revalidate, max-age=0');
		header('Cache-Control: post-check=0, pre-check=0', false);
		header('Pragma: no-cache');
		$this->load->model('KategoriModel');
		$this->load->model('NodeModel');

		if ($this->session->userdata('user') === null) {
			redirect('login');
		}
	}
	public function index()
	{
		$modelnya = $this->KategoriModel->getkat();
		$data = array(
			'title' => 'Pilih Kategori Makanan Oleh - Oleh',
			'dk' => $modelnya,

		);
		$this->load->view('admin/dashboard/index', $data);
	}

	public function detail($id)
	{
		$data = array(
			'title' => 'detail toko',
			'datok' => $this->NodeModel->geByKatID($id)
		);

		$this->load->view('admin/dashboard/detail', $data);
	}
}
