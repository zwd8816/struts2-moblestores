<%@ page language="java" import="java.util.*,com.moblestores.po.*" pageEncoding="gb2312"%>
<%@ page errorPage="systeminfodisplay/error.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>left</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<%UserInfo userinfo=(UserInfo)session.getAttribute("user"); %>

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
	color: #FFFFFF;
}
.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
-->

.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px 
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
}
a:link {
color:#FFFFFF;
}
a:visited {
color:#FFFFFF;
}
a:hover {
color:#FFFFFF;
}
a:active {
color:#FFFFFF;
}
</style>

<script>

function showsubmenu(sid)
{
	whichEl = eval("submenu" + sid);
	imgmenu = eval("imgmenu" + sid);
	if (whichEl.style.display == "none")
	{
		eval("submenu" + sid + ".style.display=\"\";");
		imgmenu.background="admin/mimages/main_47.gif";
	}
	else
	{
		eval("submenu" + sid + ".style.display=\"none\";");
		imgmenu.background="admin/mimages/main_48.gif";
	}
}
	
function xiugai(){
	self.window.location="xiugai.html";	

}

function passxiugai(){
	self.window.location="pasxiugai.html";	
}

</script> 
  </head>
  


<body>
<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" background="admin/mimages/main_40.jpg"><div align="center"><%=userinfo.getUser_name()%></div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
     		 <tr>
       			 <td width="19%">&nbsp;</td>
      			 <td width="81%" height="20">&nbsp;</td>
    		 </tr>
   		</table>
	</td>
  </tr>
  <tr>
    <td valign="top"><table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
            		<td height="23" background="admin/mimages/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand">			
						<table width="100%" border="0" cellspacing="0" cellpadding="0">              
			 				<tr>
                				<td width="18%">&nbsp;</td>
                				<td width="82%" class="STYLE1">用户管理</td>
             				 </tr>			  
            			</table>			
					</td>			
          		</tr>
				<tr>
            		<td background="admin/mimages/main_51.gif" id="submenu1">
			 			<div class="sec_menu" >  
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
            					<tr>
                					<td>
										<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
										
										<tr>
                    							<td height="23">
													<div align="center"><img src="admin/mimages/left.gif" width="10" height="10" />
													</div>
												</td>
                    							<td height="23">
													<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        								<tr>
                          									<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          									<a href="user_action!show" target="bottomFrame" style="border:0px solid #000000">
                          									<span class="STYLE3">显示所有用户</span>
															</a>
															</td>
                        								</tr>
                    								</table>
												</td>
                 							 </tr>
                 							 
                 							 
											<tr>
                    							<td width="16%" height="25">
													<div align="center"><img src="admin/mimages/left.gif" width="10" height="10" />
													</div>
												</td>
                    							<td width="84%" height="23">					
													<table width="95%" border="0" cellspacing="0" cellpadding="0">
														<tr>
                          									<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                                                            <a href="admin/users/user_add.jsp" target="bottomFrame" style="border:0px solid #000000">
                                                            <span class="STYLE3">新增用户</span>
                                                            </a>
                        								</tr>						
                    								</table>
												</td>
											</tr>
											
											
											
											 
										


									</table>
								</td>
							</tr>
							<tr>
                				<td height="5"><img src="admin/mimages/main_52.gif" width="151" height="5" />
								</td>
              				</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
            	<td height="23" background="admin/mimages/main_47.gif" id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:hand">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
                		<tr>
                  			<td width="18%">&nbsp;</td>
                  			<td width="82%" class="STYLE1">书籍管理</td>
                		</tr>
            		</table>
				</td>
          </tr>		  	  
          <tr>
            <td background="view/mimages/main_51.gif" id="submenu2"><div class="sec_menu" >
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
               	  <tr>
                    <td>
						<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
							   <td width="16%" height="25"><div align="center"><img src="admin/mimages/left.gif" width="10" height="10" /></div>
								</td>
									<td width="84%" height="23">
										<table width="95%" border="0" cellspacing="0" cellpadding="0">
                            				<tr>
                              					<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                              				   <a href="user_action?pb.pageNow=1"  target="bottomFrame" style="border:0px solid #000000">
                              					<span class="STYLE3">显示所有书籍</span>
                              					</a>
												</td>                           
											</tr>
										</table>
								</td>
                      		</tr>
								

                      		<tr>
							<td width="16%" height="25"><div align="center"><img src="admin/mimages/left.gif" width="10" height="10" /></div>
							</td>
							<td width="84%" height="23">
							<table width="95%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                            <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                            <a href="admin/books/book_add.jsp" target="bottomFrame" style="border:0px solid #000000">
                            <span class="STYLE3">新建书籍</span>
                            </a>
							</td>                           
							</tr>
							</table>
							</td>
                      		</tr>		
                      		
                      		
                      		<tr>
							<td width="16%" height="25"><div align="center"><img src="admin/mimages/left.gif" width="10" height="10" /></div>
							</td>
							<td width="84%" height="23">
							<table width="95%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                            <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                            <a href="admin/books/test.jsp" target="bottomFrame" style="border:0px solid #000000">
                            <span class="STYLE3">Test</span>
                            </a>
							</td>                           
							</tr>
							</table>
							</td>
                      		</tr>		
						</table>
					</td>
                  </tr>
			
				  <tr>
                    <td height="5"><img src="admin/mimages/main_52.gif" width="151" height="5" />
					</td>
                  </tr>
             </table>
             </div>
		</td>
      </tr>
   </table>
  </td>
 </tr>
    

      
      

							
												

      
      
      
		
	  
	  
	  
	</table>
	</td>
  	</tr>
</table>

 </body>
</html>
