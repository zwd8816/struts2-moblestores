<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�����鼮</title>
    
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
		<font size="5" face="���Ŀ���">�����鼮��Ϣ</font>
		<hr style="border-color:#00B000; width:1050px  " >
		</div>
		<div>
		<br /><br />
		</div>
		
<form method="post"  enctype="multipart/form-data" action="book_action">

  <table width="1050" border="1" align="center">
    <tr></tr>
    <tr></tr>
    <tr></tr>
    
    
    <tr>
      <td align="center" ><font size="3">�鼮����</font></td>
      <td><input type="text" name="bcondition.book_title" id="type"/></td>
    </tr>
    
    <tr>
      <td align="center" ><font size="3">�鼮����</font></td>
      <td><input type="text" name="bcondition.book_description" id="type" /></td>
    </tr>
    
    <tr>
      <td align="center" ><font size="3">�鼮ͼƬ</font></td>
      <td>
       <s:file name="file"></s:file>
      </td>
    </tr>  
    
    <tr>
      <td align="center" ><font size="3">�鼮·��</font></td>
       <td>
        <s:file name="file"></s:file>
       </td>
    </tr> 

    
    <tr>
      <td colspan="2" align="center">
      <input type="submit" name="bianhao2" value="ȷ���ύ" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset"  value="����" id="reset" />
      </td>
    </tr>
    
  </table>
</form>
</body>
</html>

