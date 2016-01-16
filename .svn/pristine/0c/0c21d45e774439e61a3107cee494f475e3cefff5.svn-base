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
 * 位置推荐管理操作类
 */
class RecommendController extends CommonController {

    /**
     * 位置推荐列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
	public function index() {
	    $list=D('Recommend')->dataList();
	    $this->assign("list",$list);
	    $this->display();
    }

    /**
     * 新增编辑幻灯
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
      //模型列表
      $modelList=D('model')->dataList();
    	$id=I('id',0,'intval');
    	if(IS_POST){
          if($id){
              if (D("Recommend")->update($id) !== false) {
                $this->success('操作成功！', U('index'));
               } else {
                $this->error('操作失败！', U('index'));
              }
           } else {
               if (D("Recommend")->update()) {
                $this->success('操作成功！', U('index'));
               } else {
                $this->error('操作失败！', U('index'));
              }           
           }
    	}else{
        $this->info=D('Recommend')->getId($id);
        
    	}
      $this->assign("modelList",$modelList);
	    $this->assign("list",$list);
	    $this->display();
    }


    /**
     * 删除幻灯ID
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id = I('id');
        if(D('Recommend')->del($id)){
            $this->success('操作成功！', U('index'));
         } else {
            $this->error('操作失败！', U('index'));
        }
    }


}