<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<div class="header">
	<div class="wrap">
		<div class="head_top">
			<div class="logo fl"><a href="#"><img src="qtimages/logo.gif" width="79" height="78"/></a></div>
			<div style="position:absolute; top:30px; margin-left:130px;">
				<div style="font-family:����; color:#cccc; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="left">ҽԺ����ϵͳ</div>
                </div>
			</div>
			<div style="float:right"> 
			<%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
               <a href="userlog.jsp">�û���½</a> | <a href="userreg.jsp">�û�ע��</a>
				    <%}else{ %>
				��ǰ�û�:<%=request.getSession().getAttribute("username")%>,Ȩ��:<%=request.getSession().getAttribute("cx")%>; <a href="logout.jsp">�˳�</a>|<a href="main.jsp">���˺�̨</a>
				 <%} %>
				  
			
			
			</div>
			<div class="phone fr"></div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="nav_bar">
		<div class="wrap">
			<div class="nav">
				<ul>
					<li id="m1" class="m"><h3><a href="index.jsp">��ҳ</a></h3></li>
					
					<li id="m4" class="m"><h3><a href="news.jsp?lb=��ҽָ��">��ҽָ��</a></h3></li>
					<li id="m4" class="m"><h3><a href="paibanbiaolist.jsp">ҽ���Ű�</a></h3></li>
					<li id="m4" class="m"><h3><a href="yishengxinxilisttp.jsp">ҽ����Ϣ</a></h3></li> 
					<li id="m4" class="m"><h3><a href="dx_detail.jsp?lb=��������">��������</a></h3></li>
					<li id="m2" class="m">
						<h3><a >��������</a></h3>
						<ul class="sub">
						  <li><a href="lyb.jsp">��Ҫ����</a></li>
						  <li><a href="lyblist.jsp">�鿴����</a></li>

						</ul>
					</li>
					<li id="m4" class="m"><h3><a href="login.jsp">��̨����</a></h3></li>
				</ul>
			</div>
			
			<div class="clear"></div>
		</div>
	</div>
</div>

<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;
 </script>
