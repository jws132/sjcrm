<?php
namespace Home\Controller;
use Home\Controller\IndexController;

class ArticleController extends IndexController {

    public function index(){
        $id = I('id',0,'intval');
        if(empty($id)){
            $this->error('页面不存在！');
        }
        if(!empty($id)){
            $channelInfo=D('channel')->getInfo($id);
            if(M('channel')->where('parent='.$id)->select() > 0){
                $childrenId=D('Channel')->getChildrenId($id);
                $map['channel']=array('in',$childrenId);
                $channel=M('channel')->where('status=1 and  parent='.$id)->select();   
            }  else{
                $map['channel']=$id;
                $channel=M('channel')->where('status=1 and  parent='.$channelInfo['parent'])->select();   
            }     
              $map['status']= 1 ;
              if($channelInfo['pagesize']){
                  $count      =  M('Article')->where($map)->count();// 查询满足要求的总记录数 $map表示查询条件
                  $Page       =  new  \Think\Page($count,$channelInfo['pagesize']?$channelInfo['pagesize']:10);// 实例化分页类 传入总记录数
                  $show       = $Page->show();// 分页显示输出
                  $list = M('Article')->where($map)->limit($Page->firstRow. ',' . $Page->listRows)->order('sort asc, id desc')->select();
                }else{
                  $list = M('Article')->where($map)->order('sort asc, id desc')->select();
              }

        }
        $this->assign('list', $list);
        $this->assign('page',$show);// 赋值分页输出
        $this->assign('channel', $channel);
        $this->assign('channelInfo', $channelInfo);
        $this->display($channelInfo['tpllist']);
    }


    public function content(){

        $id = I('id',0,'intval');
        if(empty($id)){
            $this->error('页面不存在！');
        }

        if(!empty($id)){
            $info=D('Article')->getId($id);
            M('Article')->where('id='.$id)->setInc('hits');
         }

       $this->assign('info', $info);
       $this->display(); 
    }
}