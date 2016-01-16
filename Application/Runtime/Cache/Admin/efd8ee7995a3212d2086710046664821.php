<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Admin/css/select.css" />
<link rel="stylesheet" href="/Public/Admin/css/style.css" />
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 
</head>
<body>
<header style="background:url('/Public/Admin/img/topbg.gif') repeat-x; height:88px;">
	 <div class="topleft"><a href="main.html" target="_parent"><img src="/Public/Admin/img/logo.png" title="系统首页" /></a></div>
    <ul class="nav">
	    <li><a href="default.html" class="selected"><img src="/Public/Admin/img/icon01.png" title="工作台" /><h2>工作台</h2></a></li>
	    <li><a href="imgtable.html"><img src="/Public/Admin/img/icon02.png" title="模型管理" /><h2>模型管理</h2></a></li>
	    <li><a href="imglist.html"><img src="/Public/Admin/img/icon03.png" title="模块设计" /><h2>模块设计</h2></a></li>
	    <li><a href="tools.html"><img src="/Public/Admin/img/icon04.png" title="常用工具" /><h2>常用工具</h2></a></li>
	    <li><a href="computer.html" ><img src="/Public/Admin/img/icon05.png" title="文件管理" /><h2>文件管理</h2></a></li>
	    <li><a href="tab.html" ><img src="/Public/Admin/img/icon06.png" title="系统设置" /><h2>系统设置</h2></a></li>
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
    
<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5><?php echo ($meta_title); ?></h5>
             <!--div class="buttons">
              <a class="btn btn-mini"  href="<?php echo U('Add');?>">新增</a>          
             </div-->
           </div>
          <div class="widget-content ">
            <table class="table table-bordered table-striped with-check">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>名称</td>
                    <td>发布时间</td>
                    <td>语言</td>
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
                    <td><?php if($vo['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                    <td><a href="<?php echo U('Edit',array('id'=>$vo['id'],'lang'=>$vo['lang']));?>">编辑</a> <!--a href="<?php echo U('Del',array('id'=>$vo['id']));?>">删除</a--></td>
                    </tr><?php endforeach; endif; else: echo "" ;endif; ?>
              </tbody>
            </table>
            <div class="page">
            <?php echo ($page); ?>
            </div>
          </div>
        </div>

</div> 
  <script type="text/javascript">
	  $('.tablelist tbody tr:odd').addClass('odd');
	  $('.leftmenu').css('height',$(window).height()-88 +'px');  
	</script>
</body>
</html>