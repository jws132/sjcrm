<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Admin/css/style.css" />
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript">
        $(function(){
          $(".itab li").click(function(){
            $(this).addClass('selected').siblings().removeClass('selected');
            $(".content_view").eq($(".itab li").index(this)).addClass('selected').siblings().removeClass('selected');
          });

        });


</script>

</head>
<body>
  
  <div class="place"><span>位置：</span><ul class="placeul"><li><a href="#">首页</a></li><li><a href="#">表单</a></li></ul></div>
     <div class="formbody">
  <div id="usual1" class="usual"> 
    <ul class="itab"> 
	    <?php if(is_array(C("CONFIG_GROUP_LIST"))): $i = 0; $__LIST__ = C("CONFIG_GROUP_LIST");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$group): $mod = ($i % 2 );++$i;?><li <?php if(($id) == $key): ?>class="selected"<?php endif; ?>><a href="<?php echo U('?id='.$key);?>"><?php echo ($group); ?>配置</a></li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
<form action="<?php echo U('save');?>" method="post" class="form-horizontal">
        <ul class="forminfo">
		<div class="form-item content_view tab selected">
     	<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$config): $mod = ($i % 2 );++$i;?><li> 
			<label style="width:100px;"><?php echo ($config["title"]); ?></label>
			<?php switch($config["type"]): case "0": ?><input type="text" class="dfinput" name="config[<?php echo ($config["name"]); ?>]" value="<?php echo ($config["value"]); ?>"><i> <?php if(!empty($$config['remark'])): ?>（<?php echo ($config["remark"]); ?>）<?php endif; ?></i><?php break;?>
			<?php case "1": ?><input type="text" class="dfinput" name="config[<?php echo ($config["name"]); ?>]" value="<?php echo ($config["value"]); ?>"><i><?php if(!empty($$config['remark'])): ?>（<?php echo ($config["remark"]); ?>）<?php endif; ?></i><?php break;?>
			<?php case "2": ?><label class="textarea input-large">
				<textarea name="config[<?php echo ($config["name"]); ?>]" class="dftext" style="height:100px;"><?php echo ($config["value"]); ?></textarea>
			</label><?php break;?>
			<?php case "3": ?><label class="textarea input-large">
				<textarea name="config[<?php echo ($config["name"]); ?>]" class="dftext" style="height:100px;"><?php echo ($config["value"]); ?></textarea>
			</label><?php break;?>
			<?php case "4": ?><div class="vocation">
				<select name="config[<?php echo ($config["name"]); ?>]" class="dfselect">
					<?php $_result=parse_config_attr($config['extra']);if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($key); ?>" <?php if(($config["value"]) == $key): ?>selected<?php endif; ?>><?php echo ($vo); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
				</select>
              </div><?php break; endswitch;?>
			<li><?php endforeach; endif; else: echo "" ;endif; ?>
	</div>
	</ul>
		<div class="form-item">
			<label class="item-label"></label>
			<div class="controls">
				<?php if(empty($list)): ?><button type="submit" disabled class="btn submit-btn disabled" target-form="form-horizontal">确 定</button><?php else: ?><button type="submit" class="btn submit-btn ajax-post" target-form="form-horizontal">确 定</button><?php endif; ?>
				
				<button class="btn btn-return" onclick="javascript:history.back(-1);return false;">返 回</button>
			</div>
		</div>







 </form> 
  </div>
  </body>
  </html>



<!--extend name="Public/base"/>
<block name="body">
<style>
	.controls input,.controls select,.controls textarea{ width:350px;}
	.controls textarea{ height: 100px;}

</style>
<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5><?php echo ($meta_title); ?></h5>
             <div class="buttons">
              <a class="btn"  href="<?php echo U('Admin/Config/Add');?>">新增设置</a>
                 
             </div>
           </div>
          <div class="widget-content">
            <ul class="nav nav-tabs">
				<?php if(is_array(C("CONFIG_GROUP_LIST"))): $i = 0; $__LIST__ = C("CONFIG_GROUP_LIST");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$group): $mod = ($i % 2 );++$i;?><li <?php if(($id) == $key): ?>class="active"<?php endif; ?>><a href="<?php echo U('?id='.$key);?>"><?php echo ($group); ?>配置</a></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
	         <form action="<?php echo U('save');?>" method="post" class="form-horizontal">
     	<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$config): $mod = ($i % 2 );++$i;?><div class="form-item">
			<label class="item-label"><?php echo ($config["title"]); ?><span class="check-tips">（<?php echo ($config["remark"]); ?>）</span> </label>
			<div class="controls">
			<?php switch($config["type"]): case "0": ?><input type="text" class="text input-small" name="config[<?php echo ($config["name"]); ?>]" value="<?php echo ($config["value"]); ?>"><?php break;?>
			<?php case "1": ?><input type="text" class="text input-large" name="config[<?php echo ($config["name"]); ?>]" value="<?php echo ($config["value"]); ?>"><?php break;?>
			<?php case "2": ?><label class="textarea input-large">
				<textarea name="config[<?php echo ($config["name"]); ?>]"><?php echo ($config["value"]); ?></textarea>
			</label><?php break;?>
			<?php case "3": ?><label class="textarea input-large">
				<textarea name="config[<?php echo ($config["name"]); ?>]"><?php echo ($config["value"]); ?></textarea>
			</label><?php break;?>
			<?php case "4": ?><select name="config[<?php echo ($config["name"]); ?>]">
				<?php $_result=parse_config_attr($config['extra']);if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($key); ?>" <?php if(($config["value"]) == $key): ?>selected<?php endif; ?>><?php echo ($vo); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
			</select><?php break; endswitch;?>
				
			</div>
		</div><?php endforeach; endif; else: echo "" ;endif; ?>
		<div class="form-item">
			<label class="item-label"></label>
			<div class="controls">
				<?php if(empty($list)): ?><button type="submit" disabled class="btn submit-btn disabled" target-form="form-horizontal">确 定</button><?php else: ?><button type="submit" class="btn submit-btn ajax-post" target-form="form-horizontal">确 定</button><?php endif; ?>
				
				<button class="btn btn-return" onclick="javascript:history.back(-1);return false;">返 回</button>
			</div>
		</div>
	</form>
          </div>
        </div>
</block-->