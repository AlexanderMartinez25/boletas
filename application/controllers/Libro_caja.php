<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Description: Libro_caja controller class
 * This is only viewable to those members that are logged in
 */
 class Libro_caja extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->_check_isvalidated();
        $this->load->model('libro_caja_model');

        /* Load form helper */ 
        $this->load->helper(array('form', 'url'));

        /* Load form validation library */ 
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="text-danger"><i class="fa fa-info-circle"/> ', '</div>');
        // redirect("ControllerB/MethodB");
    }
    
    public function index(){
        $data['ruta'] = 'Libro de Caja';
        $data['titulo'] = 'Libro de Caja';
        $tipo_documento = $this->libro_caja_model->get_tipo_documento();
        $glosa_operacion = $this->libro_caja_model->get_glosa_operacion();
        
        $this->load->view('layouts/header',$data);
        $this->load->view('layouts/sidebar',$data);
        $this->load->view('libro_caja_view',['tipo_documento'=>$tipo_documento, 'glosa_operacion'=>$glosa_operacion]);
        $this->load->view('layouts/footer',$data);
    }
   
    public function process(){
        
        $this->form_validation->set_rules('documento', 'Documento', 'required');
        $this->form_validation->set_rules('tipo_documento', 'Tipo documento', 'required');
        $this->form_validation->set_rules('rut_emisor', 'Rut emisor', 'required');
        $this->form_validation->set_rules('fecha_operacion', 'Fecha de operacion', 'required');
        $this->form_validation->set_rules('monto_neto', 'Monto neto', 'required');
        $this->form_validation->set_rules('iva', 'IVA', 'required');
        $this->form_validation->set_rules('m_no_gravada', 'Monto operaciones exentas o no gravadas con IVA', 'required');
        $this->form_validation->set_rules('monto_total', 'Monto total', 'required|matches[m_no_gravada]');
        $this->form_validation->set_rules('monto_percibido', 'Monto percibido', 'required');
        $this->form_validation->set_rules('glosa_operacion', 'Glosa de operación', 'required');
        $this->form_validation->set_rules('monto_ingreso', 'Monto ingreso', 'required|matches[monto_percibido]');
        $this->form_validation->set_rules('monto_egreso', 'Monto egreso', 'required|matches[monto_percibido]');
        $this->form_validation->set_rules('saldo', 'Saldo', 'required');

        if ($this->input->post("plazo_pago")==1) {
            $this->form_validation->set_rules('fecha_exi', 'Fecha de exigibilidad del pago', 'required');
        }
        

        header('Content-type: application/json; charset=utf-8');
        if ($this->form_validation->run() == FALSE){
            // indicamos que hay errores de entrada en los inputs
            $info = array('error'=>1, 'errores' => validation_errors());
            echo json_encode($info);

        }else{
            $result = $this->libro_caja_model->insert();

            // si $result = 1, se actualizaron los datos 
            $info = array('error'=>0, 'insert' => $result);
            echo json_encode($info);
        }
    }

    public function analizar(){

        header('Content-type: application/json; charset=utf-8');
        $result = $this->libro_caja_model->analizar_documentos();

        // si $result = 1, se actualizaron los datos 
        $info = array('error'=>0, 'insert_csv' => $result);
        echo json_encode($info);
    }

    public function do_upload()
    {   
        $config['upload_path']    =  './uploads/';
        $config['allowed_types']  = 'csv';
        $config['max_size']       = 1000;
        $config['max_width']      = 10240;
        $config['max_height']     = 7680;

        $this->load->library('upload', $config);

        header('Content-type: application/json; charset=utf-8');

        if (! $this->upload->do_upload('documento_sii')){
            $error = array('error' => $this->upload->display_errors());
            echo json_encode($error);
            return;
        }

        // insertamos los datos en la tabla documento_sii
        $this->libro_caja_model->insert_csv_sii( $this->upload->data() );

        if (! $this->upload->do_upload('documento_sistema')){ 
            $error = array('error' => $this->upload->display_errors());
            echo json_encode($error);
            return;
        }

        // insertamos los datos en la tabla documento_sistema
        $data = $this->libro_caja_model->insert_csv_sistema( $this->upload->data() );

        // al insertar correctamente ambos documentos procedemos a analizarlos
        if ($data==1) {
            $data = array('tabla_analisis' => $this->analizar());
            echo json_encode($data);
        }

        
    }

    public function ver () {
        $data =  $this->libro_caja_model->analizar_documentos();

    }

    private function _check_isvalidated(){
        if(! $this->session->userdata('validated')){
            redirect('/login');
        }
    }

 }
 ?>