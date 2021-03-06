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
use Think\Upload;

/**
 * 产品管理类
 */

class ProductController extends CommonController {

    /**
     * 产品列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function index(){
        $list = D('Product')->dataList();
        $this -> assign("list", $list);
        $this -> display();
    }

    /**
     * 编辑模型
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
        $channelList=D('channel')->channelName(CONTROLLER_NAME);
        $id=I('id',0,'intval');
        $channelId=I('channelId',0,'intval');
        if(IS_POST){
           if($id){
                if(D('Product')->update($id) !== false){
                    $this->success('操作成功！',U('index'));
                }else{
                    $this->error('操作失败！',U('index'));
                }           
           }else{
                 if(D('Product')->update()){
                    $this->success('操作成功！',U('index'));
                }else{
                    $this->error('操作失败！',U('index'));
                }             
           }
        }else{
            $this->info=D('Product')->getId($id);
        }
        $this -> assign('channelList',$channelList);
        $this -> display(); 
    } 

    /**
     * 删除模型
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id=I('get.id',0,'intval');
        if(D('Product')->del($id)){
            $this->success('删除成功！',U('index'));
        }else{
            $this->error('删除失败！');
        }
    }

    /**
     * 字段模型排序
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
     public function sort(){
        if(IS_POST){
            foreach ($_POST['sort'] as $id => $sort) {
                M('model_field')->where(array('field_id'=>$id))->save(array('sort'=>$sort));
            }
            $this->success("排序更新成功！");
        }else{
            $this->error('排序更新失败！');
        }
     }

    /**
     * 是否禁用 
     * @return status 开启 1：开启  0：禁用
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
     public function status(){
        $fieldid = I('get.fieldid', 0, 'intval');
        $status = (int) $_GET['status'] ? 0 : 1;
        if (D('model')->status($fieldid,$status)) {
            $this->success("操作成功！");
        } else {
            $this->error("操作失败！");
        }
     }



}