<?php
namespace Home\Controller;
use Think\Controller;

class IndexController extends Controller {

    public function _initialize(){
        /* 读取数据库中的配置 */
        $config =   D('Config')->lists();
        C($config); //添加配置
    }

    public function index(){
        $this->display();
    }

}