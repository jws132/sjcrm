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
    
<script type="text/javascript" charset="utf-8" src="/Public/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
        window.UEDITOR_HOME_URL='/Public/ueditor/';
        window.onload=function(){
            window.UEDITOR_CONFIG.imageUrl = '<?php echo U('Editor');?>';
            window.UEDITOR_CONFIG.imagePath = '/Uploads/Editor/';    
        }
        
         /**function gradeChange(){
         var objS = document.getElementById("selectId");
         var typeid = objS.options[objS.selectedIndex].typeid;
         alert(typeid);
        }**/

        $(function(){
            var selectId=$("select[name=pid] option[selected]").attr('typeid');
            $('#type').val(selectId);

            $("#selectId").change(function(){
                var type=$(this).find('option:selected').attr('typeid');
                $('#type').val(type); 
            });
        });
</script>
<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5><?php echo ($meta_title); ?></h5>
             <div class="buttons">
                 <a class="btn btn-mini"  href="javascript:history.go(-1);">返回</a>
             </div>
           </div>
          <div class="widget-content ">
                    <form class="form-horizontal" action="<?php echo U('Add');?>" method="post" enctype="multipart/form-data" >
                                    <div class="control-group">
                                        <label class="control-label">分类</label>
                                        <div class="controls">
                                              <select name="pid" id="selectId" >
                                                   <option value="" <?php if($_GET['pid'] == ''): ?>selected<?php endif; ?> >--请选择--</option>                                   
                                                   <?php if(is_array(C("PRO_LIST_TYPE"))): $k = 0; $__LIST__ = C("PRO_LIST_TYPE");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newsType): $mod = ($k % 2 );++$k;?><option value="<?php echo ($k); ?>" disabled><?php echo ($newsType); ?></option>
                                                      <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$l): $mod = ($i % 2 );++$i; if($l['type'] == $k): ?><option value="<?php echo ($l["id"]); ?>" typeid="<?php echo ($k); ?>" <?php if($l['id'] == $_GET['pid']): ?>selected<?php endif; ?>>&nbsp;&nbsp;&nbsp;|-<?php echo ($l["title"]); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
                                              </select><input type="hidden" name="type" id="type">      
                                        </div>
                                    </div>
                               <div class="control-group">
                                        <label class="control-label">编号</label>
                                        <div class="controls">
                                            <input type="text" name="number" style="width:480px;">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">名称</label>
                                        <div class="controls">
                                            <input type="text" name="title" style="width:480px;">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">规格</label>
                                        <div class="controls">
                                            <input type="text" name="spec" style="width:480px;">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">图片</label>
                                        <div class="controls">
                                            <input type="file" name="pic" />
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">内容</label>
                                        <div class="controls">
                                            <script type="text/javascript">
                                                  UE.getEditor('conter');
                                            </script>
                                            <textarea name="conter" id="conter" style="height:400px; width:80%;"></textarea>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">是否开启</label>
                                        <div class="controls">
                                            <label><input type="radio" name="status" value="1" checked="checked"> 开启</label>
                                            <label><input type="radio" name="status" value="0"> 关闭</label>
                                        </div>
                                    </div>
                               <div class="form-actions">
                               
                               <input type="hidden" name="p" value="2">
                               <input type="hidden" name="lang" value="<?php echo ($langSet); ?>">
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