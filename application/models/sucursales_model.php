<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*  Description: Sucursales model class
 */
class Sucursales_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
        
    }
    
    public function get_sucursales(){

        $this->db->where('id_usuario', $this->session->userdata('idUsuario'));
        $query = $this->db->get('sucursales');
        return $row = $query->result();
    }
    
    public function update(){
        $this->input->post(NULL, TRUE);
        
        $nombre = $this->input->post('nombre');
        $id = $this->input->post('id');
        
        $data = array(
            'nombre' => $nombre,
        );
    
        $this->db->where('id_sucursal', $id);
        $this->db->update('sucursales', $data);
        return $this->db->affected_rows();
    }
}
?>