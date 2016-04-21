<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/main.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/jquery-2.2.3.js" type="text/javascript"></script>
<!-- InstanceBeginEditable name="doctitle" -->
<title>实验1</title>
<Script Language="javascript">  
	function divopen(){
		$("#light").css("display","block");
		$("#fade").css("display","block");
	}
	var showad = true;
var Toppx = 60;			//上端位置
var AdDivW = 100;		//宽度
var AdDivH = 300;		//高度
var PageWidth = 800;	//页面多少宽度象素下正好不出现左右滚动条
var MinScreenW = 1024;	//显示广告的最小屏幕宽度象素
var ClosebuttonHtml = '<div align="right" style="position: absolute;top:0px;right:0px;margin:2px;padding:2px;z-index:200000;"><a href="javascript:;" onclick="hidead()" style="color:red;text-decoration:none;font-size:12px;">关闭</a></div>'
var AdContentHtml = '<div align="center" style="color:green;font-size:23pt;font-family:黑体;"> <a href="http://www.lanrentuku.com/" target="_blank"><img src="images/ad.bmp" width="100" height="300" border="0"></a></div>';
document.write ('<div id="LeftDiv" style="position: absolute;border: 1px solid #336699;background-color:#EEEEE2;z-index:20000;width:'+AdDivW+'px;height:'+AdDivH+'px;top:10px;word-break:break-all;display:none;">'+ClosebuttonHtml+'<div>'+AdContentHtml+'</div></div>');
document.write ('<div id="RightDiv" style="position: absolute;border: 1px solid #336699;background-color:#EEEEE2;z-index:200000;width:'+AdDivW+'px;height:'+AdDivH+'px;top:10px;word-break:break-all;display:none;">'+ClosebuttonHtml+'<div>'+AdContentHtml+'</div></div>');
function scall(){
	console.log("scall执行了");
if(!showad){return;}
if (window.screen.width<MinScreenW){
alert("临时提示：\n\n显示器分辨率宽度小于"+MinScreenW+",不显示广告");
showad = false;
$("#LeftDiv").css("display","none");
$("#RightDiv").css("display","none");
return;
}
var Borderpx = ((window.screen.width-PageWidth)/2-AdDivW)/2;
console.log(document.getElementById("LeftDiv"));
$("#LeftDiv").css("display","");
$("#LeftDiv").css("top",document.body.scrollTop+Toppx + "px");
$("#LeftDiv").css("left",document.body.scrollLeft+Borderpx + "px");
$("#RightDiv").css("display","");
$("#RightDiv").css("top",document.body.scrollTop+Toppx + "px");
$("#RightDiv").css("left",document.body.scrollLeft+document.body.clientWidth-document.getElementById("RightDiv").offsetWidth-Borderpx + "px");
}
function hidead()
{
showad = false;
$("#LeftDiv").css("display","none");
$("#RightDiv").css("display","none");
}
window.onscroll=scall;
window.onresize=scall;
window.onload=scall;
</Script>   

<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<link href="CSS/main.css" rel="stylesheet" type="text/css" />
</head>

<body onload="divopen()">

<div id="header">
	<img src="images/Icon.jpg" id="logo"><img src="images/banner.jpg" id="banner"></img>
</div>
<div id="NAVMenu"><!-- InstanceBeginEditable name="EditRegion2" -->
<div class="menu">
<ul>
<li><a class="drop">下拉菜单1</a>
<table><tr><td>
	<ul>
	<li><a>下拉菜单1-1</a></li>
	<li><a>下拉菜单1-2</a></li>
	<li><a>下拉菜单1-3</a></li>
	</ul>
</td></tr></table>
</li>

<li><a class="drop">下拉菜单2</a>
<table><tr><td>
	<ul>
	<li><a>下拉菜单2-1</a></li>
	<li><a>下拉菜单2-2</a></li>
	<li><a>下拉菜单2-3</a></li>
	</ul>
</td></tr></table>
</li>

<li><a class="drop">下拉菜单3</a>
<table><tr><td>
	<ul>
	<li><a>下拉菜单3-1</a></li>
	<li><a>下拉菜单3-2</a></li>
	<li><a>下拉菜单3-3</a></li>
	</ul>
</td></tr></table>
</li>

<li><a class="drop">下拉菜单3</a>
<table><tr><td>
	<ul>
	<li><a>下拉菜单3-1</a></li>
	<li><a>下拉菜单3-2</a></li>
	<li><a>下拉菜单3-3</a></li>
	</ul>
</td></tr></table>
</li>

<li><a class="drop">下拉菜单4</a>
<table><tr><td>
	<ul>
	<li><a>下拉菜单1-1</a></li>
	<li><a>下拉菜单1-2</a></li>
	<li><a>下拉菜单1-3</a></li>
	</ul>
</td></tr></table>
</li>

<li><a class="drop">下拉菜单5</a>
<table><tr><td>
	<ul>
	<li><a>下拉菜单5-1</a></li>
	<li><a>下拉菜单5-2</a></li>
	<li><a>下拉菜单5-3</a></li>
	</ul>
</td></tr></table>
</li>

<li><a class="drop">下拉菜单6</a>
<table><tr><td>
	<ul>
	<li><a>下拉菜单6-1</a></li>
	<li><a>下拉菜单6-2</a></li>
	<li><a>下拉菜单6-3</a></li>
	</ul>
</td></tr></table>
</li>

