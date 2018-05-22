<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*  Description: Boleta model class
 */
class Boleta_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
        
    }
    
    public function insert(){
        $this->input->post(NULL, TRUE);

        $sucursal = $this->input->post('sucursal');
        $fecha = date("Y-m-d", strtotime(str_replace('/', '-', $this->input->post('fecha'))));
        $monto = $this->input->post('monto_hide');
        $numero = $this->input->post('numero');

        $data = array(
            'sucursal' => $sucursal,
            'monto' => $monto,
            'fecha' => $fecha,
            'numero' => $numero,
            'id_usuario' => $this->session->userdata('idUsuario')
        );

        if ( ! $this->db->insert('boletas', $data)){
            return $error = $this->db->error();
        }else{
            return 1;
        }
    }

    public function validated() {
        $sucursal = $this->input->post('sucursal');
        $numero = $this->input->post('numero');

        $this->db->where('sucursal',$sucursal);
        $this->db->where('numero',$numero);
        $query = $this->db->get('boletas');
        return $query->num_rows();
    }

}
?>