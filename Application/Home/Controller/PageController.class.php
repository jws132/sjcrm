<?php
namespace Home\Controller;
use Home\Controller\IndexController;

class PageController extends IndexController {



    public function index(){
        $id = I('id',0,'intval');
        if(empty($id)){
            $this->error('页面不存在！');
        }
        if(!empty($id)){
            $channelInfo=D('channel')->getInfo($id);
            if(M('channel')->where('parent='.$id)->select() > 0){
               $channel=M('channel')->where('status=1 and  parent='.$id)->select(); 
            }else{
               $channel=M('channel')->where('status=1 and parent='.$channelInfo['parent'])->select(); 
            }
        }
        $this->assign('channel', $channel);
        $this->assign('channelInfo', $channelInfo);

        $this->display($channelInfo['tpllist']);
    }

  

}