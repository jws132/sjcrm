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
use Think\Upload;

class RecommendModel extends Model {

    protected $_auto = array(
        array('createtime', NOW_TIME, self::MODEL_INSERT),
        array('updatetime', NOW_TIME, self::MODEL_BOTH),
    );
    /**
     * 列表
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */  
    public function dataList() {
        $list = $this->table('recommend r,model m')->field('r.*,m.name')->where('r.model=m.channel')->order('r.sort asc, r.id desc')->select();
        return $list;
    }

    /**
     * 推荐位置获取模型
     * @return name  获取名称
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */ 
    public function recommendName($name = null){
      $list=$this->where('model="'.$name.'" and status = 1 ')->order('sort asc, id desc')->select();
      return $list;
    }

    /**
     * 添加和编辑
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */  
    public function update($id = null){
       $type=array();
       $data = $this->create();
       if($id) {
            $type = $this->where("id=".$id)->save($data);
       }else{
            $type = $this->add($data);
       }  
       return $type;
    }

    /**
     * 获取
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */   
    public function getId($nid) {
        $info = $this->find($nid);
        return $info;
    }

   /**
     * 删除
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function del($id){
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
        return $this->where("id=".$id)->delete();
    }



}