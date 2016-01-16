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
 * 幻灯管理操作类
 */
class SlideController extends CommonController {

    /**
     * 幻灯列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
	public function index() {
	    $lists=D('Slide')->dataList();
	    $this->assign("lists",$lists);
	    $this->display();
    }

    /**
     * 新增编辑幻灯
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
      $list=D('type')->typeClass('Slide');
    	$id=I('id',0,'intval');
    	if(IS_POST){
          if($id){
              if (D("Slide")->updateSlide($id) > 0) {
                $this->success('操作成功！', U('index'));
               } else {
                $this->error('操作失败！', U('index'));
              }
           } else {
               if (D("Slide")->updateSlide() > 0) {
                $this->success('操作成功！', U('index'));
               } else {
                $this->error('操作失败！', U('index'));
              }           
           }
    	}else{
        $info=D('Slide')->getId($id);
    	}
	    $this->assign("list",$list);
        $this->assign("info",$info);
	    $this->display();
    }


    /**
     * 删除幻灯ID
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id = I('id');
        if(D('Slide')->delId($id)){
            $this->success('操作成功！', U('index'));
         } else {
            $this->error('操作失败！', U('index'));
        }
    }


}