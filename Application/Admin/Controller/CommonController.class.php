<?php
// +----------------------------------------------------------------------
// | TP-Admin [ 多功能后台管理系统 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014-2015 http://www.jz07.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 蒋文书 <jiangwenshu1990@126.com>
// +----------------------------------------------------------------------

namespace Admin\Controller;
use Think\Controller;
use Think\Upload;


class CommonController extends Controller{
   public function _initialize(){
        $config =   D('Config')->lists();
        C($config); //添加配置
        $RBAC = new \Org\Util\Rbac();
        if (C('USER_AUTH_ON') && !in_array(CONTROLLER_NAME, explode(',', C('NOT_AUTH_MODULE')))) {
            if (!$RBAC::AccessDecision()) {
                //检查认证识别号
                if (!$_SESSION[C('USER_AUTH_KEY')]) {
                    //跳转到认证网关
                    $this->error('请先登录后台管理!',__MODULE__.C('USER_AUTH_GATEWAY'));
                    // redirect(PHP_FILE . C('USER_AUTH_GATEWAY'));
                }
                    // 没有权限 抛出错误
                if (C('RBAC_ERROR_PAGE')) {
                    // 定义权限错误页面
                    D('Log')->addLog(2);
                     $this->error('您没有权限操作该项!',__MODULE__.C('RBAC_ERROR_PAGE'));
                    // redirect(C('RBAC_ERROR_PAGE'));
                } else {
                    if (C('GUEST_AUTH_ON')) {
                       $this->success('请先登录后台管理!',__MODULE__.C('USER_AUTH_GATEWAY'));
                    }
                    $this->error(L('_VALID_ACCESS_')); 
                    // 提示错误信息
                   //$this->error("您没有操作权限");
                }
            }
        }
        // 记录操作日志
        if ( !in_array(ACTION_NAME, array( 'public_session_life' )) ) {
            D('Log')->addLog(1);
        }






        /**$navList=M('node')->where(array('pid'=>1))->order('sort desc')->select();
        $meunList=M('Node')->where(array('name'=>CONTROLLER_NAME))->find();
        $this->meun=$meunList['title'];
        if($meunList){
           $meunList= M('Node')->where(array('pid'=>$meunList['id']))->field('name,title,pid')->select();
        }

        $this->assign('navList', $navList);
        $this->assign('meunList', $meunList);**/


        /* 读取数据库中的配置
        $this->assign('userId', $_SESSION['uid']);
        $this->assign('langSet', LANG_SET);
        $config =   D('Config')->lists();
        C($config); //添加配置 */
        
        /**if(!C('RBAC_SUPERADMIN') && C('ADMIN_ALLOW_IP')){
            // 检查IP地址访问
            if(!in_array(get_client_ip(),explode(',',C('ADMIN_ALLOW_IP')))){
                $this->error('403:禁止访问');
            }
        }
        $model = D("Menu");
        if($_SESSION[C('ADMIN_AUTH_KEY')]){
            $navList = $model->where(array('pid' => 1, 'status' => 1))->order('sort desc, id asc')->select();
        }else{
           $navList = $model->table( C('DB_PREFIX') . 'access as access, ' . C('DB_PREFIX') . 'node as node')->where("node.pid = 0 AND node.status = 1 AND node.id = access.node_id AND access.role_id = {$_SESSION['user_info']['role_id']} AND access.siteid=" . $this->siteid)->order('node.sort desc, node.id asc')->select();
        }
        //echo $model->getLastSql(); die();
        $this->assign('navList', $navList);
        **/
   }

   /**
     * ueditor
     * @return status 开启 1：开启  0：禁用
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function editor(){
        $setting = C('EDITOR_UPLOAD');
        $this -> uploader = new Upload($setting, 'LOCAL');
        $img  = $this->uploader->upload();
        $return = array();
        $return['url'] = $img['upfile']['savepath'].$img['upfile']['savename'];
        $title = htmlspecialchars($_POST['pictitle'], ENT_QUOTES);
        $return['title'] = $title;
        $return['original'] = $img['upfile']['name'];
        $return['state'] = ($img)? 'SUCCESS' : $this->uploader->getError();
        $this->ajaxReturn($return);
    }

   /**
     * 向浏览器返回数据json数据
     * {
     *   'url'      :'a.jpg',   //保存后的文件路径
     *   'title'    :'hello',   //文件描述，对图片来说在前端会添加到title属性上
     *   'original' :'b.jpg',   //原始文件名
     *   'state'    :'SUCCESS'  //上传状态，成功时返回SUCCESS,其他任何值将原样返回至图片上传框中
     * }
     */


   /**
     * 获取分页数量
     * @param int $count 数据总数
     * @param int $listRows 每页数量
     */
    protected function getPageLimit($count,$listRows) {

        $this->pager = new \Think\Page($count,$listRows);
        return $this->pager->firstRow.','.$this->pager->listRows;

    }

    /**
     * 分页显示
     * @param array $map 分页附加参数
     */
    protected function getPageShow($map = '') {
        if(!empty($map)){
            $map = array_filter($map);
            $this->pager->parameter = $map;
        }
        return $this->pager->show();
    }

}