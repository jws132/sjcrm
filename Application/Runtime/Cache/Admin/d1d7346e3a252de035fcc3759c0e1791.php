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
    <ul class="nav">
        <?php if(is_array($navList)): $i = 0; $__LIST__ = $navList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li  href="javascript:_M(<?php echo ($vo["id"]); ?>,'/Admin/Index/index')"><a href="<?php echo U('Admin/'.$vo['name'].'/Index');?>"><?php echo ($vo["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
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
<section class="leftmenu" style="background-color:#f0f9fd;">
		<div class="lefttop"><span></span><?php echo ($meun); ?></div> 
	    	<ul class="menuson">
		    	<?php if(is_array($meunList)): $i = 0; $__LIST__ = $meunList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li data-url="<?php echo U('Admin/'.$vo['name'].'/Index');?>"><cite></cite><?php echo ($vo["title"]); ?><i></i></li><?php endforeach; endif; else: echo "" ;endif; ?>
	        </ul>    
</section>
<div id="content">
    
<style>
ul,li{list-style: none;}
.jw-nav{ margin-left: 0px;}
 .jw-nav li{float: left; margin: -10px 12px 10px 12px; }
</style>
<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5><?php echo ($meta_title); ?></h5>
             <div class="buttons">
              <a class="btn btn-mini"  href="<?php echo U('Add',array('pid'=>I('pid'),'type'=>I('type')));?>">新增</a>          
             </div>
           </div>
          <div class="widget-content ">
            <ul class="nav nav-tabs">
             <?php if(is_array(C("PRO_LIST_TYPE"))): $i = 0; $__LIST__ = C("PRO_LIST_TYPE");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newsType): $mod = ($i % 2 );++$i;?><li <?php if($news_id == $key): ?>class="active"<?php endif; ?> ><a href="<?php echo U('Index',array('type'=>$key));?>"><?php echo ($newsType); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <ul class="jw-nav">
               <?php if(is_array($listClass)): $i = 0; $__LIST__ = $listClass;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$l): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Index',array('pid'=>$l['id'],'type'=>$l['type']));?>"><?php echo ($l["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>   
            </ul>
            <table class="table table-bordered table-striped with-check">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>图片</td>
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
                    <td><img src="/Uploads/Editor/<?php echo ($vo["pic"]); ?>" border="0" style="height:35px; width:35px;" /></td>
                    <td><?php echo ($vo["title"]); ?></td>
                    <td><?php echo (date('Y-m-d',$vo["create_time"])); ?></td>
                    <td><?php if($vo['lang'] == 'zh-cn'): ?><img src="/Public/Admin/img/zh-cn.png"><?php else: ?><img src="/Public/Admin/img/en-us.png" ><?php endif; ?></td>
                    <td><?php echo (get_user($vo["userId"])); ?></td>
                    <td><?php if($vo['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                    <td><a href="<?php echo U('Edit',array('id'=>$vo['id']));?>">编辑</a> | <a href="<?php echo U('Del',array('id'=>$vo['id']));?>">删除</a></td>
                    </tr><?php endforeach; endif; else: echo "" ;endif; ?>
              </tbody>
            </table>
          </div>
        </div>

</div> 
  <script type="text/javascript">
	  $('.tablelist tbody tr:odd').addClass('odd');
	  $('.leftmenu').css('height',$(window).height()-88 +'px');  

	  /**点击一级栏目获取二级栏目菜单**/
	  $('#nav li').click(function(){
	  	 $(this).addClass('selected').siblings().removeClass("selected");
	  	 //var dataId=$(this).attr('data-id');
        // menuson(dataId);
	  })


     $('.menuson li').click(function(){
     	var url=$(this).attr('data-url');
	  $.ajax({
        url:url,
        type:"POST",
        success:function(res){
        	console.log(res);
          $("#content").html(res);
        }
       });
	 })






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