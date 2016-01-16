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
 * 角色管理类
 */

class AuthController extends CommonController {

    /**
     * 角色列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function index(){
        $list =  M('role')->select();
        $this -> assign('list', $list);
        $this -> meta_title = '角色列表';
        $this -> display();
    }

    /**
     * 添加角色
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function add(){
        if( M('role')->add($_POST)){
            $this->success('新增成功！',U('Admin/Auth/index'));
        }
       $this->meta_title = '新增角色';
       $this->display();

    }

    /**
     * 删除角色
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id = I('id',0,'intval');
        if(D('auth')->del($id)){
            $this->success('删除成功',U('index'));
        }else{
            $this->error('删除失败！');
        }
    }

    /**
     * 编辑角色
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
        $id = I('id',0,'intval');
        if(IS_POST){
           if(D('auth')->update()){
                $this->success('更新成功',U('index'));
            }else{
                $this->error('更新失败！');
            }
        }else{
            $this->info = D('auth')->info($id);
        }
        $this -> meta_title = '角色编辑';
        $this->display();
    }



    /**
     * 权限配置
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function role(){
        $role_id = I('role_id',0,'intval');

        $data=array();
        if(IS_POST){
            M('access')->where('role_id='.$role_id )->delete();
             foreach ($_POST['role'] as $v) {
                //获取菜单节点
                $tmp=explode('_', $v);
                    $data[]=array(
                        'role_id'=>$role_id,
                        'node_id'=>$tmp[0],
                        'level'=>$tmp[1]
                    );         
            }
            //插入新权限  addAll循环插入
            if(M('access')->addAll($data)){
                $this->success('操作成功！', "index");
            }else{
                $this->error('操作失败！');
            }
        }else{
            $menus = D("Menu")->order('sort')->field(array('id','title','pid'))->select();
            $access = M('access')->where('role_id='.$role_id)->getField('node_id',true);
            $lists = node_merge($menus,$access);
            $this->assign("role_id", $role_id);
            $this->assign("menus", $lists);
            $this -> display();
        }
 
    }

}