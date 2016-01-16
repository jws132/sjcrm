<?php
// +----------------------------------------------------------------------
// | TP-Admin [ 多功能后台管理系统 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014-2015 http://www.jz07.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 蒋文书 <jiangwenshu1990@126.com>
// +----------------------------------------------------------------------

namespace Admin\Model;
use Think\Model;

class UserModel extends Model {

   /**
     * 用户列表
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function userList() {
        $sql = "SELECT user.*, role.name,role.remark,role.id as role_id FROM user AS user, role AS role, role_user as ru WHERE user.id = ru.user_id and ru.role_id = role.id ORDER BY user.id ASC";
        $list = $this->query($sql);
        return $list;
    }
   /**
     * 新增用户
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function addUser(){
        //获取用户信息
        $role = array ();
        $data = array(
            'username'=> I('username'),
            'password'=> I('password','','md5'),
            'reg_time'=>data(),
            'reg_ip'=> get_client_ip(),
            'role'=> I('role'),
        );
         $user_id = $this->add($data);
         if($user_id){
             $role=array(
                    'role_id'=> I('role'),
                    'user_id'=> $user_id
             ); 
             M('role_user')->add($role);
         }
         return true;
    }

   /**
     * 删除用户
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function delUser($id){
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
       M('role_user')->where(array('user_id'=>$id))->delete();
        return $this->delete($id);
    }

   /**
     * 获取新闻
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function info($id){
        //ID是否为空
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
        return $this->find($id);
       
    } 

    /**
     * 修改用户
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function updateUser($id){
        //创建数据对象
        $data = $this->create();
        $role=I('role');
        $data['username'] = I('username');
        $data['role'] = $role;
        $data['status']=I('status');
        if(I('password')){
             $data['password'] = I('password','','md5');
        }
        if($this->save($data)){
           if($role){
             M('role_user')->where(array('user_id'=>$id))->delete();
                    $role=array(
                            'role_id'=> $role,
                            'user_id'=> $id
                    );
                 M('role_user')->add($role);
           }
        }
        return true;
    }

    /**
     * 修改用户
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
     public function updateUserInfo($id){
        //创建数据对象
        $data = $this->create();
        return $this->where('id='.$id)->save($data);

    }


}
 