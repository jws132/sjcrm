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


class ConfigController extends CommonController{

    /**
     * 设置管理
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function index(){
        /* 查询条件初始化 */
        $map = array();
        $map  = array('status' => 1,'lang'=>LANG_SET);
        $map  = array('group' => 1);
        if(isset($_GET['group'])){
            $map['group']   =   I('group',0);
        }
        if(isset($_GET['name'])){
            $map['name']    =   array('like', '%'.(string)I('name').'%');
        }

        $list = M('config')->where($map)->select();
        $this->assign('group',C('CONFIG_GROUP_LIST'));
        $this->assign('group_id',I('get.group',1));
        $this->assign('list', $list);
        $this->meta_title = '配置管理';
        $this->display();
    }


    /**
     * 新增设置
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function add(){
        if( M('config')->add($_POST)){
            $this->success('新增成功！',U('Admin/Config/index'));
        }
        $this->meta_title = '新增配置';
        $this->display();
    }

    /**
     * 编辑设置
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function edit(){
        $id=I('id',0,'intval');       
        if(IS_POST){
            if(M('config')->save($_POST)){
              $this->success('更新成功',U('Admin/Config/index'));
            }else{
                $this->error('更新失败');
            }
        }else{
            $info=M('config')->where(array('lang'=>LANG_SET))->field(true)->find($id);
            if(!$info){
                $this->error('获取配置信息错误');
            }
            $this->assign("info",$info);
        }
        $this->meta_title = '编辑配置';
        $this->display();
    }

    /**
     * 删除id设置
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id=I('id',0);
        if ( empty($id) ) {
            $this->error('请选择要操作的数据!');
        }
        if(M('config')->where(array('id' =>$id ))->delete()){
            $this->success('删除成功',U('Admin/Config/index'));
        }else{
            $this->error('删除失败!');
        }
    }
   
    // 获取某个标签的配置参数
    public function group() {
        $id     =   I('get.id',1);
        $type   =   C('CONFIG_GROUP_LIST');
        $list   =   M("Config")->where(array('status'=>1,'group'=>$id,'lang'=>'zh-cn'))->field('id,name,title,extra,value,remark,type')->order('sort')->select();
        if($list) {
            $this->assign('list',$list);
        }
        $this->assign('id',$id);
        $this->meta_title = $type[$id].'设置';
        $this->display();
    }


    /**
     * 批量保存配置
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>
     */
    public function save($config){
        if($config && is_array($config)){
            $Config = M('Config');
            foreach ($config as $name => $value) {
                $map = array('name' => $name,'lang' => 'zh-cn');
                $Config->where($map)->setField('value', $value);
            }
        }
        S('DB_CONFIG_DATA',null);
        $this->success('保存成功！');
    }

}