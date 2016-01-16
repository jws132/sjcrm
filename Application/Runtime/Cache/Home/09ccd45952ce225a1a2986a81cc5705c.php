<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html lang="en">
<head>
<title>北京胜杰通华软件技术有限公司</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta name="keywords" content="北京胜杰通华软件技术有限公司" />
<meta name="Description" content="北京胜杰通华软件技术有限公司" />
<link rel="stylesheet" href="/Public/Home/css/base.css" />
<link rel="stylesheet" href="/Public/Home/css/style.css" />
</head>
<body>
<header>
    <div class="navbar clearfix pb20">
    	<a href="/" class="logo"><img src="/Public/Home/img/logo.png" border="0" alt="" width="250" /></a>
    	<ul class="pt10">
    		<li><a href="/">首页</a></li>
            <?php $__NAVLIST__ = D('Channel')->getNav(0); if(is_array($__NAVLIST__)): $i = 0; $__LIST__ = $__NAVLIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                    <a href="<?php echo U('Home/Document/index', array('cid' => $vo['id']));?>"><?php echo ($vo["title"]); ?></a>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
    		<!--li><a href="/Index/about.html">公司简介</a></li>
    		<li><a href="/Index/cases.html">解决方案</a></li>
    		<li><a href="/Index/pro.html">产品中心</a></li>
    		<li><a href="#">代理产品</a></li>
    		<li class="no"><a href="/Index/support.html">技术服务</a></li-->
    	</ul>
    </div>
</header>

<div class="con-bg">
     <div class="container clearfix">
	     <div class="assets mt20 mb20 pl15 pr15 pt15 pb15">
	     	  <ul class="lh40">
	     	  	  <li><a href="#">公司简介</a></li>
	     	  	  <li><a href="#">服务条款</a></li>
	     	  	  <li><a href="#">企业荣誉</a></li>
	     	  	  <li><a href="#">联系我们</a></li>
	     	  </ul>
	     </div>
	     <div class="fr w850 mt20 mb20">
	       <h3 class="n-title">公司简介</h3>
	       <div class="pt15 pb15 pl15 pr15 lh30 f16" style="color:#707070">
	       	　  北京胜杰通华软件技术有限公司(简称胜杰软件，SjCrm),它是以北京为中心，面向大中华地区专业的系统集成公司。公司遵从“以客户为中心，以市场为导向，以技术为后盾，以服务为保障”的发展宗旨。领导科技新潮流、创造管理新时代、的理念。</br></br>
 
 　  公司成立以来一直从事电信、金融、保险、制造业、政府、数字城管、教育培训、餐饮、旅游、出版业、邮政、医疗、家政、零售、广告传媒、公共事业等领域的系统建设和集成，并在相关领域不断创新，自主研发最具核心竞争力的产品。</br></br>
 
 　  公司通过与国内领先的交换机厂商东进公司（Keygoe系例）、国际领先的交换机厂商（Avaya、Nortel）多层次，杭州三汇语音卡厂商多方位合作。将当今计算机与通信领域最先进的技术高效融合，为用户提供强有力的技术支持，以协助用户提高工作效率、提升管理水平。</br></br>
 
 　  公司专心致力于 CTI 、IVR语音导航、CRM、ERP、标准客服系统、BI商务智能、录音产品的研发、中小企业一体机、电子商务商城平台、呼叫中小系统集成、及外拨营销呼叫中心运营咨询，做为一家拥有自主知识产权的高技术企业，胜杰将不断发展自有核心技术，为客户提供高效、稳定的企业通讯解决方案为己任。</br></br>
 
 　  公司依托博大精深的企业文化底蕴，汇聚了一支专业管理团队及一大批资深的研发技术人员。高层管理团队均具有十年以上的IT管理经验，并有着广泛而且丰富的外企以及国有大型企业的IT背景和资源。研发技术人员通过多年的通信软件和信息化软件的开发与实践，使公司在解决方案、软件开发、系统维护以及综合工程方面具备了相当雄厚的实力。已成功的为电力、金融、零售、政府、城管、教育以及大型国有和外资企业提供基于交换机的呼叫中心系统集成解决方案。</br></br>
 
  　  面向日新月异的IT发展，胜杰将怀以积极进取的心态，为客户创造价值；以专业的精神，为客户提供最适应时代发展的解决方案。以达成客户满意度最大化为己任，倾情付出，与客户共创美好之未来。</br>

	       </div>

	      </div>
     </div>
</div>

<div class="askbox">
    有疑问或想了解更多，请咨询：400-000-0000
</div>
<div class="con-bg">
    <ul class="container clearfix pt30 pb30">
        <li class="fl w300"><img src="/Public/Home/img/logo.png" border="0" width="300"></li>
        <li class="fr w750 f14 lh30">
        © Copyright 2015 胜杰软件 All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;北京胜杰通华软件技术有限公司&nbsp;&nbsp;&nbsp;&nbsp;京ICP备 09089591号-1 </br>地址：北京市南三环中路71号扑满山大厦3栋9层&nbsp;&nbsp;&nbsp;&nbsp;传真：010-87653153 
        </li>   
    </ul>
</div>
<script src="/Public/Home/js/jquery-1.7.2.min.js"></script> 
<script src="/Public/Home/js/scrolltop.js"></script>
</body>
</html>