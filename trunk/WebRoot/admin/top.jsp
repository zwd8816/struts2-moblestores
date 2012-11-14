<%@ page language="java"  pageEncoding="gb2312"%>
<%@ page errorPage="systeminfodisplay/error.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


 <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color:#000000;
}
.STYLE3 {
	color: #033d61;
	font-size: 12px;
}
-->
</style>

<script type="text/javascript"><!--
	/*var timerID=null;
	var timerRunning=false;
	function stopclock(){
		if(timerRunning)
			clearTimeout(timerID);
			timerRunning=false;
	}
	function showtime(){
		var now=new Date();
		var hours=now.getHours();
		var minutes=now.getMinutes();
		var seconds=now.getSeconds();
		var timeValue=""+((hours>12)?hours-12:hours);
		timeValue+=((minutes<10)?":0":":")+minutes;
		timeValue+=((seconds<10)?":0":":")+seconds;
		timeValue+=(hours>=12)?"P.M.":"A.M";
		tt.value=timeValue;
		timerID=setTimeout("showtime()",1000);
		timerRunning=true;
	}
	function startclock(){
		stopclock();
		showtime();
	}*/
	window.setInterval('showTime()',1000)
	function showTime()
	{
		var enabled = 0; 
		today = new Date();
		var day; 
		var date;
		if(today.getDay()==0) day = "星期日"
		if(today.getDay()==1) day = "星期一"
		if(today.getDay()==2) day = "星期二"
		if(today.getDay()==3) day = "星期三"
		if(today.getDay()==4) day = "星期四"
		if(today.getDay()==5) day = "星期五"
		if(today.getDay()==6) day = "星期六"
		date = (today.getYear()) + "年" + (today.getMonth() + 1 ) + "月" + today.getDate() + "日 " + 
		day+"  "+today.getHours()+":"+today.getMinutes()+":"+today.getSeconds();
		document.getElementById("time").innerHTML=date;
	}
	function toBusiness(){
		parent.window.location="tiaozhuan!business";
	}
	function toSystem(){
		parent.window.location="tiaozhuan!system";
	}
	function toTop(){
		parent.window.location="employee!getTongxunlu";
	}
	function toDatabase(){
		parent.window.location="tiaozhuan!database";
	}
	function toDeploy(){
		parent.window.location="tiaozhuan!deploy";
	}
	function main()
	{
		parent.window.location="tiaozhuan!main";
	}
	function toReturn()
	{
		parent.window.location="tiaozhuan!index";
	}
	/*function toRevise()
	{
		parent.window.location="xiugai1.html";
	}*/
--></script>
</head>

<body onLoad="showTime()">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="70" background="admin/mimages/main_05.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="24" background="admin/mimages/main_03.gif">&nbsp;</td>
            <td width="505" background="admin/mimages/main_04.gif">&nbsp;</td>
            <td>&nbsp;</td>
            <td width="21"><img src="admin/mimages/main_07.gif" width="21" height="24"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="38" background="admin/mimages/main_09.jpg">&nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="77%" height="25" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
				  	<td width="30" height="19"><div align="center"><img src="admin/mimages/main_23.jpg" width="85" height="21"></div></td>
					<td width="30" height="19"><div align="center"><img src="admin/mimages/main_24.jpg" width="85" height="21"></div></td>
                    <td width="50" height="19" onClick="main()"><div align="center"><img src="admin/mimages/main_12.jpg" width="49" height="21"></div></td>
                    <td width="50" onclick= "history.go(-1)"><div align="center"><img src="admin/mimages/main_14.jpg" width="49" height="21"></div></td>
                    <td width="50" onclick= "history.go(+1)"><div align="center"><img src="admin/mimages/main_16.jpg" width="49" height="21"></div></td>
                    <td width="50"><div align="center" ><img src="admin/mimages/main_18.jpg" width="49" height="21" onClick="javascript:location.href=window.location.href;" ></div></td>
                    <td width="50" onClick="toReturn()"><div align="center"><img src="admin/mimages/main_20.jpg" width="49" height="21"></div></td>
				  
                   <!-- <td width="100" onClick="toRevise()"><div align="center"><img src="admin/mimages/main_26.jpg" width="98" height="21"></div></td> --> 
                    <td width="30"><div align="center"><img src="admin/mimages/main_23.jpg" width="85" height="21"></div></td>
					 <td width="30"><div align="center"><img src="admin/mimages/main_24.jpg" width="85" height="21"></div></td>
                  </tr>
                </table></td>
                <td width="220" valign="bottom"  nowrap="nowrap"><div align="right"><span class="STYLE1"> <div id="time"></div></span></div></td>
              </tr>
            </table></td>
            <td width="21"><img src="admin/mimages/main_11.jpg" width="21" height="38"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="8" style=" line-height:8px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" background="admin/mimages/main_29.gif" style=" line-height:8px;">&nbsp;</td>
            <td width="505" background="admin/mimages/main_30.gif" style=" line-height:8px;">&nbsp;</td>
            <td style=" line-height:8px;">&nbsp;</td>
            <td width="21" style=" line-height:8px;"><img src="admin/mimages/main_31.gif" width="21" height="8"></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="28" background="admin/mimages/main_36.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" height="28" background="admin/mimages/main_32.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20%"  height="22">&nbsp;</td>
            <td width="59%" valign="bottom"><div align="center" class="STYLE1">当前用户：</div></td>
            <td width="21%">&nbsp;</td>
          </tr>
        </table></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="58" height="28"></td>
				 <td width="21"><img src="admin/mimages/main_37.gif" width="21" height="28"></td>
				 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
				 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
				 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
				 <td><input type="button" value="业务管理" onClick="toBusiness(this.value)"/></td>
				 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
				 <td><input type="button" value="系统介绍" onClick="toSystem(this.value);"/></td>
				 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
				 <td><input type="button" value="数据管理" onClick="toDatabase(this.value);"/></td>
				 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
				 <td><input type="button" value="通讯录" onClick="toTop(this.value);"/></td>
				 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
				 <td><input type="button" value="系统配置" onClick="toDeploy(this.value);"/></td>					
        </tr>
              
    </table></td>
  </tr>
</table>
</body>
</html>

