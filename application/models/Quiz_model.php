<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Quiz_model extends CI_Model{

    public function get_random_quiz_id () {
        $query = $this->db->query(
            "SELECT quizid
            FROM quiz
            ORDER BY RAND()
            LIMIT 1"
        );
        return $query->row()->quizid;
    }

    public function get_quiz_question($quizid)
    {
        $query = $this->db->query(
            "SELECT question
            FROM quiz
            WHERE quizid ='$quizid'"
        );
        return $query->row()->question;
    }

    public function get_quiz_correct_ans($quizid)
    {
        $query = $this->db->query(
            "SELECT correct_ans
            FROM quiz
            WHERE quizid = '$quizid'"
        );
        return $query->row()->correct_ans;
    }

    public function get_quiz_wrong_ans1($quizid)
    {
        $query = $this->db->query(
            "SELECT wrong_ans1
            FROM quiz
            WHERE quizid = '$quizid'"
        );
        return $query->row()->wrong_ans1;
    }

    public function get_quiz_wrong_ans2($quizid)
    {
        $query = $this->db->query(
            "SELECT wrong_ans2
            FROM quiz
            WHERE quizid = '$quizid'"
        );
        return $query->row()->wrong_ans2;
    }

    public function get_quiz_wrong_ans3($quizid)
    {
        $query = $this->db->query(
            "SELECT wrong_ans3
            FROM quiz
            WHERE quizid = '$quizid'"
        );
        return $query->row()->wrong_ans3;
    }


    // insert the showed random quiz into quizlog
    public function insert_log($data)
    {
        $this->db->insert('quizlog', $data);
    }


    // return the user's quizs
    public function get_quiz_history($uid)
    {
        $query = $this->db->query(
            "SELECT Q.question, Q.correct_ans
            FROM quiz AS Q, quizlog AS L
            WHERE Q.quizid = L.quizid
            AND L.uid = '$uid'"
        );
        return $query->result();
    }
}
?>