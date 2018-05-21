<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*  Description: Sucursales model class
 */
class Sucursales_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
        
    }
    
    public function insert(){
        $this->input->post(NULL, TRUE);
        
        $sucursal = $this->input->post('sucursal');
        $fecha = $this->input->post('fecha');
        $monto = $this->input->post('monto');
        $numero = $this->input->post('numero');

        $data = array(
            'sucursal' => $sucursal,
            'fecha' => $fecha,
            'monto' => $monto,
            'numero' => $numero,
            // 'id_usuario' => $this->session->userdata('idUsuario')
        );
    
        if ( ! $this->db->insert('boletas', $data)){
            return $error = $this->db->error();
        }else{
            return 1;
        }
    }

}
?>