<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
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
    <form action="<?php echo U('index');?>" method="post" >   
    <div class="tools">

    标题：<input type="text" name="title" class="dfinput" value="" style="width:150px;"/>
栏目：
    <select name="channel"  class="dfinput" style="width:150px;">
     <option value="">--请选择--</option>
      <?php if(is_array($channelList)): $i = 0; $__LIST__ = $channelList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if($info['channel'] == $vo['id']): ?>selected<?php endif; ?> ><?php echo ($vo["title"]); ?></option>
          <?php if(is_array($vo["child"])): $i = 0; $__LIST__ = $vo["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$c): $mod = ($i % 2 );++$i;?><option value="<?php echo ($c["id"]); ?>" <?php if($info['parent'] == $c['id']): ?>selected<?php endif; ?> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo ($c["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
    </select>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-default" type="submit">搜索</button>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo U('Edit');?>" class="btn-default">添加</a>

    </div>
    </form>
     <table class="tablelist">
          <thead>
            <tr>
              <th width="92">ID</th>
              <th width="80">排序</th>
              <th>标题</th>
              <th>访问量</th>
              <th width="150">状态</th>
              <th width="150">用户</th>
              <th width="150">时间</th>
              <th width="200">操作</th>
            </tr>
          </thead>
          <tbody>
            <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                <td><?php echo ($vo["id"]); ?></td>
                <td><input type="text"  name="sort[]"  size="2" class="input-sort" value="<?php echo ($vo["sort"]); ?>" /></td>
                <td ><font color="#1daeef">[<?php echo ($vo["name"]); ?>]</font><?php echo ($vo["title"]); ?></td>
                <td align='center'><?php echo ($vo["hits"]); ?></td>
                <td align="center"><?php if($vo['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                <td align='center'><?php echo ($vo["username"]); ?></td>
                <td align="center"><?php echo (date('Y-m-d',$vo["createtime"])); ?></td>
                <td align="center"><a href="/admin.php/Article/edit/id/<?php echo ($vo["id"]); ?>" title="编辑" class="edit"></a><a href="/admin.php/Article/del/id/<?php echo ($vo["id"]); ?>" title="删除" class="del"></a></td>
              </tr><?php endforeach; endif; else: echo "" ;endif; ?>

          </tbody>
        </table>
        <div class="page">
          <?php echo ($page); ?>  
        </div>
          
    </div>
  <script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
    </script>
</body>
</html>