<li><a class="drop">下拉菜单7</a>
<table><tr><td>
	<ul>
	<li><a>下拉菜单7-1</a></li>
	<li><a>下拉菜单7-2</a></li>
	<li><a>下拉菜单7-3</a></li>
	</ul>
</td></tr></table>
</li>

</ul>
</div>

<!-- InstanceEndEditable --></div>
<div id="content"><!-- InstanceBeginEditable name="EditRegion3" -->
  <div class="left_right">
    <div class="left_right_top">
    <marquee width="100%" height="100%" id="mq1" class="mq" direction="up" scrollamount="2" scrolldelay="100" onmouseover="mq1.stop()" onmouseout="mq1.start()">
		<ul>
			<li><a href="http://blog.wolfogre.com/" target="iframe1">第1条新闻</a></li>
			<li><a href="http://blog.wolfogre.com/" target="iframe1">第2条新闻</a></li>
			<li><a href="http://blog.wolfogre.com/" target="iframe1">第3条新闻</a></li>
			<li><a href="http://blog.wolfogre.com/" target="iframe1">第4条新闻</a></li>
			<li><a href="http://blog.wolfogre.com/" target="iframe1">第5条新闻</a></li>
			<li><a href="http://blog.wolfogre.com/" target="iframe1">第6条新闻</a></li>
			<li><a href="http://blog.wolfogre.com/" target="iframe1">第7条新闻</a></li>
			<li><a href="http://blog.wolfogre.com/" target="iframe1">第8条新闻</a></li>
			<li><a href="可关闭对联广告代码/index.html" target="iframe1">可关闭对联广告代码例子</a></li>
            <li><a href="2013082401/index.html">jQuery实现的弹出层效果 在线演示效果</a></li>
		</ul>
		</marquee>
    
    </div>
    <div class="left_right_bottom">
    	<div align="center" style="font-size:18px">
        <br />
			<a href="http://blog.wolfogre.com/"><b>狼煞博客</b></a><b>文章列表</b>
        </div>
        <ol>
  		<li><a href="http://blog.wolfogre.com/2016/04/01/145.html">【转载】傅里叶分析之掐死教程</a></li>
  		<li><a href="http://blog.wolfogre.com/2016/03/31/138.html">【转载】如何正确接收 GitHub 的消息邮件</a></li>
  		<li><a href="http://blog.wolfogre.com/2016/03/30/123.html">Git游戏「Learn Git Branching」通关策略（更新中…)</a></li>
        <li><a href="http://blog.wolfogre.com/2016/03/29/111.html">【转载】C++的反思</a></li>
        <li><a href="http://blog.wolfogre.com/2016/03/29/90.html">服务器与博客的待处理问题</a></li>
        <li><a href="http://blog.wolfogre.com/2016/03/09/7.html">建站日记</a></li>
		</ol>
        
    </div>
  </div>
  <div id="center">
    <div id="center_top">
    <img src="images/map.jpg" width="400" height="200" usemap="#Map" border="0" />
    <map name="Map" id="Map">
      <area shape="rect" coords="277,80,318,97" href="news_anhui.asp" target="iframe1" />
      <area shape="rect" coords="302,27,339,41" href="news_jiangsu.asp" target="iframe1" />
      <area shape="rect" coords="243,144,283,159" href="news_jiangxi.asp" target="iframe1" />
      <area shape="rect" coords="189,74,225,94" href="news_hubei.asp" target="iframe1" />
      <area shape="rect" coords="326,106,363,122" href="news_zhejiang.asp" target="iframe1" />
    </map>
    </div>
    <div id="center_bottom">
    <iframe id="sub_window" name="iframe1" src="news_shanghai.asp">
    
    </iframe>
    </div>
  </div>
  <div class="left_right">
  <div class="left_right_top">
  <embed src="http://player.youku.com/player.php/sid/XODA4MTgwNzY0/v.swf" 
 flashvars="isAutoPlay=true"  allowFullScreen="true" quality="high" width="100%" height="100%" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
  </div>
    <div class="left_right_bottom">
   	<table width="200" border="2" cellspacing="2" cellpadding="2">
  <tr>
    <td><img src="images/image1.jpg" width="40px" height="auto"/></td>
    <td><img src="images/image1.jpg" width="40px" height="auto"/></td>
    <td><img src="images/image1.jpg" width="40px" height="auto"/></td>
    <td><img src="images/image1.jpg" width="40px" height="auto"/></td>
  </tr>
  <tr>
    <td rowspan="2"><img src="images/image1.jpg" width="40px" height="90px"/></td>
    <td rowspan="2" colspan="2"><img src="images/image1.jpg" width="90px" height="auto"/></td>
    <td><img src="images/image1.jpg" width="40px" height="auto"/></td>
  </tr>
  <tr>
    <td><img src="images/image1.jpg" width="40px" height="auto"/></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/image1.jpg" width="140px" height="40px"/>
    <td><img src="images/image1.jpg" width="40px" height="auto"/></td>
  </tr>
</table>

    </div>
  </div>
  <div id="light" class="white_content">Div模拟出来的弹出窗口<br/><br/><br/><br/>
 <a href = "javascript:void(0)" onclick= "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">关闭</a></div> 
<div id="fade" class="black_overlay"></div>



<!-- InstanceEndEditable --></div>
<div id="footer">CopeRight@wolfogre<br />
<a href="http://blog.wolfogre.com">wolfogre.com</a>
</div>
</body>
<!-- InstanceEnd --></html>
