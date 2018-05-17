<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Description: Home controller class
 */
class Home extends CI_Controller{
    
    function __construct(){
        parent::__construct();
    }

    public function index($url){
        if($this->session->userdata('validated')){
            redirect($url);
        }
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect('/login');
    }
}
?>