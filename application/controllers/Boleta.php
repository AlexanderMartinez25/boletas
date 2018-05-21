<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Description: Boleta controller class
 * This is only viewable to those members that are logged in
 */
 class Boleta extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->_check_isvalidated();
        $this->load->model('sucursales_model');
        /* Load form helper */ 
        $this->load->helper(array('form'));

        /* Load form validation library */ 
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="text-danger"><i class="fa fa-info-circle"/> ', '</div>');
    }
    
    public function index(){
        $data['ruta'] = 'Boleta';
        $data['titulo'] = 'Boleta';
        $sucursales = $this->sucursales_model->get_sucursales();

        $this->load->view('layouts/header',$data);
        $this->load->view('layouts/sidebar',$data);
        $this->load->view('usuario/perfil_view',['sucursales'=>$sucursales]);
        $this->load->view('layouts/footer',$data);
    }
    
    // insertar datos
    public function process(){
        
        $this->form_validation->set_rules('numero', 'Número', 'required');
        $this->form_validation->set_rules('monto', 'Monto', 'required');
        $this->form_validation->set_rules('fecha', 'Fecha', 'required');
        $this->form_validation->set_rules('sucursal', 'Sucursal', 'required');

        header('Content-type: application/json; charset=utf-8');
        if ($this->form_validation->run() == FALSE){
            // indicamos que hay errores de entrada en los inputs
            $info = array('error'=>1, 'errores' => validation_errors());
            echo json_encode($info);

        }else{
            $result = $this->perfil_model->insert();

            // si $result = 1, se insertaron los datos 
            $info = array('error'=>0, 'insert' => $result);
            echo json_encode($info);
        }
    }

    
    private function _check_isvalidated(){
        if(! $this->session->userdata('validated')){
            redirect('/login');
        }
    }

 }
 ?>