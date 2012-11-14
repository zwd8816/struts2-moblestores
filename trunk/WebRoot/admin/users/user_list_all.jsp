<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示所有用户列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
table.admintable {
border:3px solid #AEDEF2;
border-collapse: collapse;
}
th.adminth {
width: 671px;
color: #0066cc;
background-color: #eef6fe;
font-size:18px;
color:#05B;
border:1px solid #AEDEF2;
filter: progid:DXImageTransform.Microsoft.gradient(startColorStr=#AEDEF2,endColorStr=ghostwhite);
}
td.admincls0 {
border:1.5px solid #AEDEF2;
background:ghostwhite;
font-size:15px;
font-family: 新宋体;
color: #333;
}
td.admincls1 {
border:1.5px solid #AEDEF2;
background:#DAF0F1;
font-size:15px;
font-family: 新宋体;
color: #333;
}
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
#Layer1 {
	position:absolute;
	left:81px;
	top:179px;
	width:1104px;
	height:539px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:79px;
	top:100px;
	width:1188px;
	height:67px;
	z-index:2;
}
-->
</style>
	
	<script type="text/javascript">
	
	function checkDel(){
     if(confirm("确定要删除吗？")){
     return true;
     }else
     return false;
     }
	  	function senfe(o,a,b,c,d){
	 		var t=document.getElementById(o).getElementsByTagName("tr");
	 		for(var i=0;i<t.length;i++){
	  			t[i].style.backgroundColor=(t[i].sectionRowIndex%2==0)?a:b;
	 			t[i].onclick=function(){
	   				if(this.x!="1"){
	    			this.x="1";//本来打算直接用背景色判断，FF获取到的背景是RGB值，不好判断
	    			this.style.backgroundColor=d;
	   				}else{
	   				 this.x="0";
	    			this.style.backgroundColor=(this.sectionRowIndex%2==0)?a:b;
	   				}
	  			}
	 		t[i].onmouseover=function(){
		   	if(this.x!="1")this.style.backgroundColor=c;
		  	}
	  		t[i].onmouseout=function(){
	  		if(this.x!="1")	
	  		this.style.backgroundColor=(this.sectionRowIndex%2==0)?a:b;
	  		}
		}
		}
  	</script>
  </head>
  
<body  background="admin/displayimages/login03.jpg">
		


	<table align="center" class="admintable" border="3" bordercolor="#00CCFF" cellpadding="2" cellspacing="2" height="10" id="senfe">
		
		<tr height="30">
				<th class="adminth">用户ID</th>
				<th class="adminth">用户名</th>
				<th class="adminth">用户密码</th>
				<th class="adminth">创建时间</th>
				<th class="adminth">操作</th>
		
	
				
		</tr>
		
	
			<s:iterator value="userlistshow" id="o">
				<tr  height="22" align="center" >
					<td>
						${o.user_id}
					</td>
					<td>
						${o.user_name}
					</td>
					
					<td>
						${o.user_passwd}
					</td>
					   
					<td>
					 ${o.create_time}
					</td>
					
					<td>
					<a href="user_action!loadUser.action?ucondition.user_id=${o.user_id}"> 修改</a>

				    <a  href="user_action!deleteUser.action?ucondition.user_id=${o.user_id}" onclick="return checkDel()" > 删除</a>
					</td>
				</tr>
			</s:iterator>
</table>
<div align="center">
  <br/>
      共${pb.totalRows}条记录&nbsp;
     <font color="#ff0000">${a }</font>&nbsp;<a href="user_action?pb.pageNow=1"> 第一页</a>&nbsp;
     <a href="user_action?pb.pageNow=${pb.pageNow-1 }" style="">上一页</a>&nbsp;
     <a href="user_action?pb.pageNow=${pb.pageNow+1 }">下一页</a>&nbsp;
     <a href="user_action?pb.pageNow=${pb.totalPages}">最后一页</a>&nbsp;<font color="#ff0000">${b}</font>&nbsp; 
     第${pb.pageNow }/${pb.totalPages }页
     </div>
       <script language="javascript"><!--
//senfe("表格名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景");
senfe("senfe","ghostwhite","#DAF0F1","#D2D2FF","#FCFDC1");
--></script>
</body>
</html>
