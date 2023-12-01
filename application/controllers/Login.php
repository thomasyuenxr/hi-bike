<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function index()
	{
		$data['error']= "";
		$this->load->helper('form');
		$this->load->helper('url');
		$this->load->view('template/header');
		if (!$this->session->userdata('logged_in'))//check if user already login
		{
			$this->load->view('login', $data); //if user has not login ask user to login
		}else{
			$this->load->view('welcome'); //if user already logined show main page
		}
	}

	public function check_login()
	{
		$this->load->model('login_model');		//load user model
		$data['error']= "<div class=\"alert alert-danger\" role=\"alert\"> Incorrect email or passwrod!! </div> ";
		$this->load->helper('form');
		$this->load->helper('url');
		// $this->load->view('template/header');
		$email = $this->input->post('email'); //getting username from login form
		$password = $this->input->post('password'); //getting password from login form

		$result = $this->login_model->can_login($email, $password);

		if($result == '') {
			$user_data = array(
				'email' => $email,
				'logged_in' => true
			);
			$this->session->set_userdata($user_data); //set user status in session
			redirect('welcome');
		}else
			{
				$this->load->view('template/header.php');
				$this->load->view('login', $data);	//if username password incorrect, show error msg and ask user to login
			}
		}
		
	

	public function logout()
	{
		$this->session->unset_userdata('logged_in'); //delete login status
		redirect('login'); // redirect user back to login
	}
}
?>
