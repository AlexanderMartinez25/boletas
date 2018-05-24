<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*  Description: Ventas model class
 */
class Ventas_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
        
    }
    
    public function get_ventas(){
        $this->input->post(NULL, TRUE);

        $fecha_inicial = date("Y-m-d", strtotime(str_replace('/', '-', $this->input->post('start'))));
        $fecha_final = date("Y-m-d", strtotime(str_replace('/', '-', $this->input->post('end'))));

        // Prep the query
        $this->db->select_sum('monto','total');
        $this->db->join('sucursales', 'sucursales.id_sucursal = boletas.sucursal', 'inner');
        $this->db->where('boletas.id_usuario', $this->session->userdata('idUsuario'));
        $this->db->where('fecha BETWEEN "'.$fecha_inicial.'" AND "'.$fecha_final.'"');
        // Run the query
        $query = $this->db->get('boletas');
        $row = $query->row();
        $monto_total = $row->total;


        $this->db->join('sucursales', 'sucursales.id_sucursal = boletas.sucursal', 'inner');
        $this->db->where('boletas.id_usuario', $this->session->userdata('idUsuario'));
        $this->db->where('fecha BETWEEN "'.$fecha_inicial.'" AND "'.$fecha_final.'"');
        // Run the query
        $query2 = $this->db->get('boletas');
        $num_boletas = $query2->num_rows();

        $data = array(
                'monto_total' => $monto_total,
                'num_boletas' =>$num_boletas,
            );
        return $data;
    }

}
?>