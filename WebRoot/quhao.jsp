<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>ȡ�ž���</title>
  </head>
  <body>
 <%
 
  String sql="update yuyueyisheng set zhuangtai='��ȡ��'  where yuyuehao='"+request.getParameter("yuyuehao")+"'";
new CommDAO().commOper(sql); 
 
 
 
out.print("<script>alert('ȡ�ųɹ�!!');location.href='"+request.getHeader("Referer")+"';</script>");

%>
  </body>
</html>


