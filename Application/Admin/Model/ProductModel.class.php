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

class ProductModel extends Model {


    public function dataList(){
        $list= M('product')->table('product p, channel c, user u')->field('p.id,c.title as name,p.title,p.sort,p.status,p.hits,p.createtime,u.username')->where('p.category = c.id and p.uid=u.id')->order('p.sort asc, p.id desc')->select();
        return $list;
    }
   
    /**
     * 添加和编辑
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */  
    public function update($id = null){
       $type=array();
       //创建数据对象
       $data = $this->create();
       $setting = C('EDITOR_UPLOAD');
       $this -> uploader = new Upload($setting, 'LOCAL');
       $img = $this->uploader->upload();
       if($img){
        $data['img']=$img['img']['savepath'].$img['img']['savename'];  
       }
       if($id) {
            $type = $this->where("id=".$id)->save($data);
       }else{
            $type = $this->add($data);
       }  
       return $type;
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

    /**
     * 获取
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */  
    public function getId($id){

       return $this->find($id);
    }

}
 