<?php


/**
 * 获取单页
 * @param string $group 配置分组
 * @return string
 */
function along_type($group){
   $list = M('Along')->where(array('id'=>$group,'type'=>'along','lang'=>LANG_SET))->select();
   return $group?$list[0]['title']:'';
}


/**
 * 获取配置的分组
 * @param string $group 配置分组
 * @return string
 */
function news_list_type($group=0){
   $list = C('NEWS_LIST_TYPE');
    return $group?$list[$group]:'';
}

/**
 * 获取配置的分组
 * @param string $group 配置分组
 * @return string
 */
function pro_list_type($group=0){
    $list = C('PRO_LIST_TYPE');
    return $group?$list[$group]:'';
}

/**
 * 获取配置的分组
 * @param string $group 配置分组
 * @return string
 */
function pro_list_pid($group){

    $list = M('Pro')->where(array('p'=>1,'id'=>$group))->select();
    $info=$group?$list[0]:'';

    return $group?$list[0]['title']:'';
}

/**
 * 获取配置的分组
 * @param string $group 配置分组
 * @return string
 */
function case_list_type($group=0){
    $list = C('CASE_LIST_TYPE');
    return $group?$list[$group]:'';
}