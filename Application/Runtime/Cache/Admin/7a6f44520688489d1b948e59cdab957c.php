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
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    	<ul class="toolbar">
        <li class="click"><a href="<?php echo U('add');?>"><span><img src="/Public/Admin/img/t01.png" /></span>添加</a></li>
        <li><span><img src="/Public/Admin/img/t03.png" /></span>删除</li>
      </ul>
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	    <tr>
            <th>ID</th>
            <th>角色名</th>
            <th>角色描述</th>
            <th>状态</th>
            <th>操作</th>
          </tr>
        </thead>
        <tbody>
         <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
	            <td><?php echo ($vo["id"]); ?></td>
	            <td><?php echo ($vo["name"]); ?></td>
	            <td><?php echo ($vo["remark"]); ?></td>
	            <td><?php if($vo['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
	            <td><a href="<?php echo U('role',array('role_id'=>$vo['id'] ));?>" title="授权" class="grant"></a>  <a href="<?php echo U('edit',array('id'=>$vo['id'] ));?>" title="编辑" class="edit"></a> <a href="<?php echo U('del',array('id'=>$vo['id']));?>" title="删除" class="del"></a></td>
            </tr><?php endforeach; endif; else: echo "" ;endif; ?>      
        </tbody>
    </table>
  </div>
  <script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
    </script>
</body>
</html>