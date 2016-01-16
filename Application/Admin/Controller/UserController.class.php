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
 * 用户管理类
*/
class UserController extends CommonController{

    /**
     * 用户列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function index(){  
        $lists = D('user') -> userList();
        $this->assign("list", $lists);
        $this->display();
    }

    /**
     * 新增用户
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
        $id =I('id',0,'intval');
        //显示角色角色
        $this->list = M('role')->select();
        if(IS_POST){
            //获取到ID执行修改
            if($id){
                if(D('user')->updateUser($id) !== false){
                    $this->success('操作成功！', "index");
                }else{
                    $this->error('操作失败！');
                }
            }else{
                if(D('user')->addUser()){
                    $this->success('操作成功！', "index");
                }else{
                    $this->error('操作失败！');
                }
            }

        }else{
            $this->info=D('user')->info($id);
        }
        $this->display();
    }

    /**
     * 删除用户
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){  
        $id =I('id',0,'intval');
        $role =I('role',0,'intval');
        if(D('user')->delUser($id)){
            $this->success('删除成功',U('index'));
        }else{
            $this->error('删除失败！');
        }
    } 

    /**
     * 个人资料
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function userData(){
        $userId=$_SESSION[C('USER_AUTH_KEY')];
        if(IS_POST){
            if(D('user')->updateUserInfo($userId) > 0){
                $this->success('操作成功！',U('userData'));
            }else{
                $this->error('操作失败！');
            }
        }else{
            $info= D('user')->info($userId);
        }

        $this->assign('info',$info);
        $this->display();
    }

    /**
     * 修改密码
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function passWord(){
        $userId=$_SESSION[C('USER_AUTH_KEY')];
        $yspass=I('yspass','','md5');
        $data['password']=I('password','','md5');
        $info= D('user')->info($userId);
        if(IS_POST){
            if($yspass != $info['password']){
                $this->error('对不起！原始密码不一致？');
            }else if(I('newpass') != I('password')){
                $this->error('对不起！新密码和确认新密码不一致');
            }else{
                if(M('user')->where('id='.$userId)->save($data)){
                    $this->success('操作成功！', U('passWord'));
                }else{
                   $this->error('操作失败！'); 
                }
            }
        }
        $this->assign('info',$info);
        $this->display();
    }

    /**
     * 修改密码
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function main(){
      $this->display();
    }
} 
