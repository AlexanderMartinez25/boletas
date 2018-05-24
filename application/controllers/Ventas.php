<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Description: Ventas controller class
 * This is only viewable to those members that are logged in
 */
 class Ventas extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->_check_isvalidated();
        $this->load->model('sucursales_model');
        $this->load->model('ventas_model');
        
        /* Load form helper */ 
        $this->load->helper(array('form'));

        /* Load form validation library */ 
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="text-danger"><i class="fa fa-info-circle"/> ', '</div>');
    }
    
    public function index(){
        $data['ruta'] = 'Ventas';
        $data['titulo'] = 'Ventas';
        $sucursales = $this->sucursales_model->get_sucursales();

        $this->load->view('layouts/header',$data);
        $this->load->view('layouts/sidebar',$data);
        $this->load->view('boletas/ventas_view',['sucursales' => $sucursales]);
        $this->load->view('layouts/footer',$data);
    }
    
    public function get()
    {
        $result = $this->ventas_model->get_ventas();
        var_dump($result);
    }
    // consultar datos
    public function process(){
        
        $this->form_validation->set_rules('start', 'Fecha Inicial', 'required');
        $this->form_validation->set_rules('end', 'Fecha Final', 'required');
        $this->form_validation->set_rules('sucursal', 'Sucursal', 'required');

        header('Content-type: application/json; charset=utf-8');
        if ($this->form_validation->run() == FALSE){
            // indicamos que hay errores de entrada en los inputs
            $info = array('error'=>1, 'errores' => validation_errors());
            echo json_encode($info);

        }else{
            $result = $this->ventas_model->get_ventas();

            $info = array('error'=>0, 'ventas' => $result);
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