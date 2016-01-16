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
 * 文章管理类
 */

class ArticleController extends CommonController {

    /**
     * 文章列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function index(){
        $where = array();
        $title = I('request.title');
        $channel = I('request.channel',0,'intval');
        if(!empty($title)){
           $where['a.title'] = array('like','%'.$title.'%');
        }
        if(!empty($channel)){
            $where['a.channel']=$channel;
        }
        $channelList=M('channel')->where('status = 1 and model = "article" and isdisabled=1')->select();
        $count = D('Article')->countList($where);
        $limit = $this->getPageLimit($count,15);
        $list = D('Article')->dataList($where,$limit);
        $this -> assign("list", $list);
        $this->assign('page',$this->getPageShow($pageMaps));
        $this -> assign('channelList',$channelList);
        $this -> display();
    }

    /**
     * 编辑模型
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
        $where = array();
        $where['model']='article';
        $channelList=D('channel')->dataList($where);
        $recommendList=D('Recommend')->recommendName(CONTROLLER_NAME);
        $id=I('id',0,'intval');
        $channelId=I('channelId',0,'intval');
        if(IS_POST){
           if($id){
                if(D('Article')->update($id)!== false){
                    $this->success('操作成功！',U('index'));
                }else{
                    $this->error('操作失败！',U('index'));
                }           
           }else{
                 if(D('Article')->update()){
                    $this->success('操作成功！',U('index'));
                }else{
                    $this->error('操作失败！',U('index'));
                }             
           }
        }else{
            $info=D('Article')->getId($id);
        }
        $this -> assign('channelList',$channelList);
        $this -> assign('info',$info);
        $this -> assign('recommendList',$recommendList);
        $this -> display(); 
    } 

    /**
     * 删除模型
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id=I('get.id',0,'intval');
        if(D('Article')->del($id)){
            $this->success('删除成功！',U('Index'));
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