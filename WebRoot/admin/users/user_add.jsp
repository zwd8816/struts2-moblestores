<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�����û�</title>
    
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
				alert("�û�������Ϊ�գ�");
				return false;
			}else if(uservalue.length>20){
				alert("�û������ͳ���Ϊ20�����������룡");
				return false;
			}
			if(userwdvalue.length == 0){
				alert("���벻��Ϊ�գ�");
				return false;
			}else if(userwdvalue.length>20){
				alert("�û������ͳ���Ϊ20�����������룡");
				return false;
			}else if(userwdvalue<0){
				alert("�������벻�淶�����������룡");
				return false;
			}
			
			if(userwdvalue2.length == 0){
				alert("��ȷ������!");
				return false;
			}else if(userwdvalue2!=userwdvalue){
				alert("�������벻һ��!");
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
		<font size="5" face="���Ŀ���">�����û���Ϣ</font>
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
      <td align="center" ><font size="3">�û���</font></td>
      <td><input type="text" name="ucondition.user_name" id="user"/></td>
    </tr>
    
    <tr>
      <td align="center"><font size="3">��&nbsp;��</font></td>
      <td><input type="password" name="ucondition.user_passwd" id="userwd"/></td>
    </tr>
    
     <tr>
      <td align="center"><font size="3">ȷ������</font></td>
      <td><input type="password" id="userwd2"/></td>
    </tr>
    
    <tr>
      <td colspan="2" align="center">
      <input type="submit" name="bianhao2" onclick="return checkForm();" value="ȷ�����" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset"  value="����" id="reset" />
      </td>
    </tr>
    
  </table>
</form>
</body>
</html>

