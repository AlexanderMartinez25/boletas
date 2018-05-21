<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*  Description: Sucursales model class
 */
class Sucursales_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
        
    }
    
    public function get_sucursales(){

        $this->db->select('nombre,id_sucursal');
        $this->db->where('id_usuario', $this->session->userdata('idUsuario'));
        $query = $this->db->get('sucursales');
        return $row = $query->result();
    }
    
    public function update(){
        $this->input->post(NULL, TRUE);
        
        $nombre = $this->input->post('nombre_edit');
        $id = $this->input->post('id_edit');
        
        $data = array(
            'nombre' => $nombre,
        );
    
        $this->db->where('id_sucursal', $id);
        $this->db->update('sucursales', $data);
        return $this->db->affected_rows();
    }

    public function insert(){
        $this->input->post(NULL, TRUE);
        
        $nombre = $this->input->post('nombre');

        $data = array(
            'nombre' => $nombre,
            'id_usuario' => $this->session->userdata('idUsuario')
        );
    
        if ( ! $this->db->insert('sucursales', $data)){
            return $error = $this->db->error();
        }else{
            return 1;
        }
    }

    public function delete(){
        $this->input->post(NULL, TRUE);
        $id = $this->input->post('id_delete');
        
        $this->db->where('id_sucursal', $id);
    
        if ( ! $this->db->delete('sucursales')){
            return $error = $this->db->error();
        }else{
            return 1;
        }
    }
    
}
?>