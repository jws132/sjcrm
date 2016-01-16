<?php
// +----------------------------------------------------------------------
// | TP-Admin [ 多功能后台管理系统 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2015 http://www.hhailuo.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: XiaoYao <476552238li@gmail.com>
// +----------------------------------------------------------------------

namespace Admin\Controller;
use Admin\Controller\CommonController;

/**
 * 链接管理操作类
 */
class LinkController extends CommonController {

    /**
     * 链接列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
	public function index() {
	    $lists=D('Link')->dataList();
	    $this->assign("lists",$lists);
	    $this->display();
    }

    /**
     * 新增编辑链接
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
      $list=D('type')->typeClass('Link');
    	$id=I('id',0,'intval');
    	if(IS_POST){
          if($id){
              if (D("Link")->update($id) > 0) {
                $this->success('操作成功！', U('index'));
               } else {
                $this->error('操作失败！', U('index'));
              }
           } else {
               if (D("Link")->update() > 0) {
                $this->success('操作成功！', U('index'));
               } else {
                $this->error('操作失败！', U('index'));
              }           
           }
    	}else{
        $info=D('Link')->getId($id);
    	}
	    $this->assign("list",$list);
      $this->assign("info",$info);
	    $this->display();
    }


    /**
     * 删除链接ID
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id = I('id');
        if(D('link')->delId($id)){
            $this->success('操作成功！', U('index'));
         } else {
            $this->error('操作失败！', U('index'));
        }
    }


}