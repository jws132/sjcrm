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
	        <!--li><cite></cite><a href="index.html" target="rightFrame">首页模版</a><i></i></li>
	        <li class="active"><cite></cite><a href="right.html" target="rightFrame">数据列表</a><i></i></li>
	        <li><cite></cite><a href="imgtable.html" target="rightFrame">图片数据表</a><i></i></li>
	        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
	        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
	        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
	        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
	        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
	        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
	        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li-->
	        </ul>    
</section>
<div id="content">
    
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">表单</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle"><span><?php echo ($meta_title); ?></span></div>
		<form action="<?php echo U('Add');?>" method="post" class="from_tab">
			<ul class="forminfo">
        <li><label>上级</label>
              <div class="vocation">
                <select class="dfselect" name="pid">
                   <option value="1">顶级菜单</option>
                   <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><option value="<?php echo ($list["id"]); ?>"><?php echo ($list["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                </select>
              </div>

        </li>
				<li>
					<label>方法</label>
					<input name="name" type="text" class="dfinput" /><i>控制器</i></li>
				<li>
					<label>描述</label>
					<input name="remark" type="text" class="dfinput" /><i>多个关键字用,隔开</i></li>
				<li>
					<label>状态</label><cite><input type="radio" name="status" value="1" checked="checked"> 开启&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="status" value="0"> 关闭</cite></li>
				<li>
        <li><label>排序</label>
            <input type="text" name="sort" value="10" class="dfinput">
        </li>
        <li>
					<label>&nbsp;&nbsp;</label>
					<button class="btn btn-primary" type="submit">保存</button>
				</li>
			</ul>

		</form>
	</div>


</div> 
  <script type="text/javascript">
	  $('.tablelist tbody tr:odd').addClass('odd');
	  $('.leftmenu').css('height',$(window).height()-88 +'px');  

	  /**点击一级栏目获取二级栏目菜单**/
	  $('#nav li').click(function(){
	  	 $(this).addClass('selected').siblings().removeClass("selected");
	  	 var dataId=$(this).attr('data-id');
         menuson(dataId);
	  })

      menuson(2);
	  function menuson(dataId){
	  	var menuHtml;
	  	$.ajax({    
			    url:'<?php echo U('Index/adminMenu');?>',// 跳转到 action    
			    data:{'pid':dataId},    
			    type:'post',    
			    cache:false,    
			    dataType:'json',    
			    success:function(data) {
			    	$.each(data,function(i) { 
			    		console.log(data);
			    		 menuHtml +="<li><cite></cite><a href=\"index.html\" class=\"menuName\" />"+data[i].title+"</a><i></i></li>";
                    }); 
                    $('.menuson').html(menuHtml);
			    },error : function() {    
			          console.log("异常！");    
			    }    
		 }); 
	  }
	</script>
</body>
</html>