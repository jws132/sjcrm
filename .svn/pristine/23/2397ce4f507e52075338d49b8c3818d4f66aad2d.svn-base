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

class AuthModel extends Model {

    /**
     * 删除角色
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function del($id){
        //ID是否为空
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
        //判断用户是否有该角色
        if(M('role_user')->where(array('user_id' => $id))->select()){
            $this->error='请删除或取消该角色的用户';
        }
        //删除角色在access表的数据
        M('access')->where(array('role_id' => $id))->delete();
        return M('role')->where(array('id' => $id))->delete();
    }

    /**
     * 获取角色
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function info($id){
        //ID是否为空
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
        return M('role')->find($id);
       
    }   


    /**
     * 修改角色
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function update(){
        //创建数据对象
        $data = M('role')->create();
        if(!$data){
            $this->error='创建数据对象错误!';
        }
        return M('role')->save($data);
    }
 


}
 