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

class MenuModel extends Model {

    protected $tableName = 'node';

    public function accessList() {
        $sql = "SELECT node.*, group.id as b_id, group.title as b_title, group.name as b_name, group.sort as b_sort, group.status as b_stutas FROM  {C('DB_PREFIX')}node AS node, {C('DB_PREFIX')}group AS group WHERE node.level=2 AND node.group_id=group.id AND node.status=1 ORDER BY group.id ASC, node.sort desc";
        $list = $this->query($sql);
        return $list;
    }

    public function groupList() {
        $list = $this->where("pid = 0 and status = 1")->order("sort desc")->select();
        return $list;
    }

    public function nodeList() {
        $nodes = $this->order("sort asc")->select();
        $list = node_merge($nodes);
        return $list;
    }

    public function updateNode($id = null){
       $nodes=array();
       $data = $this->create();
       if($id) {
            $nodes = D('menu')->where("id = %d", $id)->save($data);
       }else{
            $nodes = $this->add($data);
       }  
       return $nodes;
    }



    public function getNode($nid) {
        $node = $this->find($nid);
        return $node;
    }


    public function delNode($nid) {
        $nid = $_GET['nid'];
        return $this->where("id = %d", $nid)->delete();
    }

    /*
    删除节点和子节点
    */
    public function drop_nodes( $nid ) {
        $childs = $this->where( array( 'pid' => $nid ) )->select();
        $result = $this->where("id = %d", $nid)->delete();
        if ( is_array($childs) && !empty($childs) ) {
              foreach ($childs as $key => $child) {
                $this->drop_nodes( $child['id'] );
            }
        }
        return $result;
    }


    


}