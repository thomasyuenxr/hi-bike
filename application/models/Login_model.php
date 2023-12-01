<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Login_model extends CI_Model
{
 function can_login($email, $password)
 {
  $this->db->where('email', $email);
  $this->db->where('password', $password);
  $query = $this->db->get('users');
  if(!($query->num_rows() > 0))
  {
   return 'Wrong Email Address or password';
  }
 }


 function get_uid($email) {
    $query = $this->db->query(
        "SELECT uid
        FROM users
        WHERE email = '$email'"
    );
    return $query->row()->uid;
 }

    

}

?>