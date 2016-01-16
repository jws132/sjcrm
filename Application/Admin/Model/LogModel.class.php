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
use Think\Page as Page;

/**
 * 日志操作模型
*/
class LogModel extends Model {
	public function log_list($where="1=1") {
		$count      = $this->where($where)->count();
		$Page       = new Page($count,15);
		$show       = $Page->show();
		$logs = D('log')->where($where)->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		return array("data" => $logs, "page" => $show);
	}

	public function addLog( $status = 1 ) {
		$data = array();
		$data['ip']    = get_client_ip();
		$data['date']  = date("Y-m-d H:i:s");
		$data['username'] = $_SESSION['user_info']['username'];
		$data['module'] = CONTROLLER_NAME;
		$data['action'] = ACTION_NAME;
		$data['querystring'] = U( CONTROLLER_NAME . '/' . ACTION_NAME );
		$data['status'] = $status;
		$data['userid'] = $_SESSION['user_info']['id'];
		$this->add($data);
	}

	public function loginLog( $status = 1 ) {

	}
}