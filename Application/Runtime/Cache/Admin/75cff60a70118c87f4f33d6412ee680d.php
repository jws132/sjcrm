<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Admin/css/style.css" />
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 

</head>
<body scroll="no" style="overflow:hidden;">
<header style="background:url('/Public/Admin/img/topbg.gif') repeat-x; height:88px;">
	 <div class="topleft"><a href="main.html" target="_parent"><img src="/Public/Admin/img/logo.png" title="系统首页" /></a></div>
    <ul class="nav" id="nav">
        <?php if(is_array($navList)): $i = 0; $__LIST__ = $navList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li onclick="_M(<?php echo ($vo["id"]); ?>,'/index.php/Admin/<?php echo ($vo["module"]); ?>/<?php echo ($vo["action"]); ?>')"><?php echo ($vo["title"]); ?></li><?php endforeach; endif; else: echo "" ;endif; ?>
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
<section class="leftmenu" style="background-color:#f0f9fd;"></section>
<div id="content">
   <iframe name="right" id="rightMain" src="" frameborder="false" scrolling="auto" width="100%" height="auto" allowtransparency="true"></iframe>

    <!--content-->
</div> 
  <script type="text/javascript">
	  $('.tablelist tbody tr:odd').addClass('odd');
	  $('.leftmenu').css('height',$(window).height()-88 +'px'); 
      $('#rightMain').css('height',$(window).height()-90 +'px');  

	  /**点击一级栏目获取二级栏目菜单**/
	  $('#nav li').click(function(){
	  	 $(this).addClass('selected').siblings().removeClass("selected");
	  	 //var dataId=$(this).attr('data-id');
        // menuson(dataId);
	  })

    $('.menuson li').click(function(){
       $(this).addClass('active').siblings().removeClass("active");
    })

  function _M(menuid,targetUrl) {
    var menuHtml="";
     $.ajax({
        url:"/index.php/Admin/Public/left/mid/"+menuid,
        type:"POST",
        success:function(data){
            menuHtml+="<div class=\"lefttop\"><span></span>"+data['menu']+"</div><ul class=\"menuson\">";
            $.each(data,function(i) { 
                if(data[i].title){
                   menuHtml +="<li onclick=\"_MP("+data[i].id+",'/index.php/Admin/"+data[i].module+"/"+data[i].action+"')\"><cite></cite>"+data[i].title+"<i></i></li>";
                } 
            });
            menuHtml+="</ul>";
          $(".leftmenu").html(menuHtml);
        }
       });
    }

  function _MP(menuid,targetUrl) {
    $("#rightMain").attr('src', targetUrl);

    /**$.get(targetUrl,function(data){
        $("#content").html(data); }//返回的data是字符串类型
    );**/
  }

  _M(5);


     // menuson(2);
	  /**function menuson(dataId){
	  	var menuHtml="";
	  	$.ajax({    
			    url:'<?php echo U('Index/adminMenu');?>',   
			    data:{'pid':dataId},    
			    type:'post',    
			    cache:false,    
			    dataType:'json',    
			    success:function(data) {
			    	$.each(data,function(i) { 
			    		 menuHtml +="<li><cite></cite><a href=\"index.html\" class=\"menuName\" />"+data[i].title+"</a><i></i></li>";
                    }); 
                    $('.menuson').html(menuHtml);
			    },error : function() {    
			          console.log("异常！");    
			    }    
		 }); 
	  }**/
	</script>
</body>
</html>