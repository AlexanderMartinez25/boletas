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

        // obtenemos la suma total de todas las boletas en dicho periodo
        $this->db->select_sum('monto','total');
        $this->db->join('sucursales', 'sucursales.id_sucursal = boletas.sucursal', 'inner');
        $this->db->where('boletas.id_usuario', $this->session->userdata('idUsuario'));
        $this->db->where('fecha BETWEEN "'.$fecha_inicial.'" AND "'.$fecha_final.'"');

        // Run the query
        $query = $this->db->get('boletas');
        $row = $query->row();

        // realizamos los calculos
        $monto_neto = round($row->total/(1+0.19),2);
        $monto_neto_total = number_format($monto_neto, 2, ',', '.');
        $debito = round(($monto_neto * 0.19),2);
        $debito_fiscal =  number_format($debito, 2, ',', '.');

        // obtenemos la cantidad de bolestas en dicho periodo
        $this->db->join('sucursales', 'sucursales.id_sucursal = boletas.sucursal', 'inner');
        $this->db->where('boletas.id_usuario', $this->session->userdata('idUsuario'));
        $this->db->where('fecha BETWEEN "'.$fecha_inicial.'" AND "'.$fecha_final.'"');

        // Run the query
        $query2 = $this->db->get('boletas');
        $num_boletas = $query2->num_rows();

        $data = array(
                'monto_neto_total' => $monto_neto_total,
                'debito_fiscal' => $debito_fiscal,
                'num_boletas' => $num_boletas,
            );
        return $data;
    }

}
?>