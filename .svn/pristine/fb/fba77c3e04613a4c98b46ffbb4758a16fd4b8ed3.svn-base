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
        <?php if(is_array($navList)): $i = 0; $__LIST__ = $navList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li data-id="<?php echo ($vo["id"]); ?>"><a href="<?php echo U('Admin/'.$vo['name'].'/Index');?>"><?php echo ($vo["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
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
		<div class="lefttop"><span></span>通讯录</div> 
	    	<ul class="menuson">
		    	<?php if(is_array($meunList)): $i = 0; $__LIST__ = $meunList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><cite></cite><a href="<?php echo U('Admin/'.CONTROLLER_NAME.'/'.$vo['name']);?>"><?php echo ($vo["title"]); ?></a><i></i></li><?php endforeach; endif; else: echo "" ;endif; ?>
	        </ul>    
</section>
<div id="content">
    
<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5><?php echo ($meta_title); ?></h5>
             <div class="buttons">
                 <a class="btn btn-mini"  href="javascript:history.go(-1);">返回</a>
             </div>
           </div>
          <div class="widget-content ">
                    <form class="form-horizontal" action="<?php echo U('EditClass');?>" method="post" >
                                    <div class="control-group">
                                        <label class="control-label">分类</label>
                                        <div class="controls">
                                              <select name="type">
                                                   <?php if(is_array(C("PRO_LIST_TYPE"))): $i = 0; $__LIST__ = C("PRO_LIST_TYPE");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newsType): $mod = ($i % 2 );++$i;?><option value="<?php echo ($key); ?>" <?php if($info['type'] == $key): ?>selected<?php endif; ?>><?php echo ($newsType); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                              </select>       
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">名称</label>
                                        <div class="controls">
                                            <input type="text" name="title" value="<?php echo ((isset($info["title"]) && ($info["title"] !== ""))?($info["title"]):'无'); ?>">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">是否开启</label>
                                        <div class="controls">
                                            <label><input type="radio" name="status" value="1" <?php if($info['status'] == 1): ?>checked="checked"<?php endif; ?> > 开启</label>
                                            <label><input type="radio" name="status" value="0" <?php if($info['status'] == 0): ?>checked="checked"<?php endif; ?> > 关闭</label>
                                        </div>
                                    </div>
                               <div class="form-actions">
                               <input type="hidden" name="id" value="<?php echo ((isset($info["id"]) && ($info["id"] !== ""))?($info["id"]):''); ?>">
                               <input type="hidden" name="p" value="1">
                               <input type="hidden" name="userId" value="<?php echo ($userId); ?>">
                               <button class="btn btn-primary" type="submit">保存</button>
                           </div>
                     </form>
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