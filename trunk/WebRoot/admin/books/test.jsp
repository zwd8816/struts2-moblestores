<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�ϴ��ļ�</title>
	</head>
	<body>
	<!-- �ϴ��ļ������� -->
	<s:form action="upload" method="post" enctype="multipart/form-data">
    <tr>
	<!-- �ϴ��ļ���ǩ���� -->
	<td>�ϴ��ļ�:<s:file name="file"></s:file></td>
	</tr>
	<tr>
	<td align="left"><s:submit name="submit" value="�ύ"></s:submit></td>
	</tr>
	</s:form>
	</body>
</html>