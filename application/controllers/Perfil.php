<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Description: Perfil controller class
 * This is only viewable to those members that are logged in
 */
 class Perfil extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->_check_isvalidated();
        $this->load->model('perfil_model');
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
        $data['datos_perfil'] = $this->perfil_model->get_profile_data();

        // consultamos los datos demograficos de chile sin los seleccionados por el ususario
        $region_id = $data['datos_perfil']['id_region'];
        $provincia_id = $data['datos_perfil']['id_provincia'];
        $comuna_id = $data['datos_perfil']['id_comuna'];

        $regiones = $this->perfil_model->get_regiones($region_id);
        $provincias = $this->perfil_model->get_provincia($provincia_id,$region_id);
        $comunas = $this->perfil_model->get_comuna($comuna_id,$provincia_id);
        
        $this->load->view('layouts/header',$data);
        $this->load->view('layouts/sidebar',$data);
        $this->load->view('usuario/perfil_view',['regiones'=>$regiones, 'comunas'=>$comunas, 'provincias'=>$provincias]);
        $this->load->view('layouts/footer',$data);
    }
   
    public function process(){
        
        $tipo = $this->input->post('tipo_cliente');

        if ($tipo==2) {
            $this->form_validation->set_rules('nombre', 'Nombre', 'required');
            $this->form_validation->set_rules('apellido', 'Apellido', 'required');
        }else{
            $this->form_validation->set_rules('razon_social', 'Razón Social', 'required');
            $this->form_validation->set_rules('nombre_fantasia', 'Nombre de Fantasia', 'required');
        }
        
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
            // Validate the user can login
            $result = $this->perfil_model->update();

            // si $result = 1, se actualizaron los datos 
            $info = array('error'=>0, 'updated' => $result);
            echo json_encode($info);
        }
    }

    public function provincias ($id){
        
        $result = $this->perfil_model->get_provincias_by_region($id);
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($result);
        
    }

    public function comunas_by_provincia ($id){
        
        $result = $this->perfil_model->get_comunas_by_provincia($id);
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($result);
        
    }

    public function comuna ($id){
        
        $result = $this->perfil_model->get_comuna($id);
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($result);
        
    }
    
    private function _check_isvalidated(){
        if(! $this->session->userdata('validated')){
            redirect('/login');
        }
    }

 }
 ?>