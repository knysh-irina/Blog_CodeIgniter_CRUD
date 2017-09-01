<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller
{

    public function articles()
    {
        $config['base_url'] = 'http://localhost/ci/index.php/main/articles/';
        $config['total_rows'] =  $this->db->count_all('tbl_posts');
        $config['per_page'] = 10;
        $config['full_tag_open'] = '<h5 style="margin: 4rem;">';
        $config['full_tag_close'] = '<h5>';


        $this->pagination->initialize($config);

        $this->load->model('queries');
        $posts = $this->queries->get_articles($config['per_page'],$this->uri->segment(3));
        $this->load->view('main', ['posts' => $posts]);


}

}