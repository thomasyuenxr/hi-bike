<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Play extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('quiz_model');
        $this->load->model('login_model');

    }

    public function start_challenge() {
        if($this->session->userdata('logged_in')) {
            $this->load->view('template/header');
            $this->load->view('how_to_play');
        } else {
            redirect('login');
        }
    }


    public function quiz1() {
        // fetch uid via email from session
        $email = $this->session->userdata('email');
        $uid = $this->login_model->get_uid($email);

        $quiz1 = array("quiz_question"=>null, "quiz_correct_ans"=>null, "quiz_wrong_ans1"=>null, "quiz_wrong_ans2"=>null, "quiz_wrong_ans3"=>null);

        $quiz1_id = $this->quiz_model->get_random_quiz_id();

        $quiz1['quiz_question'] = $this->quiz_model->get_quiz_question($quiz1_id);
        $quiz1['quiz_correct_ans'] = $this->quiz_model->get_quiz_correct_ans($quiz1_id);
        $quiz1['quiz_wrong_ans1'] = $this->quiz_model->get_quiz_wrong_ans1($quiz1_id);
        $quiz1['quiz_wrong_ans2'] = $this->quiz_model->get_quiz_wrong_ans2($quiz1_id);
        $quiz1['quiz_wrong_ans3'] = $this->quiz_model->get_quiz_wrong_ans3($quiz1_id);


        // store quiz and user info as quiz log in database
        $data = array(
            'uid'  => $uid,
            'quizid'  => $quiz1_id,
        );
        $query = $this->quiz_model->insert_log($data);

        $this->load->view('template/header');
        $this->load->view('quiz1', $quiz1);
    }

    public function quiz2() {

        // fetch uid via email from session
        $email = $this->session->userdata('email');
        $uid = $this->login_model->get_uid($email);

        $quiz2 = array("quiz_question"=>null, "quiz_correct_ans"=>null, "quiz_wrong_ans1"=>null, "quiz_wrong_ans2"=>null, "quiz_wrong_ans3"=>null);

        $quiz2_id = $this->quiz_model->get_random_quiz_id();

        $quiz2['quiz_question'] = $this->quiz_model->get_quiz_question($quiz2_id);
        $quiz2['quiz_correct_ans'] = $this->quiz_model->get_quiz_correct_ans($quiz2_id);
        $quiz2['quiz_wrong_ans1'] = $this->quiz_model->get_quiz_wrong_ans1($quiz2_id);
        $quiz2['quiz_wrong_ans2'] = $this->quiz_model->get_quiz_wrong_ans2($quiz2_id);
        $quiz2['quiz_wrong_ans3'] = $this->quiz_model->get_quiz_wrong_ans3($quiz2_id);

        // store quiz and user info as quiz log in database
        $data = array(
            'uid'  => $uid,
            'quizid'  => $quiz2_id,
        );
        $query = $this->quiz_model->insert_log($data);

        $this->load->view('template/header');
        $this->load->view('quiz2', $quiz2);
    }

    public function quiz3() {

        // fetch uid via email from session
        $email = $this->session->userdata('email');
        $uid = $this->login_model->get_uid($email);

        $quiz3 = array("quiz_question"=>null, "quiz_correct_ans"=>null, "quiz_wrong_ans1"=>null, "quiz_wrong_ans2"=>null, "quiz_wrong_ans3"=>null);

        $quiz3_id = $this->quiz_model->get_random_quiz_id();

        $quiz3['quiz_question'] = $this->quiz_model->get_quiz_question($quiz3_id);
        $quiz3['quiz_correct_ans'] = $this->quiz_model->get_quiz_correct_ans($quiz3_id);
        $quiz3['quiz_wrong_ans1'] = $this->quiz_model->get_quiz_wrong_ans1($quiz3_id);
        $quiz3['quiz_wrong_ans2'] = $this->quiz_model->get_quiz_wrong_ans2($quiz3_id);
        $quiz3['quiz_wrong_ans3'] = $this->quiz_model->get_quiz_wrong_ans3($quiz3_id);

        // store quiz and user info as quiz log in database
        $data = array(
            'uid'  => $uid,
            'quizid'  => $quiz3_id,
        );
        $query = $this->quiz_model->insert_log($data);

        $this->load->view('template/header');
        $this->load->view('quiz3', $quiz3);
    }

    public function result() {

        // fetch uid via email from session
        $email = $this->session->userdata('email');
        $uid = $this->login_model->get_uid($email);

        $data['all_quiz'] = $this->quiz_model->get_quiz_history($uid);

        $this->load->view('template/header');
        $this->load->view('quiz_result', $data);
    }

    public function achievement() {
        $this->load->view('template/header');
        $this->load->view('achievement');
    }

    public function contact() {
        $this->load->view('template/header');
        $this->load->view('contact');
    }

    public function confirm() {
        $this->load->view('template/header');
        $this->load->view('confirm');
    }

    public function about() {
        $this->load->view('template/header');
        $this->load->view('about');
    }

    public function reference() {
        $this->load->view('template/header');
        $this->load->view('reference');
    }


}

?>