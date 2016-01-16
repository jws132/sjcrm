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


class MessageController extends CommonController{

    public function index(){ 
        $count      = M('Message')->where($map)->count();// 查询满足要求的总记录数 $map表示查询条件
        $Page = new  \Think\Page($count, 10);// 实例化分页类 传入总记录数（这是根据@979137的意见修改的，这个建议非常好！）
        $show       = $Page->show();// 分页显示输出
        $list = M('Message')->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->meta_title = '单页管理';
        $this->display();
    }

    /**
     * 删除单页
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){  
        $id =I('id',0,'intval');
        if(M('Message')->where(array('id' => $id))->delete()){
            $this->success('删除成功',U('index'));
        }else{
            $this->error('删除失败！');
        }
    }

    /**
     * 
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
        $id = I('id',0,'intval');
        if(IS_POST){
           $data = D('Message')->create();
           if(D('Message')->where(array('id'=>$id))->save($data)){
                $this->success('更新成功',U('index'));
            }else{
                $this->error('更新失败！');
            }
        }else{
            $this -> info = M('Message')->find($nid);
        }
        $this -> meta_title = '编辑';
        $this->display();
    }


}