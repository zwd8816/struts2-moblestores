<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>�ֻ�����ϵͳ</title>

      <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	</head>

<frameset rows="98,*" frameborder="no" border="0" framespacing="0">
  <frame src="admin/top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" />
  <frameset cols="198,*" frameborder="no" border="0" framespacing="0">
  	<frame src="admin/left.jsp" name="mainFrame" id="mainFrame" />
       <frame src="admin/right.jsp" name="bottomFrame" scrolling="Yes" noresize="noresize" id="bottomFrame" />
</frameset>
</frameset>
<body>
</body>

</html>
