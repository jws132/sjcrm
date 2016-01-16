<?php
/**
 * Created by JetBrains PhpStorm.
 * User: 蒋文书
 * Date: 14-12-27
 * Time: 下午8:50
 * To change this template use File | Settings | File Templates.
 */

namespace Admin\Controller;
use Think\Controller;

class NodeController extends CommonController {

	
    /**
     * 菜单列表
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function index (){
        $pid = I('pid',0,'intval');
        $this-> level = I('level',0,'intval');
        $list =  M('node')->where(array('pid'=>$pid))->order('sort')->select();
        $this->assign('list', $list);
        $this->meta_title = '菜单列表';
        $this->display();
    }

    /**
     * 新增菜单
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function add(){
        $this-> pid = I('pid',0,'intval');
        $this-> level = I('level',1,'intval');
        switch($this->level){
            case 1;
                $this->type='顶级菜单';
                break;
            case 2;
                $this->type='控制器';
                break;
            case 3;
                $this->type='动作方法';
                break;
        }
        if( M('node')->add($_POST)){
            $this->success('新增成功！',U('index'));
        }
        $this->meta_title = '新增菜单';
        $this->display();
    }

    /**
     * 删除后台菜单
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function del(){
        $id = I('id');
        if (empty($id) ) {
            $this->error('请选择要操作的数据!');
        }
        //判断该菜单下有没有子菜单，有则不允许删除
        $child = M('Node')->where(array('pid'=>$id))->field('id')->select();
        if(!empty($child)){
            $this->error('请先删除该菜单下的子菜单');
        }
        //删除该分类信息
        $res = M('Node')->delete($id);
        if($res !== false){
            $this->success('删除菜单成功！');
        }else{
            $this->error('删除菜单失败！');
        }
    }


    

}