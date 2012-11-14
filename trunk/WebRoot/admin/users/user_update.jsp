<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>编辑用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	
		function checkform(){
			
			var type=document.getElementById("type").value;
			var base=document.getElementById("base").value;
			var time=document.getElementById("time").value;
			
		}
		
	</script>

  </head>
  
  <body background="view/displayimages/login03.jpg">
 		<div align="center">
		<br /> <br /> <br />
		</div>
		<div align="center">
		<font size="5" face="华文楷体">编辑用户信息</font>
		<hr style="border-color:#00B000; width:1050px  " >
		</div>
		<div>
		<br /><br />
		</div>
		
<form method="post" action="user_action!updateUser.action" onsubmit="return checkform()">
 
  <table width="1050" border="1" align="center">
    <tr></tr>
    <tr></tr>
    <tr></tr>
    
        <tr>
      <td align="center" ><font size="3">用户ID</font></td>
      <td><input type="text" name="ucondition.user_id" id="type" value="${ureader.user_id}" readonly/></td>
    </tr>
    
    <tr>
      <td align="center" ><font size="3">用户名</font></td>
      <td><input type="text" name="ucondition.user_name" id="type" value="${ureader.user_name}"/></td>
    </tr>
    
    <tr>
      <td align="center"><font size="3">密&nbsp;码</font></td>
      <td><input type="password" name="ucondition.user_passwd" id="base" value="${ureader.user_passwd}}"/></td>
    </tr>
    
    <tr>
      <td colspan="2" align="center">
      <input type="submit" name="bianhao2" value="确认提交" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset"  value="重置" id="reset" />
      </td>
    </tr>
    
  </table>
</form>
</body>
</html>

