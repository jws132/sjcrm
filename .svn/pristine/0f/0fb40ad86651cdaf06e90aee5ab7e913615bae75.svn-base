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

class ArticleModel extends Model {

    protected $_auto = array(
        array('createtime', NOW_TIME, self::MODEL_INSERT),
        array('updatetime', NOW_TIME, self::MODEL_BOTH),
    );

    public function dataList($where = array(), $limit = 0){
        return $this->table("article as a")
                    ->join('channel as c ON a.channel = c.id')
                    ->join('user u ON a.uid=u.id')
                    ->field('a.*,u.username,c.title as name')
                    ->where($where)
                    ->limit($limit)
                    ->order('a.sort asc, a.id desc')
                    ->select();     

    }

     /**
     * 获取数量
     * @return int 数量
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function countList($where = array()){
        return $this->table("article as a")
                    ->join('channel as c ON a.channel = c.id')
                    ->join('user u ON a.uid=u.id')
                    ->field('a.*,u.username,c.title as name')
                    ->where($where)
                    ->count();
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
       $setting = C('IMAGES_UPLOAD');
       $this -> uploader = new Upload($setting, 'LOCAL');
       $img = $this->uploader->upload();
       if($img){
        $data['img']=$img['img']['savepath'].$img['img']['savename'];  
       }
       $data['uid']=$_SESSION[C('USER_AUTH_KEY')];
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
 