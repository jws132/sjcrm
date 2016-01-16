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
  UE.getEditor('content',{
     imageUrl:'<?php echo U('Common/Editor');?>',
     imagePath:'/Uploads/Editor/'
  });
        /**window.UEDITOR_HOME_URL='/Public/ueditor/';
        window.onload=function(){
          
            window.UEDITOR_CONFIG.imageUrl = '<?php echo U('Common/Editor');?>';
            window.UEDITOR_CONFIG.imagePath = '/Uploads/';   
        }**/
        
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
  <form action="<?php echo U('Edit');?>" method="post"  enctype="multipart/form-data">  
    <div id="usual1" class="usual"> 
    <ul class="itab"> 
      <li class="selected">基础信息</li> 
      <li>扩展信息</li> 
    </ul>

    <table cellspacing="0" width="100%" class="content_view tab selected" >  
  <tbody><tr>
    <td>栏目名称</td>
    <td colspan="3"><input type="text" name="title" class="dfinput" value="<?php echo ($info["title"]); ?>"></td>
    <!--td>外部链接</td>
    <td>是&nbsp;&nbsp;<input type="radio" name="isexternal" value="1" onclick="$('#externalurltr').show();">&nbsp;&nbsp;&nbsp;&nbsp;否&nbsp;&nbsp;<input type="radio" name="isexternal" value="0" checked="" onclick="$('#externalurltr').hide();"></td-->
    <td  class="upic"   rowspan="4" valign="top">
        <?php if(empty($$info['img'])): ?><img src="/Uploads/Images/<?php echo ($info["img"]); ?>" width="150"><?php endif; ?>
    </td>
  </tr>
  <!--tr style="display:none;" id="externalurltr"><td>链接地址</td><td colspan="3"><input type="text" name="externalurl" id="externalurl" size="80" class="dfinput" value=""></td>
  </tr><tr>
    <td>栏目目录</td>
    <td><input type="text" name="dir" id="dir" class="dfinput" value="<?php echo ($info["dir"]); ?>"></td>
    <td>弹出方式</td>
    <td>当前页&nbsp;&nbsp;<input type="radio" name="target" value="_self" checked="">&nbsp;&nbsp;&nbsp;&nbsp;新页面&nbsp;&nbsp;<input type="radio" name="target" value="_blank"></td>
  </tr-->
  <tr><td>栏目模型</td>
     <td colspan="3"><select name="model" class="dfinput">
            <?php if(is_array($modelList)): $i = 0; $__LIST__ = $modelList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["channel"]); ?>" <?php if($info['model'] == $vo['channel']): ?>selected<?php endif; ?>><?php echo ($vo["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
        </select>
    </td>

  </tr>
    <tr>
    <td>栏目名称</td>
    <td colspan="3">
    <select name="parent" class="dfinput">
      <option value="0">顶级栏目</option>
      <?php if(is_array($channelList)): $i = 0; $__LIST__ = $channelList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if($info['parent'] == $vo['id'] || $_GET['parentId'] == $vo['id']): ?>selected<?php endif; ?> ><?php echo ($vo["title"]); ?></option>
          <!--volist name="vo.child" id="c">
          <option value="<?php echo ($c["id"]); ?>" <?php if($info['parent'] == $c['id']): ?>selected<?php endif; ?> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo ($c["title"]); ?></option>
            <?php if(is_array($c["child"])): $i = 0; $__LIST__ = $c["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$e): $mod = ($i % 2 );++$i;?><option value="<?php echo ($e["id"]); ?>" <?php if($info['parent'] == $e['id']): ?>selected<?php endif; ?> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo ($e["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
          </volist--><?php endforeach; endif; else: echo "" ;endif; ?>
    </select>
    </td>
  </tr>
  <tr>
    <td>图片</td>
    <td colspan="3"><input type="file" name="img"></td></tr>
  <tr>
    <tr>
    <td>导航显示</td>
    <td colspan="3">是&nbsp;&nbsp;<input type="radio" name="isnav" value="1"  <?php if($info['isnav'] == 1): ?>checked="checked"<?php endif; ?> >&nbsp;&nbsp;&nbsp;&nbsp;否&nbsp;&nbsp;<input type="radio" name="isnav" value="0"   <?php if($info['isnav'] == 0): ?>checked="checked"<?php endif; ?>></td>
  </tr>
  <tr>
    <td>内容</td>
    <td colspan="4">
     <textarea name="content" id="content" style="height:400px; width:82%;"><?php echo ($info["content"]); ?></textarea>
    </td></tr>
  <tr>
  </tr>
  <tr>
    <td>状态</td>
    <td> <input type="radio" name="status" value="1"  <?php if($info['status'] == 1): ?>checked="checked"<?php endif; ?> > 开启&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="status" value="0" <?php if($info['status'] == 0): ?>checked="checked"<?php endif; ?>> 关闭</td>
    <td>顺序</td>
    <td colspan="2"><input type="text" name="sort" value="<?php echo ($info["sort"]); ?>" class="dfinput"></td>
  </tr>
    <tr><td></td><td colspan="3"><input type="hidden" name="id" value="<?php echo ($info["id"]); ?>"><button class="btn btn-primary" type="submit">保存</button></td>
  </tr>
  </tbody></table>


 
  <table cellspacing="0" width="100%" class="content_view tab">
    <tbody>
        <tr><td style="width:70px;">SEO标题</td><td><input type="text" name="name" style="width:82%;"  class="dfinput" value="<?php echo ($info["name"]); ?>"></td>
        </tr><tr><td>SEO关键词</td><td><input type="text" name="keywords"style="width:82%;" class="dfinput" value="<?php echo ($info["keywords"]); ?>"></td>
        </tr><tr><td>SEO描述</td><td><textarea style="width:82%; height:50px;" name="description" class="dfinput"><?php echo ($info["description"]); ?></textarea></td></tr>
          <tr>
    <td>允许添加内容</td>
    <td colspan="3">是&nbsp;&nbsp;<input type="radio" name="isdisabled" value="1" <?php if($info['isnav'] == 1): ?>checked="checked"<?php endif; ?> >&nbsp;&nbsp;&nbsp;&nbsp;否&nbsp;&nbsp;<input type="radio" name="isdisabled" value="0" <?php if($info['isnav'] == 0): ?>checked="checked"<?php endif; ?>></td>
  </tr>
        </tr><tr><td>分页条数</td><td><input type="text" name="pagesize" size="5" class="dfinput" value="<?php echo ($info["pagesize"]); ?>"></td></tr>
        </tr><tr><td>列表页模板</td><td><input type="text" name="tpllist" size="5" class="dfinput" value="<?php echo ($info["tpllist"]); ?>"></td></tr>
     </tbody>
  </table>





    </div>





 </form> 
  </div>
  </body>
  </html>