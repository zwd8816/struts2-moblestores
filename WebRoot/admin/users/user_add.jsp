<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增用户</title>
    
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
			
			var uservalue=document.getElementById("user").value;
			var userwdvalue=document.getElementById("userwd").value
			var userwdvalue2=document.getElementById("userwd2").value
			
			if(uservalue.length == 0){
				alert("用户名不能为空！");
				return false;
			}else if(uservalue.length>20){
				alert("用户名类型长度为20，请重新输入！");
				return false;
			}
			if(userwdvalue.length == 0){
				alert("密码不能为空！");
				return false;
			}else if(userwdvalue.length>20){
				alert("用户名类型长度为20，请重新输入！");
				return false;
			}else if(userwdvalue<0){
				alert("密码输入不规范，请重新输入！");
				return false;
			}
			
			if(userwdvalue2.length == 0){
				alert("请确认密码!");
				return false;
			}else if(userwdvalue2!=userwdvalue){
				alert("两次密码不一致!");
				return false;
			}
			
		
			
		}
		
	</script>

  </head>
  
  <body background="view/displayimages/login03.jpg">
 		<div align="center">
		<br /> <br /> <br />
		</div>
		<div align="center">
		<font size="5" face="华文楷体">增加用户信息</font>
		<hr style="border-color:#00B000; width:1050px  " >
		</div>
		<div>
		<br /><br />
		</div>
		
<form method="post" action="user_action!addUser" onsubmit="return checkform()">
 
  <table width="1050" border="1" align="center">
    <tr></tr>
    <tr></tr>
    <tr></tr>
    
    <tr>
      <td align="center" ><font size="3">用户名</font></td>
      <td><input type="text" name="ucondition.user_name" id="user"/></td>
    </tr>
    
    <tr>
      <td align="center"><font size="3">密&nbsp;码</font></td>
      <td><input type="password" name="ucondition.user_passwd" id="userwd"/></td>
    </tr>
    
     <tr>
      <td align="center"><font size="3">确认密码</font></td>
      <td><input type="password" id="userwd2"/></td>
    </tr>
    
    <tr>
      <td colspan="2" align="center">
      <input type="submit" name="bianhao2" onclick="return checkForm();" value="确认添加" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset"  value="重置" id="reset" />
      </td>
    </tr>
    
  </table>
</form>
</body>
</html>

