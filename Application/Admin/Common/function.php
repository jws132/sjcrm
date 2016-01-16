<?php
/**
 * 递归重组节点信息为多位数组
 * @param [type] $node  [要处理的节点数组]
 * @param integer $pid [父节点ID]
 * @param [type] $node
 * To change this template use File | Settings | File Templates.
 */
function node_merge($node, $access = null, $pid=1){
    $arr=array();
    foreach( $node as $v){
    	if(is_array($access)){
    		$v['access']=in_array($v['id'], $access) ? 1 : 0 ;
    	}
        if($v['pid']==$pid){
           $v['child']= node_merge($node,$access,$v['id']);
           $arr[] = $v;

        }
    }
  return $arr;
}


/**
 * 获取模块类型
 * @param string $type 模块类型
 * @return string
 */
function get_type_name($type=0){
    $list = C('TYPE_LIST');
    return $list[$type];
}






















/**
 * 获取配置的类型
 * @param string $type 配置类型
 * @return string
 */
function get_config_type($type=0){
    $list = C('CONFIG_TYPE_LIST');
    return $list[$type];
}

/**
 * 获取配置的分组
 * @param string $group 配置分组
 * @return string
 */
function get_config_group($group=0){
    $list = C('CONFIG_GROUP_LIST');
    return $group?$list[$group]:'';
}

// 获取属性类型信息
function get_attribute_type($type=''){
    // TODO 可以加入系统配置
    static $_type = array(
        'num'  =>  array('数字'),
        'string'  =>  array('字符串'),
        'textarea'  =>  array('文本框'),
        'datetime'  =>  array('时间'),
        'bool'  =>  array('布尔'),
        'select'  =>  array('枚举'),
        'radio'  =>  array('单选'),
        'checkbox'  =>  array('多选'),
       /** 'editor'  =>  array('编辑器','editor'),
        'picture' =>  array('上传图片','picture'),
        'file' =>  array('上传附件','file'),**/
    );

    return $type?$_type[$type][0]:$_type;
}

 // 分析枚举类型字段值 格式 a:名称1,b:名称2
 // 暂时和 parse_config_attr功能相同
 // 但请不要互相使用，后期会调整
function parse_field_attr($string) {
    if(0 === strpos($string,':')){
        // 采用函数定义
        return   eval(substr($string,1).';');
    }
    $array = preg_split('/[,;\r\n]+/', trim($string, ",;\r\n"));
    if(strpos($string,':')){
        $value  =   array();
        foreach ($array as $val) {
            list($k, $v) = explode(':', $val);
            $value[$k]   = $v;
        }
    }else{
        $value  =   $array;
    }

    return $value;
}

 // 分析枚举类型配置值 格式 a:名称1,b:名称2
function parse_config_attr($string) {
    $array = preg_split('/[,;\r\n]+/', trim($string, ",;\r\n"));
    if(strpos($string,':')){
        $value  =   array();
        foreach ($array as $val) {
            list($k, $v) = explode(':', $val);
            $value[$k]   = $v;
        }
    }else{
        $value  =   $array;
    }
    return $value;
}


/**
 * 获取单页
 * @param string $group 配置分组
 * @return string
 */
function get_user($uid){
   $list = M('user')->where(array('id'=>$uid))->select();
   return $uid?$list[0]['username']:'';
}

/**
 * 获取角色
 * @param string $group 配置分组
 * @return string
 */
function get_role($uid){
   $list = M('role')->where(array('id'=>$uid))->select();
   return $uid?$list[0]['remark']:'';
}




function tree_to_array($tree, &$cat = array(), $level = 1) {
    foreach ($tree as $key => $value) {
        $temp = $value;
        if ($temp['_child']) {
            $temp['_child'] = true;
            $temp['level'] = $level;
            $cat[$value['id']] = $temp;
        } else {
            $temp['_child'] = false;
            $temp['level'] = $level;
            $cat[$value['id']] = $temp;
        }
        if ($value['_child']) {
            tree_to_array($value['_child'],$cat, ($level + 1));
        }
    }
}
 
