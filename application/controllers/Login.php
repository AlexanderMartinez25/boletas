<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Description: Login controller class
 */
class Login extends CI_Controller{
    
    function __construct(){
        parent::__construct();
        $this->_check_isvalidated();
        /* Load form helper */ 
        $this->load->helper(array('form'));

        /* Load form validation library */ 
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="text-danger"><i class="fa fa-info-circle"/> ', '</div>');
    }

    public function index(){
        $data['ruta'] = 'Login';
        $data['titulo'] = 'Inicio Sessión';
        
        $this->load->view('layouts/header',$data);
        $this->load->view('login_view');
        $this->load->view('layouts/footer',$data);
        
    } 

    public function process(){
        header('Content-type: application/json; charset=utf-8');
        
        $this->form_validation->set_rules('password', 'Contraseña', 'required|min_length[4]|max_length[20]');
        $this->form_validation->set_rules('email', 'Email', 'required');

        // si existen erorres de entrada -> mostralos
        if ($this->form_validation->run() == FALSE){
        
            $info = array('error'=>1, 'errores' => validation_errors());
            echo json_encode($info);

        }else{
    
            // Load the model
            $this->load->model('login_model');
            // Validate the user can login
            $result = $this->login_model->validate();
            
            // Now we verify the result
            if(! $result){
                // If user did not validate, then show them login page again
                $info = array('error'=>2);
                echo json_encode($info);
                
            }else{
                // If user did validate, 
                // Send them to members area
                $info = array('error'=>0, 'ruta' =>  base_url().'perfil');
                echo json_encode($info);
                
            }   
        }
         
    }

    private function _check_isvalidated(){
        if($this->session->userdata('validated')){
            redirect('/perfil');
        }
    }
}
?>