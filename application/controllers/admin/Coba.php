<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Coba extends CI_Controller
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
    print_r($this->session->userdata('user'));
    $ok = $this->session->userdata('user');

    echo "<script> console.log('$ok')</script>";
    echo "<script> console.log('berhasil')</script>";


    echo 'halaman coba';
  }
}
