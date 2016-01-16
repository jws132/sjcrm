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

/**
 * 模块分类操作类
 */
class TypeController extends CommonController{

    /**
     * 模块分类列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function index (){
        $types = D('Type')->dataList();
        $this->assign("types", $types);
        $this->display();
    }

    /**
     * 新增模块分类
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit() {
        $id = I('id',0,'intval');
        $this -> list = M('type')->where('pid=1')->order('sort')->select();
        if (IS_POST) {
           if($id){
              if (D("Type")->updateType($id) !==false) {
                $this->success('操作成功！', "index");
              } else {
                $this->error('操作失败！');
              }
           } else {
               if (D("Type")->updateType() > 0) {
                $this->success('操作成功！', "index");
              } else {
                $this->error('操作失败！');
              }           
           }

        } else {
          $this->info =D('Type')->getId($id);
        }
        $this->display();
    }

    /**
     * 删除模块分类
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id = I('id');
        if(D('Type')->delId($id)){
          $this->success('操作成功！', U('index'));
          } else {
          $this->error('操作失败！', U('index'));
        }
    }


    

}