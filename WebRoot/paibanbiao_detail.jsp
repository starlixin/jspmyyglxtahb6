<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�Ű����ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"paibanbiao");
     %>
  �Ű����ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>��ţ�</td><td width='39%'><%=m.get("bianhao")%></td><td width='11%'>ҽ����ţ�</td><td width='39%'><%=m.get("yishengbianhao")%></td></tr><tr><td width='11%'>ҽ��������</td><td width='39%'><%=m.get("yishengxingming")%></td><td width='11%'>���ڣ�</td><td width='39%'><%=m.get("riqi")%></td></tr><tr><td width='11%'>���ڣ�</td><td width='39%'><%=m.get("xingqi")%></td><td width='11%'>ʱ�Σ�</td><td width='39%'><%=m.get("shiduan")%></td></tr><tr><td width='11%'>ʣ��ţ�</td><td width='39%'><%=m.get("shengyuhao")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


