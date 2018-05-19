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
        $this->db->join('regiones', 'regiones.region_id = usuarios.region', 'inner');
        $this->db->join('provincias', 'provincias.provincia_id = usuarios.provincia', 'inner');
        $this->db->join('comunas', 'comunas.comuna_id = usuarios.comuna', 'inner');
        $this->db->where('idUsuario', $this->session->userdata('idUsuario'));
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
                'id_region' => $row->region,
                'region_nombre' => $row->region_nombre,
                'id_provincia' => $row->provincia,
                'provincia_nombre' => $row->provincia_nombre,
                'id_comuna' => $row->comuna,
                'comuna_nombre' => $row->comuna_nombre,
                'provincia' => $row->provincia,
                'comuna' => $row->comuna,
                'calle' => $row->calle,
                'numero' => $row->numero,
                'vivienda' => $row->vivienda,
                'empresa' => $row->empresa
                
            );
        return $data;
    }

    public function get_regiones($id=null){

        if ($id){
            $this->db->not_like('region_id', $id);
        }
        $query = $this->db->get('regiones');
        return $row = $query->result();
    }
    
    public function get_provincias_by_region($id){

        $this->db->where('region_id', $id);
        $query = $this->db->get('provincias');
        return $row = $query->result();
    }

    public function get_provincia($id,$id_region){

        $this->db->not_like('provincia_id', $id);
        $this->db->where('region_id', $id_region);
        $query = $this->db->get('provincias');
        return $row = $query->result();
    }

    public function get_comunas_by_provincia($id){

        $this->db->where('provincia_id', $id);
        $query = $this->db->get('comunas');
        return $row = $query->result();
    }

    public function get_comuna($id,$id_provincia){

        $this->db->not_like('comuna_id', $id);
        $this->db->where('provincia_id', $id_provincia);
        $query = $this->db->get('comunas');
        return $row = $query->result();
    }

    public function update(){
        // grab user input
        $this->input->post(NULL, TRUE);
        
        $nombre = $this->input->post('nombre');
        $apellido = $this->input->post('apellido');
        $telefono = $this->input->post('telefono');
        $rut = $this->input->post('rut');
        $region = $this->input->post('region');
        $provincia = $this->input->post('provincia');
        $comuna = $this->input->post('comuna');
        $calle = $this->input->post('calle');
        $numero = $this->input->post('numero');
        $email = $this->input->post('email');
        $vivienda = $this->input->post('vivienda');
        $empresa = $this->input->post('empresa');
        
        $data = array(
            'nombre' => $nombre,
            'apellido' => $apellido,
            'email' => $email,
            'rut' => $rut,
            'telefono' => $telefono,
            'region' => $region,
            'provincia' => $provincia,
            'comuna' => $comuna,
            'calle' => $calle,
            'numero' => $numero,
            'vivienda' => $vivienda,
            'empresa' => $empresa,
        );
    
        $this->db->where('idUsuario', $this->session->userdata('idUsuario'));
        $this->db->update('usuarios', $data);
        return $this->db->affected_rows();
    }
}
?>