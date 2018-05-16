<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Description: Perfil controller class
 * This is only viewable to those members that are logged in
 */
 class Perfil extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->_check_isvalidated();
        $this->load->model('usuario_model');
        /* Load form helper */ 
        $this->load->helper(array('form'));

        /* Load form validation library */ 
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="text-danger"><i class="fa fa-info-circle"/> ', '</div>');
        // redirect("ControllerB/MethodB");
    }
    
    public function index(){
        $data['ruta'] = 'Perfil';
        $data['titulo'] = 'Perfil';
        $data['datos_perfil'] = $this->usuario_model->get_profile_data();

        $this->load->view('layouts/header',$data);
        $this->load->view('layouts/sidebar',$data);
        $this->load->view('usuario/perfil_view',$data);
        $this->load->view('layouts/footer',$data);
    }
    
    public function process(){
        
        $this->form_validation->set_rules('nombre', 'Nombre', 'required');
        $this->form_validation->set_rules('apellido', 'Apellido', 'required');
        $this->form_validation->set_rules('telefono', 'Telefono', 'required');
        $this->form_validation->set_rules('region', 'Region', 'required');
        $this->form_validation->set_rules('provincia', 'Provincia', 'required');
        $this->form_validation->set_rules('comuna', 'Comuna', 'required');
        $this->form_validation->set_rules('calle', 'Calle', 'required');
        $this->form_validation->set_rules('numero', 'Número', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required');

        header('Content-type: application/json; charset=utf-8');
        if ($this->form_validation->run() == FALSE){
            // indicamos que hay errores de entrada en los inputs
            $info = array('error'=>1, 'errores' => validation_errors());
            echo json_encode($info);

        }else{
            // cargamos el modelo
            $this->load->model('usuario_model');
            // Validate the user can login
            $result = $this->usuario_model->update();

            // si $result = 1, se actualizaron los datos 
            $info = array('error'=>0, 'updated' => $result);
            echo json_encode($info);
        }
    }

    private function _check_isvalidated(){
        if(! $this->session->userdata('validated')){
            redirect('index.php/login');
        }
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect('index.php/login');
    }
 }
 ?>