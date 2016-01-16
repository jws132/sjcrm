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
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text"><?php echo ($sessionUserName); ?></span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> 我的资料</a></li>
        <li class="divider"></li>
        <li><a href="<?php echo U('Admin/Public/Logout');?>"><i class="icon-key"></i> 退出</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">前台页面</span></a></li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  前台页面
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
  <ul>
    <li> <a href="<?php echo U('Admin/Along/Index');?>"><i class="icon icon-th-list"></i> <span>单页管理<?php echo C('ACTION_NAME');?></span> </a></li>
    <li> <a href="<?php echo U('Admin/News/IndexLinks');?>"><i class="icon icon-th-list"></i> <span>友情链接</span> </a></li>
    <li> <a href="<?php echo U('Admin/News/IndexNews');?>"><i class="icon icon-th-list"></i> <span>新闻管理</span> </a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>产品管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Pro/IndexClass');?>">分类管理</a></li>
        <li><a href="<?php echo U('Admin/Pro/Index');?>">产品管理</a></li>
      </ul>
    </li>
    <li> <a href="<?php echo U('Admin/News/IndexCase');?>"><i class="icon icon-th-list"></i> <span>案例管理</span> </a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>用户管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Auth/Index');?>">角色管理</a></li>
        <li><a href="<?php echo U('Admin/User/Index');?>">用户管理</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>系统管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Node/Index');?>">菜单配置</a></li>
        <li><a href="<?php echo U('Admin/Config/Group');?>">网站位置</a></li>
        <li><a href="<?php echo U('Admin/Config/Index');?>">配置管理</a></li>
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
                 <a class="btn" href="javascript:history.go(-1);">返回</a>
             </div>
           </div>
          <div class="widget-content ">
                    <form class="form-horizontal" action="<?php echo U('Admin/Config/Add');?>" method="post">
                                    <div class="control-group">
                                        <label class="control-label">配置标识</label>
                                        <div class="controls">
                                            <input type="text" name="name" class="span8">
                                            <span class="help-block blue">（用于C函数调用，只能使用英文且不能重复）</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">配置标题</label>
                                        <div class="controls">
                                            <input type="text" name="title" class="span8">
                                            <span class="help-block blue">（用于后台显示的配置标题）</span>
                                        </div>
                                    </div>
                                  <div class="control-group">
                                        <label class="control-label">排序</label>
                                        <div class="controls">
                                            <input type="text" name="sort" class="span8">
                                            <span class="help-block blue">（用于分组显示的顺序）</span>
                                        </div>
                                    </div>
                                  <div class="control-group">
                                        <label class="control-label">配置类型</label>
                                        <div class="controls">
                                            <select name="type" class="span8">
											  <?php if(is_array(C("CONFIG_TYPE_LIST"))): $i = 0; $__LIST__ = C("CONFIG_TYPE_LIST");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?><option value="<?php echo ($key); ?>"><?php echo ($type); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
								            </select>
                                            <span class="help-block blue">（系统会根据不同类型解析配置值）</span>
                                        </div>
                                    </div>
                                 <div class="control-group">
                                        <label class="control-label">配置分组</label>
                                        <div class="controls">
                                            <select name="group" class="span8">
										       <?php if(is_array(C("CONFIG_GROUP_LIST"))): $i = 0; $__LIST__ = C("CONFIG_GROUP_LIST");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$group): $mod = ($i % 2 );++$i;?><option value="<?php echo ($key); ?>"><?php echo ($group); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
										    </select>
                                            <span class="help-block blue">（配置分组 用于批量设置 不分组则不会显示在系统设置中）</span>
                                        </div>
                                    </div>
                                 <div class="control-group">
                                        <label class="control-label">配置值</label>
                                        <div class="controls">
                                            <textarea name="value" class="span8"></textarea>
                                            <span class="help-block blue">（配置值）</span>
                                        </div>
                                    </div>
                                 <div class="control-group">
                                        <label class="control-label">配置项</label>
                                        <div class="controls">
                                            <textarea name="extra" class="span8"></textarea>
                                            <span class="help-block blue">（如果是枚举型 需要配置该项）</span>
                                        </div>
                                    </div>
                                 <div class="control-group">
                                        <label class="control-label">说明</label>
                                        <div class="controls">
                                            <textarea name="remark" class="span8"></textarea>
                                            <span class="help-block blue">（配置详细说明）</span>
                                        </div>
                                    </div>
                               <div class="form-actions">
                               <button class="btn btn-primary" type="submit">保存</button>
                           </div>
                     </form>
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