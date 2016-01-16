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

class ModelModel extends Model {

    /**
     * 模型列表
     * @return $
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function dataList(){
        $list = $this->where('status = 1')->order('sort asc, id desc')->select();
        return $list;
    }
   
    /**
     * 新增模型
     * @return $has_content是否有内容
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function add(){     
        //创建数据对象
        $data = M('model')->create();
        if(!$data){
            $this->error='创建数据对象错误!';
        }
        //表前缀
        $dbPrefix = C("DB_PREFIX");
        $modelid = M('model')->add($data);
        if(empty($modelid)){
          $this->error='获取模型ID错误!';
        }
        $modelFieldInsert = file_get_contents( APP_PATH . 'Data/modelFieldInsert.sql');
        $sqlContent = str_replace(array('@jwscms@','@modelid@'), array($dbPrefix, $modelid), $modelFieldInsert);
        return $this->sql_execute($sqlChannel);
    }

    /**
     * 获取模型
     * @return id $id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function getId($id){
        //ID是否为空
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
       return $this->find($id);
    }

    /**
     * 更新模型
     * @return 
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */ 
    public function update(){
        //创建数据对象
        $data = $this->create();
        if(!$data){
            $this->error='创建数据对象错误!';
        }
        return $this->save($data);
    }

    /**
     * 删除模型
     * @return 
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */ 
    public function del($id){
        //ID是否为空
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
        M('model_field')->where(array('model_id' => $id))->delete();
        return $this->where(array('model_id' => $id))->delete();
    }

    /**
     * 模型字段状态
     * @return fieldid  ID字段 ，status  状态
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */ 
    public function status($fieldid,$status){
        return M('model_field')->where(array('field_id' => $fieldid))->save(array('status' => $status));
    }

    /**
     * 新增模型字段
     * @return id $id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function addField(){
       //创建数据对象
        $data = M('model_field')->create();
        if(!$data){
            $this->error='创建数据对象错误!';
        }
        $attrId=M('model_field')->add($data);
        if(!empty($attrId)){
            $this->error='保存无法获取字段模型ID';
        }
        $info=array(
            'attr_id'=>$attrId,
            'model_id'=>$data['model_id'],
            'model_name'=>$data['field'],
            'model_value'=>$data['name'],
        );
       return  M('model_attr')->add($info);
    }

    /**
     * 获取模型字段
     * @return id $id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */

    public function infoField($id){
        //ID是否为空
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
       return M('model_field')->find($id);
    }

    /**
     * 更新模型字段
     * @return 
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */ 
    public function updateField(){
        //创建数据对象
        $data = M('model_field')->create();
        if(!$data){
            $this->error='创建数据对象错误!';
        }
        return M('model_field')->save($data);
    }

    /**
     * 删除模型字段ID
     * @return id $id
     * @author 蒋文书 <jiangwenshu1990@126.com>
     */
    public function delField($id){
        //ID是否为空
        if(empty($id)){
            $this->error='请选择要操作的数据!';
        }
        M('model_field')->where(array('field_id' => $id))->delete();
        return M('model_attr')->where(array('attr_id' => $id))->delete();
    }

    /**
     * 执行SQL
     * @param type $sqls SQL语句
     * @return boolean
     */
    protected function sql_execute($sqls) {

        $sqls = $this->sql_split($sqls);
        if (is_array($sqls)) {
            foreach ($sqls as $sql) {
                if (trim($sql) != '') {
                    $this->execute($sql, true);
                }
            }
        } else {
            $this->execute($sqls, true);
        }
        return true;
    }

    /**
     * SQL语句预处理
     * @param type $sql
     * @return type
     */
    public function sql_split($sql) {
        if (mysql_get_server_info() > '4.1' && C('DB_CHARSET')) {
            $sql = preg_replace("/TYPE=(InnoDB|MyISAM|MEMORY)( DEFAULT CHARSET=[^; ]+)?/", "ENGINE=\\1 DEFAULT CHARSET=" . C('DB_CHARSET'), $sql);
        }
        $sql = str_replace("\r", "\n", $sql);
        $ret = array();
        $num = 0;
        $queriesarray = explode(";\n", trim($sql));
        unset($sql);
        foreach ($queriesarray as $query) {
            $ret[$num] = '';
            $queries = explode("\n", trim($query));
            $queries = array_filter($queries);
            foreach ($queries as $query) {
                $str1 = substr($query, 0, 1);
                if ($str1 != '#' && $str1 != '-')
                    $ret[$num] .= $query;
            }
            $num++;
        }
        return $ret;
    }



}
 