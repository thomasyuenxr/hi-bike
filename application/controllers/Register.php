<!-- register feature inspired by https://www.webslesson.info/2018/10/user-registration-and-login-system-in-codeigniter-3.html#comment-form -->

<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

 public function __construct()
 {
  parent::__construct();
  if($this->session->userdata('id'))
  {
   redirect('private_area');
  }
  $this->load->model('register_model');
  $this->load->library('form_validation');
 }

 function index()
 {
  $this->load->view('template/header');
  $this->load->view('register');
 }

 function signup() {
    $password = $this->input->post('user_password');
    $data = array(
                'email'  => $this->input->post('email'),
                'password'  => $this->input->post('password'),
            );
            $uid = $this->register_model->insert($data);

    if ($uid > 0) {
        redirect('login');
    }
 }

 


  
  

  

 

}

?>
