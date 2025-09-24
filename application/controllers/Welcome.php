<?php
defined('BASEPATH') OR exit('No direct script access allowed');

#[\AllowDynamicProperties]
class Welcome extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->database(); // This creates $this->db
    }

    public function index()
    {
        $this->load->view('index');
    }

    public function getMovies()
    {
        // Get params from frontend
        $limit = $this->input->get('limit');
        $offset = $this->input->get('offset');
        $value = $this->input->get('value');
   
        // Base query
        $this->db->select('*');
        $this->db->from('movies');

        if ($limit) {
            $this->db->limit($limit , $limit * $offset );
        }
        if ($value) {
            $this->db->like('name', $value);
        }

        $query  = $this->db->get();
        $result = $query->result_array();

        // Return JSON
        header('Content-Type: application/json');
        echo json_encode($result);
    }
}
