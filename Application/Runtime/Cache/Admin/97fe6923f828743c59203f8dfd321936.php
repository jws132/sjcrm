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
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text"><?php echo ($_SESSION['username']); ?></span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> 我的资料</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> 我的任务</a></li>
        <li class="divider"></li>
        <li><a href="<?php echo U('Admin/Public/Logout');?>"><i class="icon-key"></i> 退出</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">消息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> 新消息</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> 收件箱</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> 发件箱</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> 发送</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="输入搜索内容..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
  <ul>
    <li class="active"><a href="index.html"><i class="icon icon-home"></i> <span>首页</span></a> </li>
    <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>图表统计</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>插件</span></a> </li>
    <li><a href="tables.html"><i class="icon icon-th"></i> <span>数据表格</span></a></li>
    <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>网格布局</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>用户管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Auth/Index');?>">角色管理</a></li>
        <li><a href="<?php echo U('Admin/User/Index');?>">用户管理</a></li>
        <li><a href="<?php echo U('Admin/SystemLog/Index');?>">日志管理</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>系统管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Node/Index');?>">菜单配置</a></li>
        <li><a href="<?php echo U('Admin/Config/Index');?>">配置管理</a></li>
        <li><a href="<?php echo U('Admin/Model/Index');?>">模型管理</a></li>
        <li><a href="<?php echo U('Admin/Public/Logout');?>">带提示的表单</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>前台管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Channel/Index');?>">栏目管理</a></li>
        <li><a href="<?php echo U('Admin/Config/Index');?>">配置管理</a></li>
        <li><a href="<?php echo U('Admin/Model/Index');?>">模型管理</a></li>
        <li><a href="<?php echo U('Admin/Public/Logout');?>">带提示的表单</a></li>
      </ul>
    </li>


    <li><a href="buttons.html"><i class="icon icon-tint"></i> <span>按钮 &amp; 图标</span></a></li>
    <li><a href="interface.html"><i class="icon icon-pencil"></i> <span>组件</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>其他</span> </a>
      <ul>
        <li><a href="index2.html">首页</a></li>
        <li><a href="gallery.html">相册</a></li>
        <li><a href="calendar.html">日历</a></li>
        <li><a href="invoice.html">清单</a></li>
        <li><a href="chat.html">聊天</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>错误页面</span> </a>
      <ul>
        <li><a href="error403.html">403错误页面</a></li>
        <li><a href="error404.html">404错误页面</a></li>
        <li><a href="error405.html">05错误页面</a></li>
        <li><a href="error500.html">500错误页面</a></li>
      </ul>
    </li>
    <li class="content"> <span>每个月带宽</span>
      <div class="progress progress-mini progress-danger active progress-striped">
        <div style="width: 77%;" class="bar"></div>
      </div>
      <span class="percent">77%</span>
      <div class="stat">21419.94 / 14000 MB</div>
    </li>
    <li class="content"> <span>Disk Space Usage</span>
      <div class="progress progress-mini active progress-striped">
        <div style="width: 87%;" class="bar"></div>
      </div>
      <span class="percent">87%</span>
      <div class="stat">604.44 / 4000 MB</div>
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
                 <a class="btn"  href="javascript:history.go(-1);">返回</a>
             </div>
           </div>
          <div class="widget-content">
                    <form class="form-horizontal" form action="<?php echo U('EditField');?>" method="post">
                                    <div class="control-group">
                                        <label class="control-label">字段名</label>
                                        <div class="controls">
                                           <?php if($info['issystem'] == 2): ?><input type="text" name="field" value="<?php echo ($info["field"]); ?>">
                                            <span class="help-block">（请输入字段名 英文字母开头，长度不超过30）</span>
                                            <?php else: ?>
                                                <input type="text" name="field" value="<?php echo ($info["field"]); ?>" disabled><?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">字段名称</label>
                                        <div class="controls">
                                            <input type="text" name="name" value="<?php echo ($info["name"]); ?>">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">数据类型</label>
                                          <div class="controls">
                                          <?php if($info['issystem'] == 2): ?><select name="type">
                                              <option value="">----请选择----</option>
                                              <?php $_result=get_attribute_type();if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?><option value="<?php echo ($key); ?>" role="<?php echo ($type[1]); ?>" <?php if($info['type'] == $key): ?>selected="selected"<?php endif; ?> ><?php echo ($type[0]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                            </select>
                                            <?php else: ?>
                                                <input type="text" name="type" value="<?php echo get_attribute_type($info['type']);?>" disabled><?php endif; ?>

                                        </div>
                                    </div>
                                   <div class="control-group">
                                        <label class="control-label">文本宽度</label>
                                        <div class="controls">
                                        <input type="text" name="text_size" value="<?php echo ($info["text_size"]); ?>">  
                                         <span class="help-block">（编辑区域的宽度已1至12数字）</span>
                                        </div>
                                    </div>
                                   <div class="control-group">
                                        <label class="control-label">参数</label>
                                        <div class="controls">
                                        <textarea name="extra"><?php echo ($info["extra"]); ?></textarea>
                                         <span class="help-block">（布尔、枚举、多选字段类型的定义数据）</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">帮助信息</label>
                                        <div class="controls">
                                        <input type="text" name="help" value="<?php echo ($info["help"]); ?>">  
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">排序</label>
                                        <div class="controls">
                                        <input type="text" name="sort" value="<?php echo ($info["sort"]); ?>">  
                                        </div>
                                    </div>
                               <div class="form-actions">
                                <input type="hidden" name="field_id" value="<?php echo ($info["field_id"]); ?>">
                               <button class="btn btn-primary" type="submit">保存</button>
                           </div>
                     </form>
          </div>
        </div>

    <!--conter-->
  </div>
</div>


<script src="/Public/Static/js/bootstrap.min.js"></script> 
<script src="/Public/Admin/js/jquery.ui.custom.js"></script> 
<script src="/Public/Admin/js/matrix.js"></script>
</body>
</html>