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

    public function insert_csv_sii($archivo) {
       
        $fila = 0;
        $data= array();

        if (($gestor = fopen('./uploads/'.$archivo['file_name'].'', "r")) !== FALSE) {
            while (($datos = fgetcsv($gestor, 1000, ";")) !== FALSE) {
                $numero = count($datos);
                $fila++;

                if ($fila>1) { //seleccionamos solo los valores y no lo nombres del campo
                    for ($c=0; $c < $numero; $c++) {
                        switch ($c) {
                            case '0':
                                $data["numero"] = $datos[$c];
                            break;
                            case '1':
                                $data["tipo_documento"] = $datos[$c];
                            break;
                            case '2':
                                $data["tipo_compra"] = $datos[$c];
                            break;
                            case '3':
                                $data["rut_proveedor"] = $datos[$c];
                            break;
                            case '4':
                                $data["razon_social"] = $datos[$c];
                            break;
                            case '5':
                                $data["folio"] = $datos[$c];
                            break;
                            case '6':
                                $data["fecha_documento"] = date("Y-m-d", strtotime(str_replace('/', '-', $datos[$c])));
                            break;
                            case '7':
                                $data["monto_exento"] = $datos[$c];
                            break;
                            case '8':
                                $data["monto_neto"] = $datos[$c];
                            break;
                            case '9':
                                $data["monto_iva_recuperable"] = $datos[$c];
                            break;
                            case '10':
                                $data["monto_iva_no_recuperable"] = $datos[$c];
                            break;
                            case '11':
                                $data["cod_iva_no_recuperable"] = $datos[$c];
                            break;
                            case '12':
                                $data["monto_total"] = $datos[$c];
                            break;
                            case '13':
                                $data["monto_neto_activo_fijo"] = $datos[$c];
                            break;
                            case '14':
                                $data["iva_activo_fijo"] = $datos[$c];
                            break;
                            case '15':
                                $data["iva_uso_comun"] = $datos[$c];
                            break;
                            case '16':
                                $data["impto_sin_derecho_credito"] = $datos[$c];
                            break;
                            case '17':
                                $data["iva_no_retenido"] = $datos[$c];
                            break;
                            case '18':
                                $data["tabacos_puros"] = $datos[$c];
                            break;
                            case '19':
                                $data["tabacos_cigarrillos"] = $datos[$c];
                            break;
                            case '20':
                                $data["tabacos_elaborados"] = $datos[$c];
                            break;
                            case '21':
                                $data["NCE"] = $datos[$c];
                            break;
                            case '22':
                                $data["codigo_otro_impuesto"] = $datos[$c];
                            break;
                            case '23':
                                $data["valor_otro_impuesto"] = $datos[$c];
                            break;
                            case '24':
                                $data["tasa_otro_impuesto"] = $datos[$c];
                                $this->db->insert('documento_sii', $data);
                                // echo $this->db->affected_rows();
                            break;
                            default:
                                # code...
                                break;
                        }
                    }
                }
                
                
            }
            
            fclose($gestor);
            return $this->db->affected_rows();
        }
    }

    public function insert_csv_sistema($archivo) {
       
        $fila = 0;
        $data= array();

        if (($gestor = fopen('./uploads/'.$archivo['file_name'].'', "r")) !== FALSE) {
            while (($datos = fgetcsv($gestor, 1000, ";")) !== FALSE) {
                $numero = count($datos);
                $fila++;

                if ($fila>1) { //seleccionamos solo los valores y no lo nombres del campo
                    for ($c=0; $c < $numero; $c++) {
                        switch ($c) {
                            case '0':
                                $data["numero"] = $datos[$c];
                            break;
                            case '1':
                                $data["correl"] = $datos[$c];
                            break;
                            case '2':
                                $data["fecha"] = date("Y-m-d", strtotime(str_replace('/', '-', $datos[$c])));
                            break;
                            case '3':
                                $data["proveedor"] = $datos[$c];
                            break;
                            case '4':
                                $data["rut"] = $datos[$c];
                            break;
                            case '5':
                                $data["exento"] = str_replace('.', '', $datos[$c]);
                            break;
                            case '6':
                                $data["afecto"] = str_replace('.', '', $datos[$c]);
                            break;
                            case '7':
                                $data["iva_cd"] = str_replace('.', '', $datos[$c]);
                            break;
                            case '8':
                                $data["iva_sd"] = str_replace('.', '', $datos[$c]);
                            break;
                            case '9':
                                $data["otros_impuestos"] = str_replace('.', '', $datos[$c]);
                            break;
                            case '10':
                                $data["total"] = str_replace('.', '', $datos[$c]);
                                $this->db->insert('documento_sistema', $data);
                            break;
                            default:
                                # code...
                                break;
                        }
                    }
                }
                
                
            }
            fclose($gestor);
            return $this->db->affected_rows();
            
        }
    }

    public function analizar_documentos()
    {   
        // consultamos los datos del sii
        $query_sii = $this->db->get('documento_sii');

        foreach ($query_sii->result() as $row)
        {
            // consultamos los datos del sistema donde el folio del SII sea igual al numero en SISTEMA
            $this->db->WHERE('numero='.$row->folio);
            $query_sistema = $this->db->get('documento_sistema');
            
            // esto indica si se encuentra en ambos documentos
            if($row_sistema = $query_sistema->row()){

                // si las fechas no coinciden
                if (!($row_sistema->fecha==$row->fecha_documento)) {
                    echo '<br>error en fecha '.$row->folio;
                
                // si los exentos no son iguales
                }if (!($row_sistema->exento==$row->monto_exento)) {
                    echo '<br>error en exento '.$row->folio;

                // si el monto afecto no son iguales
                }if (!($row_sistema->afecto==$row->monto_neto)) {
                    echo '<br>error en monto afecto '.$row->folio;

                // si el IVA recuperable no son iguales
                }if (!($row_sistema->iva_cd==$row->monto_iva_recuperable)) {
                    echo '<br>error en monto IVA CD '.$row->folio;
                }
                // si el IVA no recuperable no son iguales
                if (!($row_sistema->iva_sd==$row->monto_iva_no_recuperable)) {
                    echo '<br>error en monto IVA SD '.$row->folio;
                }

                // si el valor_otro_impuesto no son iguales
                if (!($row_sistema->otros_impuestos==$row->valor_otro_impuesto)) {
                    echo '<br>error en Valor Otros Impuestos '.$row->folio;
                }

                // si el monto_total no son iguales
                if (!($row_sistema->total==$row->monto_total)) {
                    echo '<br>error en Monto total '.$row->folio;
                }

                // si el monto_total no son iguales
                if (!($row_sistema->afecto==$row->monto_neto_activo_fijo)) {
                    echo '<br>error en monto_neto_activo_fijo '.$row->folio;
                }
                
            }else {
                echo '<br>folio del sii no se encuentra en sistema: '.$row->folio;
                
            }

            
        }

echo 'Total Results: ' . $query_sii->num_rows();


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