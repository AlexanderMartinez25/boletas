<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*  Description: Login model class
 */
class Login_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    public function validate(){
        // grab user input
        $this->load->database();
        $this->input->post(NULL, TRUE);
        
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        
        // Prep the query
        $this->db->where('email', $email);
        $this->db->where('password', $password);
        
        // Run the query
        $query = $this->db->get('usuarios');
        // Let's check if there are any results
        if($query->num_rows() == 1)
        {
            // If there is a user, then create session data
            $row = $query->row();
            $data = array(
                    'idUsuario' => $row->idUsuario,
                    'nombre' => $row->nombre,
                    'apellido' => $row->apellido,
                    'empresa' => $row->empresa,
                    'validated' => true
                );
            $this->session->set_userdata($data);
            return true;
        }
        // If the previous process did not validate
        // then return false.
        return false;
    }
}
?>