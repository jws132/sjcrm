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

class ModelController extends CommonController {

    /**
     * 模型列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function index(){
        $list =  D('model')->dataList();
        $this -> assign('list', $list);
        $this -> display();
    }
    /**
     * 编辑模型
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
        $id=I('id',0,'intval');
        if(IS_POST){
            if($id){
                if(D('model')->update($id)!== false){
                    $this->success('更新成功！',U('index'));
                }else{
                    $this->error('更新失败！',U('index'));
                }  
            }else{
                if(D('model')->update()){
                    $this->success('更新成功！',U('index'));
                }else{
                    $this->error('更新失败！',U('index'));
                }  
            }

        }else{
            $this->info=D('model')->getId($id);
        }

        $this -> meta_title = '编辑模型';
        $this -> display(); 
    } 

    /**
     * 删除模型
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id=I('get.id',0,'intval');
        if(D('model')->del($id)){
            $this->success('删除成功！',U('index'));
        }else{
            $this->error('删除失败！',U('index'));
        }
    }

    /**
     * 模型字段列表
     * @return isChannel 0:内容模型 1:栏目模型
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
     public function listField(){
        $modelId=I('modelId',0,'intval');
        $isChannel=I('isChannel',0,'intval');
        $list = M('model_field')->where(array('model_id'=>$modelId,'is_channel'=>$isChannel))->order('sort asc')->select();
        $this->assign("list", $list);
        $this -> display(); 
     }

    /**
     * 新增模型字段
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
     public function addField(){
        if(IS_POST){
            if(D('model')->addField()){
                $this->success('新增成功！',U('listField',array('modelId'=>I('modelId'),'isChannel'=>I('isChannel'))));
            }else{
                $this->error('新增失败！');
            }
        }
        $this -> modelId = I('modelId');
        $this -> isChannel = I('isChannel');
        $this -> meta_title = '新增模型字段';
        $this -> display(); 
     }

    /**
     * 编辑模型字段
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
     public function editField(){
       $id=I('id',0,'intval');
        if(IS_POST){
            if(D('model')->updateField()){
                $this->success('更新成功！',U('listField',array('modelId'=>I('modelId'),'isChannel'=>I('isChannel'))));
            }else{
                $this->error('更新失败！');
            }
        }else{
            $this->info=D('model')->infoField($id);
        }

        $this -> meta_title = '编辑字段模型';
        $this -> display(); 
     } 

    /**
     * 删除模型字段
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
     public function delField(){
       $id=I('id',0,'intval');
        if(D('model')->delField($id)){
            $this->success('删除成功！');
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