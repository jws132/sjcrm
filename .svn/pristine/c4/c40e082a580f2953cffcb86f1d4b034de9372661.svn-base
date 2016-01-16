<?php if (!defined('THINK_PATH')) exit();?>﻿<div class="lefttop"><span></span><?php echo ($menu); ?></div><ul class="menuson">
  <?php if(is_array($menulist)): $i = 0; $__LIST__ = $menulist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="sub_menu">
	    <a href="javascript:_MP(<?php echo ($vo["id"]); ?>,'/index.php/Admin/<?php echo ($vo["module"]); ?>/<?php echo ($vo["action"]); ?>')" ><cite></cite><?php echo ($vo["title"]); ?></a>
	  </li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>