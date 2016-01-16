<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Admin/css/style.css" />
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 

</head>
<body>
<header style="background:url('/Public/Admin/img/topbg.gif') repeat-x; height:88px;">
	 <div class="topleft"><a href="main.html" target="_parent"><img src="/Public/Admin/img/logo.png" title="系统首页" /></a></div>
    <ul class="nav" id="nav">
        <?php if(is_array($meunList)): $i = 0; $__LIST__ = $meunList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li data-id="<?php echo ($vo["id"]); ?>"><?php echo ($vo["title"]); ?></li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="/Public/Admin/img/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="login.html" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>admin</span>
    <i>消息</i>
    <b>5</b>
    </div>     
    </div>
</header>	
<section class="leftmenu">
		<div class="lefttop"><span></span>通讯录</div> 
	    	<ul class="menuson">
	        <li><cite></cite><a href="index.html" target="rightFrame">首页模版</a><i></i></li>
	        <li class="active"><cite></cite><a href="right.html" target="rightFrame">数据列表</a><i></i></li>
	        <li><cite></cite><a href="imgtable.html" target="rightFrame">图片数据表</a><i></i></li>
	        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
	        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
	        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
	        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
	        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
	        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
	        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li>
	        </ul>    
</section>
<div id="content">
    
<style>
     .h2 { height:13px;}
     input[type="checkbox"]{margin-top: -2px; margin-right: 3px;}
    .update-done{ line-height: 30px;}
</style>


<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="widget-box clearfix">
        <div class="widget-title bg_lo"> <span class="icon"> <i class="icon-chevron-down"></i> </span>
            <h5 class="h2"><input type="checkbox" name="access[]" value="<?php echo ($vo["id"]); ?>_1" level="1" <?php if($vo['access']): ?>checked="checked"<?php endif; ?> /><?php echo ($vo["title"]); ?> &nbsp;&nbsp;<a href="<?php echo U('Admin/Node/Add',array('pid'=>$vo['id'],'level'=>I('get.level',2)));?>">添加菜单</a></h5>
        </div>
        <?php if(is_array($vo["child"])): $i = 0; $__LIST__ = $vo["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ac): $mod = ($i % 2 );++$i;?><div class="widget-content nopadding updates in collapse" style="height: auto;">
            <div class="new-update clearfix">
                  <div class="update-done">
                      <strong><input type="checkbox" name="access[]" value="<?php echo ($ac["id"]); ?>_2" level="2" <?php if($ac['access']): ?>checked="checked"<?php endif; ?> /><?php echo ($ac["title"]); ?> &nbsp;&nbsp;<a href="<?php echo U('Admin/Node/Add',array('pid'=>$ac['id'],'level'=>I('get.level',3)));?>">添加菜单</a></strong>
                      <span><?php if(is_array($ac["child"])): $i = 0; $__LIST__ = $ac["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$f): $mod = ($i % 2 );++$i;?><input type="checkbox" name="access[]" value="<?php echo ($f["id"]); ?>_3" <?php if($f['access']): ?>checked="checked"<?php endif; ?> /><?php echo ($f["title"]); ?>&nbsp;&nbsp;&nbsp;<?php endforeach; endif; else: echo "" ;endif; ?></span>     
                  </div>
            </div>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>
    </div><?php endforeach; endif; else: echo "" ;endif; ?>




<!--div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5><?php echo ($meta_title); ?></h5>
             <div class="buttons">
             <?php if(($level == 0)): ?><a class="btn"  href="<?php echo U('Admin/Node/Add',array('pid'=>I('get.pid',0),'level'=>I('get.level',1)));?>">添加菜单</a>
              <?php elseif(($level == 1)): ?>
              <a class="btn"  href="<?php echo U('Admin/Node/Add',array('pid'=>I('get.pid',0),'level'=>I('get.level',2)));?>">添加菜单</a>
              <?php elseif(($level == 2)): ?>
              <a class="btn"  href="<?php echo U('Admin/Node/Add',array('pid'=>I('get.pid',0),'level'=>I('get.level',3)));?>">添加菜单</a><?php endif; ?>
                 
             </div>
           </div>
          <div class="widget-content ">
            <table class="table table-bordered table-striped with-check">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>名称</td>
                    <td>描述</td>
                    <td>所属</td>
                    <td>排序</td>
                    <td>操作</td>
                </tr>
              </thead>
              <tbody>
                 <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                    <td><?php echo ($vo["id"]); ?></td>
                    <td><a href="<?php echo U('Admin/Node/index',array('pid'=>$vo['id'],'level'=>$vo['level']));?>"><?php echo ($vo["name"]); ?></a></td>
                    <td><?php echo ($vo["title"]); ?></td>
                    <td>
                      <?php if($vo['level'] == 1): ?>顶级菜单
                      <elseif condition="$vo['level'] eq 2">控制器
                      <?php elseif($vo['level'] == 3): ?>动作方法<?php endif; ?>
                    </td>
                    <td><?php echo ($vo["sort"]); ?></td>
                    <td><a href="<?php echo U('Admin/Node/Del',array('id'=>$vo['id']));?>">删除</a></td>
                    </tr><?php endforeach; endif; else: echo "" ;endif; ?>
              </tbody>
            </table>
          </div>
        </div-->

</div> 
  <script type="text/javascript">
	  $('.tablelist tbody tr:odd').addClass('odd');
	  $('.leftmenu').css('height',$(window).height()-88 +'px');  
	  $('#nav li').click(function(){
	  	 $(this).addClass('selected').siblings().removeClass("selected");
	  	 var dataId=$(this).attr('data-id');
	  	 $.ajax({    
			    url:'<?php echo U('Index/adminMenu');?>',// 跳转到 action    
			    data:{'pid':dataId},    
			    type:'post',    
			    cache:false,    
			    dataType:'json',    
			    success:function(data) {
			    	console.log(data);
			    },error : function() {    
			          alert("异常！");    
			    }    
		 });  

	  })
	</script>
</body>
</html>