<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="view/displayimages/login03.jpg">
 <br />
 <br />
  <br />
 <br />
  <br />
 <br />
  <br />
 <br />
  <table align="center">
  	<tr>
  	<td align="center">
  	<font size="+5"  color="#8D8BDC" face="华文楷体">系统数据加载中........</br>如果由于网络原因，数据无法加载，请刷新整个页面后重试！<br></font>
  	</td>
  	</tr>
  </table>
  </body>

</html>