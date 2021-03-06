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
 * 后台菜单操作类
 */
class MenuController extends CommonController{

	
    /**
     * 菜单列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function index (){
        $nodes = D('Menu')->nodeList();
        $this->assign("menus", $nodes);
        $this->display();
    }


    /**
     * 新增菜单
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit() {
        $id = I('id',0,'intval');
        $this -> list = M('node')->where('pid=1')->order('sort')->select();
        if (IS_POST) {
           if($id){
              if (D("Menu")->updateNode($id) !== false) {
                $this->success('操作成功！', "index");
              } else {
                $this->error('操作失败！');
              }
           } else {
               if (D("Menu")->updateNode()) {
                $this->success('操作成功！', "index");
              } else {
                $this->error('操作失败！');
              }           
           }

        } else {
          $this->info =D('Menu')->getNode($id);
        }
          $this->display();
    }

    /**
     * 删除后台菜单
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id = I('id');
        if (empty($id) ) {
            $this->error('请选择要操作的数据!');
        }
        //判断该菜单下有没有子菜单，有则不允许删除
        $child = M('Node')->where(array('pid'=>$id))->field('id')->select();
        if(!empty($child)){
            $this->error('请先删除该菜单下的子菜单');
        }
        //删除该分类信息
        $res = M('Node')->delete($id);
        if($res !== false){
            $this->success('删除菜单成功！');
        }else{
            $this->error('删除菜单失败！');
        }
    }


    

}