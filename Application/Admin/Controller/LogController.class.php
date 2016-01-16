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
 * 后台日志管理类
*/
class LogController extends CommonController {
  public function index() {
    $page_data = D("Log")->log_list();
    $this->assign("list", $page_data["data"]);
    $this->assign("page", $page_data["page"]);
    $this->display();
  }


}