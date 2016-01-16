<?php
// +----------------------------------------------------------------------
// | TP-Admin [ 多功能后台管理系统 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014-2015 http://www.jz07.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 蒋文书 <jiangwenshu1990@126.com>
// +----------------------------------------------------------------------


namespace Admin\Controller;
use Admin\Controller\CommonController;

/**
 * 缓存操作
*/
class CacheController extends CommonController {
	public function index() {
    $caches = array(
      "HomeCache"	 => array("name" => "网站前台缓存文件", "path" => APP_PATH . C("DEFAULT_GROUP")."Runtime/"),
      "AdminCache" => array("name" => "网站后台缓存文件", "path" => APP_PATH . "Admin/Runtime/"),
      );
    foreach ($caches as $val) {
      if (isset($val['path'])) {
        $this->delDirAndFile($val['path']);
      }
    }
    $this->success('缓存清理成功！',__MODULE__.'/Main/index');
  }



/**
* 删除目录及目录下所有文件或删除指定文件
* @param str $path   待删除目录路径
* @param int $delDir 是否删除目录，1或true删除目录，0或false则只删除文件保留目录（包含子目录）
* @return bool 返回删除状态
*/
protected  function delDirAndFile($path, $delDir = FALSE) {
  $message = "";
  $handle = opendir($path);
  if ($handle) {
    while (false !== ( $item = readdir($handle) )) {
      if ($item != "." && $item != "..") {
        if (is_dir("$path/$item")) {
          $msg = delDirAndFile("$path/$item", $delDir);
          if ( $msg ){
            $message .= $msg;
          }
        } else {
          $message .= "删除文件" . $item;
          if (unlink("$path/$item")){
            $message .= "成功<br />";
          } else {
            $message .= "失败<br />";
          }
        }
      }
    }
    closedir($handle);
    if ($delDir){
      if ( rmdir($path) ){
        $message .= "删除目录" . dirname($path) . "<br />";
      } else {
        $message .= "删除目录" . dirname($path) . "失败<br />";
      }


    }
  } else {
    if (file_exists($path)) {
      if (unlink($path)){
        $message .= "删除文件" . basename($path) . "<br />";
      } else {
        $message .= "删除文件" + basename($path) . "失败<br />";
      }
    } else {
      $message .= "文件" + basename($path) . "不存在<br />";
    }
  }
  return $message;
}

}