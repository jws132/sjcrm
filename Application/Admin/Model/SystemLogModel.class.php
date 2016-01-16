<?php
/**
 * Created by JetBrains PhpStorm.
 * User: 蒋文书
 * Date: 14-12-27
 * Time: 下午8:50
 * To change this template use File | Settings | File Templates.
 */

namespace Admin\Model;
use Think\Model;

class SystemLogModel extends Model {

    /**
     * 获取配置列表
     * @return array 配置数组
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>
     */
    public function login_log($username){
        $data =array(
            $data['username'] =$username,
            $data['action_ip']=>get_client_ip(),
            $data['action_time']=>time(),
        )
        $system=M('system_log')->add($data);
        if($system)
    }





}
 