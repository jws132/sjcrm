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
    
    <div class="tools">
    
      <ul class="toolbar">
        <li><a href="<?php echo U('edit');?>" ><span><img src="/Public/Admin/img/t01.png" /></span>添加</a></li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
     <table class="tablelist">
          <thead>
            <tr>
              <th width="92">ID</th>
              <th>标题</th>
              <th>栏目类型</th>
              <th>栏目目录</th>
              <th width="150">显示导航</th>
              <th width="150">状态</th>
              <th width="200">操作</th>
            </tr>
          </thead>
          <tbody>
            <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                <td  width="92" align='center'><?php echo ($vo["id"]); ?></td>
                <td><input type="text"  name="sort[]"  size="2" class="input-sort" value="<?php echo ($vo["sort"]); ?>" />&nbsp;<?php echo ($vo["title"]); ?><a href="<?php echo U('edit',array('parentId'=>$vo['id']));?>" title="添加" class="add" style="float: none; display: inline-block;"></a></td>
                <td align='center'><?php echo ($vo["name"]); ?></td>
                <td align='center'><?php echo ($vo["dir"]); ?></td>
                <td align="center"><?php if($vo['isnav']): ?>显示<?php else: ?>关闭<?php endif; ?></td>
                <td align="center"><?php if($vo['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                <td align="center"><a href="/admin.php/Channel/edit/id/<?php echo ($vo["id"]); ?>" title="编辑" class="edit"></a><a href="/admin.php/Channel/del/id/<?php echo ($vo["id"]); ?>" title="删除" class="del"></a></td>
              </tr>
                <?php if(is_array($vo["child"])): $i = 0; $__LIST__ = $vo["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$e): $mod = ($i % 2 );++$i;?><tr>
                  <td  width="92" align='center'><?php echo ($e["id"]); ?></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="sort[]"  size="2" class="input-sort" value="<?php echo ($e["sort"]); ?>" />&nbsp;<?php echo ($e["title"]); ?><!--a href="<?php echo U('edit',array('parentId'=>$e['id']));?>" title="添加" class="add" style="float: none; display: inline-block;"></a--></td>
                  <td align='center'><?php echo ($e["name"]); ?></td>
                  <td align='center'><?php echo ($e["dir"]); ?></td>
                  <td align="center"><?php if($e['isnav']): ?>显示<?php else: ?>关闭<?php endif; ?></td>
                  <td align="center"><?php if($e['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                  <td align="center"><a href="/admin.php/Channel/edit/id/<?php echo ($e["id"]); ?>" title="编辑" class="edit"></a><a href="/admin.php/Channel/del/id/<?php echo ($e["id"]); ?>" title="删除" class="del"></a></td>
                </tr><?php endforeach; endif; else: echo "" ;endif; ?>
              <!--volist name="e.child" id="s">
                <tr>
                  <td  width="92" align='center'><?php echo ($s["id"]); ?></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="sort[]"  size="2" class="input-sort" value="<?php echo ($s["sort"]); ?>" />&nbsp;<?php echo ($s["title"]); ?></td>
                  <td align='center'><?php echo ($s["name"]); ?></td>
                  <td align='center'><?php echo ($s["dir"]); ?></td>
                  <td align="center"><?php if($s['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                  <td align="center"><a href="/admin.php/Channel/edit/id/<?php echo ($s["id"]); ?>" title="编辑" class="edit"></a><a href="/admin.php/Channel/del/id/<?php echo ($s["id"]); ?>" title="删除" class="del"></a></td>
                </tr>
              </volist--><?php endforeach; endif; else: echo "" ;endif; ?>
          </tbody>
        </table>
  
    </div>
  <script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
    </script>
</body>
</html>