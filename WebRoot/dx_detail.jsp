<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>医院管理系统</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<link href="qtimages/css/sub.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>

<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
 <%
//  String lb=request.getParameter("lb");
  String lb=new String(request.getParameter("lb").getBytes("8859_1"));
   %>
<%@ include file="qttop.jsp"%>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name"><%=lb%></div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con">
			
			<%
    HashMap m = new CommDAO().getmaps("leibie",lb,"dx");
     %>
                      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
                        <tr>
                          <td height="110" align="left"><%=m.get("content") %></td>
                        </tr>
                        <tr>
                          <td height="33" align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();" ></td>
                        </tr>
                      </table>
						  
			</div>
			</div>	
		</div>
	</div>		
</div>
<%@ include file="qtdown.jsp"%>


</body>
</html>

