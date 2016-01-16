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
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text"><?php echo ($_SESSION['username']); ?></span><b class="caret"></b></a>
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
    <li> <a href="<?php echo U('Admin/Along/Index');?>"><i class="icon icon-th-list"></i> <span>单页管理</span> </a></li>
    <li> <a href="<?php echo U('Admin/News/Index');?>"><i class="icon icon-th-list"></i> <span>新闻管理</span> </a></li>
    <li> <a href="#"><i class="icon icon-th-list"></i> <span>产品管理</span> </a></li>
    <li> <a href="#"><i class="icon icon-th-list"></i> <span>案例管理</span> </a></li>
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
    
<script type="text/javascript" charset="utf-8" src="/Public/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
        window.UEDITOR_HOME_URL='/Public/ueditor/';
        window.onload=function(){
            window.UEDITOR_CONFIG.imageUrl = '<?php echo U('Editor');?>';
            window.UEDITOR_CONFIG.imagePath = '/Uploads/Editor/';    
        }
</script>
<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5><?php echo ($meta_title); ?></h5>
             <div class="buttons">
              <a class="btn"  href="javascript:history.go(-1);">返回</a>
             </div>
           </div>
          <div class="widget-content">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab1" data-toggle="tab">基础属性</a></li>
              <li class=""><a href="#tab2" data-toggle="tab">SEO属性</a></li>
            </ul>
             <form class="form-horizontal" method="post" action="<?php echo U('Add',array('modelId'=>($modelId),'isChannel'=>($isChannel)));?>">
            <div class="widget-content tab-content">
            <!--基础属性-->
            <div class="tab-pane active" id="tab1">
            <?php if(is_array($fields)): $i = 0; $__LIST__ = $fields;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$field): $mod = ($i % 2 );++$i; switch($field["type"]): case "channel_id": ?><div class="control-group">
                      <label class="control-label"><?php echo ($field["name"]); ?> :</label>
                      <div class="controls">
                          <select name="<?php echo ($field["field"]); ?>">
                              <option value="">请选择栏目</option>
                              <?php $_result=parse_field_attr($field['extra']);if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($key); ?>" <?php if(($field["value"]) == $key): ?>selected<?php endif; ?>><?php echo ($vo); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                          </select>
                      </div>
                    </div><?php break;?>
                 <?php case "num": ?><div class="control-group">
                      <label class="control-label"><?php echo ($field["name"]); ?> :</label>
                      <div class="controls">
                        <input type="text" placeholder="First name" name="<?php echo ($field["field"]); ?>" class="span<?php echo ($field["text_size"]); ?>">
                      </div>
                    </div><?php break;?>
                <?php case "string": ?><div class="control-group">
                      <label class="control-label"><?php echo ($field["name"]); ?> :</label>
                      <div class="controls">
                        <input type="text" placeholder="First name" name="<?php echo ($field["field"]); ?>" class="span<?php echo ($field["text_size"]); ?>">
                      </div>
                    </div><?php break;?>
                <?php case "textarea": ?><div class="control-group">
                      <label class="control-label"><?php echo ($field["name"]); ?> :</label>
                      <div class="controls">
                        <textarea name="<?php echo ($field["field"]); ?>"  class="span<?php echo ($field["text_size"]); ?>"><?php echo ($field["value"]); ?></textarea>
                      </div>
                    </div><?php break;?>
                <?php case "datetime": ?><div class="control-group">
                      <label class="control-label"><?php echo ($field["name"]); ?> :</label>
                      <div class="controls">
                       <input type="text" name="<?php echo ($field["field"]); ?>" class="text input-large time" value="" placeholder="请选择时间" />
                      </div>
                    </div><?php break;?>
                <?php case "radio": ?><div class="control-group">
                      <label class="control-label"><?php echo ($field["name"]); ?> :</label>
                      <div class="controls">
                        <?php $_result=parse_field_attr($field['extra']);if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><label class="radio">
                               <input type="radio" value="<?php echo ($key); ?>" <?php if(($field["value"]) == $key): ?>checked<?php endif; ?> name="<?php echo ($field["name"]); ?>"><?php echo ($vo); ?>
                        </label>
                        </span><?php endforeach; endif; else: echo "" ;endif; ?>
                      </div>
                    </div><?php break;?>
                <?php case "checkbox": ?><div class="control-group">
                    <label class="control-label"><?php echo ($field["name"]); ?> :</label>
                      <div class="controls">
                        <?php $_result=parse_field_attr($field['extra']);if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><label class="checkbox">
                              <input type="checkbox" value="<?php echo ($key); ?>" name="<?php echo ($field["name"]); ?>" <?php if(($field["value"]) == $key): ?>checked<?php endif; ?>><?php echo ($vo); ?>
                        </label>
                        </span><?php endforeach; endif; else: echo "" ;endif; ?>
                      </div>
                   </div><?php break;?>
                <?php case "editor": ?><div class="control-group">
                      <label class="control-label"><?php echo ($field["name"]); ?> :</label>
                      <div class="controls">
                       <script type="text/javascript">
                              UE.getEditor('<?php echo ($field["field"]); ?>');
                        </script>
                        <textarea name="<?php echo ($field["field"]); ?>" id="<?php echo ($field["field"]); ?>"><?php echo ($field["value"]); ?></textarea>             
                      </div>
                    </div><?php break;?>
                <?php default: endswitch; endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <!--基础属性-->
            <!--SEO属性-->
            <div class="tab-pane" id="tab2">

            </div>
            <!--SEO属性-->

          </div>
              <div class="form-actions">
                <!--获取模型ID-->
                <input type="hidden" name="model_id" value="<?php echo ($modelId); ?>">
                <input type="hidden" name="is_channel" value="<?php echo ($isChannel); ?>">
                <button class="btn btn-success" type="submit">保存</button>
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