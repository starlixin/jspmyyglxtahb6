<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ҽ����Ϣ��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yishengxinxi");
     %>
  ҽ����Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>ҽ����ţ�</td><td width='39%'><%=m.get("yishengbianhao")%></td><td  rowspan=8 align=center><a href=<%=m.get("zhaopian")%> target=_blank><img src=<%=m.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>���룺</td><td width='39%'><%=m.get("mima")%></td></tr><tr><td width='11%' height=44>ҽ��������</td><td width='39%'><%=m.get("yishengxingming")%></td></tr><tr><td width='11%' height=44>�Ա�</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr><td width='11%' height=44>���ң�</td><td width='39%'><%=m.get("keshi")%></td></tr><tr><td width='11%' height=44>ְ�ƣ�</td><td width='39%'><%=m.get("zhicheng")%></td></tr><tr><td width='11%' height=44>��ҵԺУ��</td><td width='39%'><%=m.get("biyeyuanxiao")%></td></tr><tr><td width='11%' height=44>ҽ�䣺</td><td width='39%'><%=m.get("yiling")%></td></tr><tr><td width='11%' height=100  >ҽ����飺</td><td width='39%' colspan=2 height=100 ><%=m.get("yishengjianjie")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


