<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*  Description: Usuario model class
 */
class Usuario_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
        
    }
    
    public function get_profile_data(){
        // Prep the query
        $this->db->select('*');
        $this->db->from('usuarios');
        $this->db->where('idUsuario', $this->session->userdata('idUsuario'));
        $this->db->join('regiones', 'regiones.region_id = usuarios.region', 'inner');// Run the query
        $query = $this->db->get();
        $row = $query->row();

        $data = array(
                'idUsuario' => $row->idUsuario,
                'nombre' => $row->nombre,
                'apellido' => $row->apellido,
                'rut' => $row->rut,
                'empresa' => $row->empresa,
                'email' => $row->email,
                'telefono' => $row->telefono,
                'region' => $row->region_nombre,
                'provincia' => $row->provincia,
                'comuna' => $row->comuna,
                'calle' => $row->calle,
                'numero' => $row->numero,
                'vivienda' => $row->vivienda
                
            );
        return $data;
    }

    public function update(){
        // grab user input
        $this->load->database();
        $nombre = $this->security->xss_clean($this->input->post('nombre'));
        $apellido = $this->security->xss_clean($this->input->post('apellido'));
        $telefono = $this->security->xss_clean($this->input->post('telefono'));
        $rut = $this->security->xss_clean($this->input->post('rut'));
        $region = $this->security->xss_clean($this->input->post('region'));
        $provincia = $this->security->xss_clean($this->input->post('provincia'));
        $comuna = $this->security->xss_clean($this->input->post('comuna'));
        $calle = $this->security->xss_clean($this->input->post('calle'));
        $numero = $this->security->xss_clean($this->input->post('numero'));
        $email = $this->security->xss_clean($this->input->post('email'));
        $vivienda = $this->security->xss_clean($this->input->post('vivienda'));
        
        $data = array(
            'nombre' => $nombre,
            'apellido' => $nombre,
            'email' => $email,
            'rut' => $rut,
            'telefono' => $telefono,
            'region' => $region,
            'provincia' => $provincia,
            'calle' => $calle,
            'numero' => $numero,
            'comuna' => $comuna,
            'vivienda' => $vivienda,
        );
    
        $this->db->where('idUsuario', $this->session->userdata('idUsuario'));
        $this->db->replace('usuarios', $data);
        return $this->db->affected_rows();
    }
}
?>