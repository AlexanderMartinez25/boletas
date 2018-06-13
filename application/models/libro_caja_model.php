<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*  Description: Libro_caja_model class
 */
class Libro_caja_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
        
    }
    
    public function insert(){
        $this->input->post(NULL, TRUE);

        $documento = $this->input->post('documento');
        $tipo_documento = $this->input->post('tipo_documento');
        $rut_emisor = $this->input->post('rut_emisor');
        $fecha_operacion = date("Y-m-d", strtotime(str_replace('/', '-', $this->input->post('fecha_operacion'))));
        $monto_neto = $this->input->post('monto_neto');
        $iva = $this->input->post('iva');
        $m_no_gravada = $this->input->post('m_no_gravada');
        $monto_total = $this->input->post('monto_total');
        $monto_percibido = $this->input->post('monto_percibido');
        $glosa_operacion = $this->input->post('glosa_operacion');
        $entidad_relacionada = ($this->input->post('entidad_relacionada')!=1) ? 0 : 1;
        $percepcion = ($this->input->post('percepcion')!=1) ? 0 : 1;
        $plazo_pago = ($this->input->post('plazo_pago')!=1) ? 0 : 1;
        $fecha_exi = date("Y-m-d", strtotime(str_replace('/', '-', $this->input->post('fecha_exi'))));
        $monto_ingreso = $this->input->post('monto_ingreso');
        $monto_egreso = $this->input->post('monto_egreso');
        $saldo = $this->input->post('saldo');

        $data = array(
            'documento' => $documento,
            'tipo_documento' => $tipo_documento,
            'rut_emisor' => $rut_emisor,
            'fecha_operacion' => $fecha_operacion,
            'monto_neto' => $monto_neto,
            'iva' => $iva,
            'm_no_gravada' => $m_no_gravada,
            'monto_total' => $monto_total,
            'monto_percibido' => $monto_percibido,
            'glosa_operacion' => $glosa_operacion,
            'entidad_relacionada' => $entidad_relacionada,
            'percepcion' => $percepcion,
            'plazo_pago' => $plazo_pago,
            'fecha_exi' => $fecha_exi,
            'monto_ingreso' => $monto_ingreso,
            'monto_egreso' => $monto_egreso,
            'saldo' => $saldo,
            'id_usuario' => $this->session->userdata('idUsuario')
        );

        if ( ! $this->db->insert('libro_caja', $data)){
            return $error = $this->db->error();
        }else{
            return 1;
        }
    }

    public function insert_csv($archivo) {

        $fila = 1;
        if (($gestor = fopen('./uploads/'.$archivo['file_name'], "r")) !== FALSE) {
            while (($datos = fgetcsv($gestor, 1000, ",")) !== FALSE) {
                $numero = count($datos);
                $fila++;
                for ($c=1; $c < $numero; $c++) {
                    echo $datos[$c];
                    // falta hacer el explode y luego array push
                }
            }
            fclose($gestor);
        }

        // $data = array(
        //     'numero' => $documento,
        //     'id_usuario' => $this->session->userdata('idUsuario')
        // );

        // if ( ! $this->db->insert('libro_caja', $data)){
        //     return $error = $this->db->error();
        // }else{
        //     return 1;
        // }
    }
    public function get_tipo_documento() {
        $query = $this->db->get('tipo_documento');
       
        return $row = $query->result();
    }

    public function get_glosa_operacion() {
        $query = $this->db->get('glosa_operacion');
       
        return $row = $query->result();
    }
}
?>