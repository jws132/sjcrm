﻿<?php
return array(

 /* URL规则 */
    'REWRITE_RULE' =>array(
        'list-<class_id>.html' => 'index/About',
    ),
      //预先加载的标签库
    'TAGLIB_PRE_LOAD' => 'Home\\TagLib\\JwsThink',

    'DEFAULT_FILTER' => '', //TP默认为htmlspecialchars

    'LANG_SWITCH_ON' => true,   // 开启语言包功能
    'LANG_AUTO_DETECT' => true, // 自动侦测语言 开启多语言功能后有效
    'DEFAULT_LANG'=>'zh-cn',
    'LANG_LIST'        =>'zh-cn,en-us', // 允许切换的语言列表 用逗号分隔
    'VAR_LANGUAGE'     => 'l',// 默认语言切换变量
	
  	/* 模板相关配置 */
    'TMPL_PARSE_STRING' => array(
        '__STATIC__' => __ROOT__ . '/Public/Static',
        '__IMG__'    => __ROOT__ . '/Public/' . MODULE_NAME . '/img',
        '__CSS__'    => __ROOT__ . '/Public/' . MODULE_NAME . '/css',
        '__JS__'     => __ROOT__ . '/Public/' . MODULE_NAME . '/js', 
   ),
    'URL_HTML_SUFFIX'       => 'html',  // URL伪静态后缀设置
);