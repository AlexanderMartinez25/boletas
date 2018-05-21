<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sucursales extends CI_Controller {

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

	public function index()
	{
		$data['ruta'] = 'Sucursales';
        $data['titulo'] = 'Sucursales';
        $sucursales = $this->sucursales_model->get_sucursales();
        
        $this->load->view('layouts/header',$data);
        $this->load->view('layouts/sidebar',$data);
        $this->load->view('sucursales_view',['sucursales'=>$sucursales]);
        $this->load->view('layouts/footer',$data);
    }
    
    // insertar nueva sucursal
    public function process(){
        
        $this->form_validation->set_rules('nombre', 'Nombre', 'required');

        header('Content-type: application/json; charset=utf-8');
        if ($this->form_validation->run() == FALSE){
            // indicamos que hay errores de entrada en los inputs
            $info = array('error'=>1, 'errores' => validation_errors());
            echo json_encode($info);

        }else{
            $result = $this->sucursales_model->insert();

            // si $result = 1, se insertaron los datos 
            $info = array('error'=>0, 'insert' => $result);
            echo json_encode($info);
        }
    }

    // editar nueva sucursal
    public function editar(){
        
        $this->form_validation->set_rules('nombre_edit', 'Nombre', 'required');

        header('Content-type: application/json; charset=utf-8');
        if ($this->form_validation->run() == FALSE){
            // indicamos que hay errores de entrada en los inputs
            $info = array('error'=>1, 'errores' => validation_errors());
            echo json_encode($info);

        }else{
            $result = $this->sucursales_model->update();

            // si $result = 1, se actualizaron los datos 
            $info = array('error'=>0, 'insert' => $result);
            echo json_encode($info);
        }
    }

    // delete nueva sucursal
    public function delete(){
        echo $result = $this->sucursales_model->delete();
    }

    public function get_sucursales(){
        header('Content-type: application/json; charset=utf-8');
        $result = $this->sucursales_model->get_sucursales();
        echo json_encode($result);
    }

    private function _check_isvalidated(){
        if(! $this->session->userdata('validated')){
            redirect('/login');
        }
    }
}
