<?php
// +----------------------------------------------------------------------
// | TP-Admin [ 多功能后台管理系统 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014-2015 http://www.jz07.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 蒋文书 <jiangwenshu1990@126.com>
// +----------------------------------------------------------------------

namespace Admin\Controller;
use Think\Controller;
class IndexController extends CommonController {
    public function index(){
        $Form = M("Channel");
        $list = $Form->order('id desc')->limit(6)->select();
        $this->assign('list', $list);
        $this->meta_title = '用户列表';
        $this->display();
    }

}