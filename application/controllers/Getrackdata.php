<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Getrackdata extends CI_Controller {
    public function get_rack_api() {
        $this->load->model('getapi_model');
        $record = $this->getapi_model->get_record();
    
        
    
    }

}

?>