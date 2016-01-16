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

class ChannelModel extends Model {

    public function dataList($where = array(), $limit = 0){
       $channel = $this->table("channel as c")
                ->join('model m ON c.model = m.channel')
                ->field('c.*,m.name')
                ->where($where)
                ->limit($limit)
                ->order('c.sort asc, c.id desc')
                ->select();
        $list = $this->type_merge($channel);  
                
        return $list;
    }
    
    /**public function dataList(){
        $channel= M('channel')->table('channel c, model m')->field('c.id,c.parent,c.title,c.sort,c.dir,c.status,m.name')->where('c.model = m.channel')->order('c.sort asc, c.id desc')->select();
        $list = $this->type_merge($channel);
        return $list;
    }**/
   
    /**
     * 添加和编辑
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */  
    public function update($id = null){
       $type=array();
       //创建数据对象
       $data = $this -> create();
       $setting = C('IMAGES_UPLOAD');
       $this -> uploader = new Upload($setting, 'LOCAL');
       $img = $this->uploader->upload();
       if($img){
        $data['img']=$img['img']['savepath'].$img['img']['savename'];  
       }
       if($id){
            $type = M('Channel')->where("id=".$id)->save($data);
       }else{
            $type = M('Channel')->add($data);
       }  
       return $type;
    }


    /**
     * 获取栏目名称
     * @return name  获取名称
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */ 
    public function channelName($name = null){
      $list=M('Channel')->where('model="'.$name.'" and status = 1 and isdisabled = 1')->order('sort asc, id desc')->select();
      return $list;
    }

    /**
     * 删除栏目
     * @return 
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */ 
    public function del($id){
        //ID是否为空
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
        return $this->where('id ='.$id)->delete();
    }

     /**
     * 获取模型字段
     * @return model_id 模型I
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function get_model_id($model_id){
        //表前缀
        $dbPrefix = C("DB_PREFIX");
        /* 非法ID */
        if(empty($model_id) || !is_numeric($model_id)){
            return '';
        }
        $modelCount=M('model')->where(array('model_id'=>$model_id))->count();
        if(!$modelCount){
           $this->error='请选择要操作的数据ID!'; 
        }
        return M('model_field')->where(array('status'=>1,'model_id'=>$model_id))->order('sort asc')->select();

    }


    /**
     * 获取
     * @return id  获取id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */  
    public function getId($id){

       return $this->find($id);
    }


    /**
     * 递归调用栏目
     * @return $arr;
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function getChannel($channelList,$pid='0',$html='——',$level='0'){
      $arr = array();
      foreach($channelList as $val){
        if($val['pid']==$asmenu){
          $val['html'] = str_repeat($html,$level);
          $arr[] = $val;
          $arr = array_merge($arr,self::getCategory($catlist,$val['pid'],$html,$level+1));
          //dump($arr);
          //exit();
        }  
      }
      return $arr;
    }


    /**
     * 列表调用递归函数
     * @return $data 获取数据集合
     * @return pid   多级菜单pid
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */  
    protected function type_merge($data , $pid=0){
        $result=array();
        foreach ($data as $v) {
            if($v['parent']==$pid){
                $v['child']= self::type_merge($data,$v['id']);       
                $result[] = $v;
            }
        } 
       // dump($result); 
        return $result;
    }
 

   



}
 