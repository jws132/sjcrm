<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Static/css/bootstrap.min.css" />
<link rel="stylesheet" href="/Public/Static/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="/Public/Admin/css/matrix-style.css" />
<link rel="stylesheet" href="/Public/Admin/css/matrix-media.css" />
<link href="/Public/Admin/css/font-awesome/css/font-awesome.css" rel="stylesheet" />
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 
<!--link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'-->
</head>
<body>
<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">MatAdmin</a></h1>
</div>
<!--close-Header-part-->
<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav" style="font-size:12px;">
    <li><a title="" href="<?php echo U('Admin/User/Edit',array('id'=>$userId));?>" ><i class="icon icon-user"></i>  <span class="text"><?php echo (get_user($userId)); ?></span></a>
    </li>
    <li class=""><a title="" href="/" target="_blank"><i class="icon icon-home"></i> <span class="text">前台页面</span></a></li>
    <li class=""><a title="" href="<?php echo U('Admin/Config/Group');?>"><i class="icon icon-cog"></i> <span class="text">网站设置</span></a></li>
    <li  class="dropdown" id="profile-lang" >
    <a title="" href="#" data-toggle="dropdown" data-target="#profile-lang" class="dropdown-toggle">
    <?php if($langSet == 'zh-cn'): ?><img src="/Public/Admin/img/zh-cn.png"><?php else: ?><img src="/Public/Admin/img/en-us.png" ><?php endif; ?>
    <span class="text">语言</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="?l=zh-cn"><img src="/Public/Admin/img/zh-cn.png" border="0">&nbsp;&nbsp;中文</a></li>
        <li><a href="?l=en-us"><img src="/Public/Admin/img/en-us.png" border="0">&nbsp;&nbsp;英文</a></li>
      </ul>
    </li>
    <li><a title="" href="<?php echo U('Admin/Public/Logout');?>"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
  <ul>
    <li> <a href="<?php echo U('Admin/Along/Index');?>"><i class="icon icon-font"></i> <span>单页管理</span> </a></li>
    <li> <a href="<?php echo U('Admin/News/IndexLinks');?>"><i class="icon icon-link"></i> <span>友情链接</span> </a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-list-ul"></i> <span>新闻管理</span> </a>
      <ul>
        <!--li><a href="<?php echo U('Admin/News/NewsType/Type/News/doType/Add');?>">类型管理</a></li-->
        <li><a href="<?php echo U('Admin/News/IndexNews');?>">新闻列表</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-picture"></i> <span>产品管理</span> </a>
      <ul>
        <!--li><a href="<?php echo U('Admin/News/NewsType/Type/Pro/doType/Add');?>">一级分类管理</a></li-->
        <li><a href="<?php echo U('Admin/Pro/IndexClass');?>">分类管理</a></li>
        <li><a href="<?php echo U('Admin/Pro/Index');?>">产品管理</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-credit-card"></i> <span>案例管理</span> </a>
      <ul>
        <!--li><a href="<?php echo U('Admin/News/NewsType/Type/Case/doType/Add');?>">类型管理</a></li-->
        <li><a href="<?php echo U('Admin/News/IndexCase');?>">案例列表</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-credit-card"></i> <span>留言管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Message/Index');?>">留言列表</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-user"></i> <span>用户管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Auth/Index');?>">角色管理</a></li>
        <li><a href="<?php echo U('Admin/User/Index');?>">用户管理</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>系统管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Node/Index');?>">菜单配置</a></li>
        <li><a href="<?php echo U('Admin/Config/Group');?>">网站位置</a></li>
        <!--li><a href="<?php echo U('Admin/Config/Index');?>">配置管理</a></li-->
      </ul>
    </li>
  </ul>
</div>
<!--sidebar-menu-->


<div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a class="tip-bottom" href="#" data-original-title="Go to Home"><i class="icon-home"></i> 首页</a> <a class="current" href="#"><?php echo ($meta_title); ?></a></div>
  </div>
  <div class="container-fluid">
    <!--conter-->
    
<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5><?php echo ($meta_title); ?></h5>
             <div class="buttons">
              <a class="btn btn-mini"  href="<?php echo U('AddNews',array('pid'=>I('get.pid')));?>">新增</a>          
             </div>
           </div>
          <div class="widget-content ">
            <ul class="nav nav-tabs">
              <?php if(is_array(C("NEWS_LIST_TYPE"))): $i = 0; $__LIST__ = C("NEWS_LIST_TYPE");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newsType): $mod = ($i % 2 );++$i;?><li <?php if($news_id == $key): ?>class="active"<?php endif; ?> ><a href="<?php echo U('IndexNews',array('pid'=>$key));?>"><?php echo ($newsType); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <table class="table table-bordered table-striped with-check">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>名称</td>
                    <td>发布时间</td>
                    <td>语言</td>
                    <td>操作员</td>
                    <td>状态</td>
                    <td>操作</td>
                </tr>
              </thead>
              <tbody>
                 <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                    <td><?php echo ($vo["id"]); ?></td>
                    <td><?php echo ($vo["title"]); ?></td>
                    <td><?php echo (date('Y-m-d',$vo["create_time"])); ?></td>
                    <td><?php if($vo['lang'] == 'zh-cn'): ?><img src="/Public/Admin/img/zh-cn.png"><?php else: ?><img src="/Public/Admin/img/en-us.png" ><?php endif; ?></td>
                    <td><?php echo (get_user($vo["userId"])); ?></td>
                    <td><?php if($vo['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                    <td><a href="<?php echo U('EditNews',array('id'=>$vo['id']));?>">编辑</a> | <a href="<?php echo U('delNews',array('id'=>$vo['id']));?>">删除</a></td>
                    </tr><?php endforeach; endif; else: echo "" ;endif; ?>
              </tbody>
            </table>
          </div>
        </div>

    <!--conter-->
  </div>
</div>

   <script type="text/javascript">
        $(function(){
      $(".menu").on('click',function(){
        menus($(this).attr("url"));
      });
        })

        function menus(path){
        var  url = "${request.contextPath}"+path;
          $.ajax({
        url:url,
        type:"POST",
        success:function(res){
          $("#contenthtml").html(res);
        }
      });
        }
  </script>
<script src="/Public/Static/js/bootstrap.min.js"></script> 
<script src="/Public/Admin/js/jquery.ui.custom.js"></script> 
<script src="/Public/Admin/js/matrix.js"></script>
</body>
</html>