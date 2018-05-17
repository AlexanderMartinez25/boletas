<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*  Description: Perfil model class
 */
class Perfil_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
        
    }
    
    public function get_profile_data(){
        // Prep the query
        $this->db->select('*');
        $this->db->from('usuarios');
        $this->db->where('idUsuario', $this->session->userdata('idUsuario'));
        $this->db->join('regiones', 'regiones.region_id = usuarios.region', 'inner');
        $this->db->join('provincias', 'provincias.region_id = regiones.region_id', 'inner');
        $this->db->join('comunas', 'comunas.provincia_id = provincias.provincia_id', 'inner');
        // Run the query
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
                'cod_region' => $row->region,
                'region_nombre' => $row->region_nombre,
                'cod_provincia' => $row->provincia,
                'provincia_nombre' => $row->provincia_nombre,
                'cod_comuna' => $row->comuna,
                'comuna_nombre' => $row->comuna_nombre,
                'provincia' => $row->provincia,
                'comuna' => $row->comuna,
                'calle' => $row->calle,
                'numero' => $row->numero,
                'vivienda' => $row->vivienda
                
            );
        return $data;
    }

    public function get_provincias($id=null){

        if ($id){
            $this->db->where('region_id', $id);
        }
        $query = $this->db->get('provincias');
        return $row = $query->result();
    }

    public function get_comunas($id){
        $this->db->where('provincia_id', $id);
        $query = $this->db->get('comunas');
        return $row = $query->result();
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