<?php if (!defined('THINK_PATH')) exit();?>  <!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Admin/css/style.css" />
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 

</head>
<body>
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
					<label>菜单名:</label>
					<input name="name" type="title" class="dfinput" /><i>控制器</i></li>
				<li>
					<label>模块名:</label>
					<input name="module" type="text" class="dfinput" /><i>多个关键字用,隔开</i></li>
        <li>
          <label>方法名:</label>
          <input name="action" type="text" class="dfinput" /><i>控制器</i></li>
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


</body>
</html>



<!--extend name="Public/base"/>


<block name="body">
<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5><?php echo ($meta_title); ?></h5>
             <div class="buttons">
                 <a class="btn"  href="javascript:history.go(-1);">返回</a>
             </div>
           </div>
          <div class="widget-content ">
                    <form class="form-horizontal" form action="<?php echo U('Add');?>" method="post">
                                    <div class="control-group">
                                        <label class="control-label"><?php echo ($type); ?>名称</label>
                                        <div class="controls">
                                            <input type="text" name="name">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label"><?php echo ($type); ?>描述</label>
                                        <div class="controls">
                                            <input type="text" name="title">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">是否开启</label>
                                        <div class="controls">
                                            <label><input type="radio" name="status" value="1" checked="checked"> 开启</label>
                                            <label><input type="radio" name="status" value="0"> 关闭</label>
                                        </div>
                                    </div>
                                     <div class="control-group">
                                        <label class="control-label">排序</label>
                                        <div class="controls">
                                            <input type="text" name="sort" value="10">
                                        </div>
                                    </div>
                               <div class="form-actions">
                               <input type="hidden" name="pid" value="<?php echo ($pid); ?>">
                              <?php if(($level == 1)): ?><input type="hidden" name="level" value="1">
                              <?php elseif(($level == 2)): ?>
                              <input type="hidden" name="level" value="2">
                              <?php elseif(($level == 3)): ?>
                              <input type="hidden" name="level" value="3"><?php endif; ?>
                 
                               
                               <button class="btn btn-primary" type="submit">保存</button>
                           </div>
                     </form>
          </div>
        </div>
</block-->