<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Admin/css/style.css" />
<style>
.content_view{width:100%;height:100%;font-size:12px;}
.content_view td{padding-top:5px;padding-bottom:5px;}
.content_view td.upic{border-left:#eee 1px solid;text-align:center;}
.content_view td.upic img{cursor:pointer;width:150px;height:150px;}
</style>
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" charset="utf-8" src="/Public/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
        window.UEDITOR_HOME_URL='/Public/ueditor/';
        window.onload=function(){
            window.UEDITOR_CONFIG.imageUrl = '<?php echo U('Editor');?>';
            window.UEDITOR_CONFIG.imagePath = '/Uploads/Editor/';    
        }
        
         /**function gradeChange(){
         var objS = document.getElementById("selectId");
         var typeid = objS.options[objS.selectedIndex].typeid;
         alert(typeid);
        }**/

        $(function(){
            var selectId=$("select[name=pid] option[selected]").attr('typeid');
            $('#type').val(selectId);

            $("#selectId").change(function(){
                var type=$(this).find('option:selected').attr('typeid');
                $('#type').val(type); 
            });


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
  <form action="<?php echo U('Edit');?>" method="post" enctype="multipart/form-data">  
  <div id="usual1" class="usual"> 
    <ul class="itab"> 
      <li class="selected">基础信息</li> 
      <li>扩展信息</li> 
    </ul>
        <table cellspacing="0" width="100%" class="content_view tab selected">
  <tbody><tr>
    <td>选择栏目</td>
    <td colspan="4">
    <select name="channel"  class="dfinput">
      <?php if(is_array($channelList)): $i = 0; $__LIST__ = $channelList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if($info['channel'] == $vo['id']): ?>selected<?php endif; ?> ><?php echo ($vo["title"]); ?></option>
          <?php if(is_array($vo["child"])): $i = 0; $__LIST__ = $vo["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$c): $mod = ($i % 2 );++$i;?><option value="<?php echo ($c["id"]); ?>" <?php if($info['parent'] == $c['id']): ?>selected<?php endif; ?> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo ($c["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
    </select>
    </td>
    <td rowspan="4" class="upic">
    <?php if(empty($$info['img'])): ?><img src="/Uploads/Editor/<?php echo ($info["img"]); ?>" width="150"><?php endif; ?>
    
    </td>
  </tr>
  <tr>
    <td>标题</td>
    <td colspan="4"><input type="text" name="title" class="dfinput" value="<?php echo ($info["title"]); ?>">
      <!--a class="selectcolor colorpicker" onclick="colorpicker(this,'color','title')">&nbsp;</a>
      <input type="hidden" name="color" id="color" value="#cc0099">
      <input type="checkbox" id="isbold" name="isbold" value="1">加粗--></td>
  </tr>
  <!--tr>
    <td>关键词</td>
    <td colspan="4"><input type="text" name="keywords" class="dfinput"  value="<?php echo ($info["keywords"]); ?>"></td></tr-->
  <tr>
    <td>图片</td>
    <td colspan="4"><input type="file" name="img"></td></tr>
  <tr>
  <tr>
    <td>描述</td>
    <td colspan="4"><textarea class="dftext" name="description" style="width:82%; height:60px;" ><?php echo ($info["description"]); ?></textarea></td></tr>
  <tr>
    <td>内容</td>
    <td colspan="5">
      <script type="text/javascript">UE.getEditor('content');</script>
      <textarea name="content" id="content" style="height:400px; width:82%;"><?php echo ($info["content"]); ?></textarea>

    </td></tr>
  <tr>
    <td>推荐位置</td>
    <td colspan="4">
    <?php $positionArray = explode(',',$info['position']); ?>
    <?php if(is_array($recommendList)): $i = 0; $__LIST__ = $recommendList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><input type="checkbox" name="position[]" value="<?php echo ($vo["id"]); ?>" <?php if(in_array($vo['id'],$positionArray)): ?>checked="checked"<?php endif; ?>  /> <?php echo ($vo["title"]); endforeach; endif; else: echo "" ;endif; ?>

    </td>
  </tr>
  <!--tr>
    <td>标签</td>
    <td colspan="5"><input type="text" name="tags" id="tags" size="80" class="dfinput" value="<?php echo ($info["tags"]); ?>">以逗号来分割关键词</td></tr-->
  <tr>
    <td>顺序</td>
    <td><input type="text" name="sort" value="<?php echo ($info["sort"]); ?>" class="dfinput"></td>
  </tr>
    <tr>
    <td>状态</td>
    <td colspan="3">
            <input type="radio" name="status" value="1"  <?php if($info['status'] == 1): ?>checked="checked"<?php endif; ?>> 开启&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="status" value="0" <?php if($info['status'] == 0): ?>checked="checked"<?php endif; ?>> 关闭
          </td>
  </tr>
      <tr><td></td><td colspan="3"><input type="hidden" name="id" value="<?php echo ($info["id"]); ?>"><button class="btn btn-primary" type="submit">保存</button></td>
  </tr>
  </tbody></table>

   <table cellspacing="0" width="100%" class="content_view tab">
  <tbody>

  <tr>
    <td width="70">来源</td>
    <td><input type="text" name="copyfrom" class="dfinput" value="<?php echo ($info["copyfrom"]); ?>"></td>
  </tr>
  <tr>
    <td>来源URL</td>
    <td colspan="3"><input type="text" name="fromlink" class="dfinput" value="<?php echo ($info["fromlink"]); ?>"></td>
  </tr>
 <tr>
    <td>访问量</td>
    <td><input type="text" name="hits"  class="dfinput" value="<?php echo ($info["hits"]); ?>"></td>
  </tr>

  <tr>
    <td>发布时间</td>
    <td><input type="text" name="puttime"  readonly="" onclick="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="dfinput" value="2015-08-20 09:52:25"></td
  </tr>
  <tr>
    <td>模板文件</td>
    <td><input type="text" name="tpl" id="tpl" class="dfinput" value=""></td>
  </tr>
  </tbody></table>


    </div>





 </form> 
  </div>
  </body>
  </html>