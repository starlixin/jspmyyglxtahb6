<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ҩƷ��Ϣ��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yaopinxinxi");
     %>
  ҩƷ��Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>ҩƷ��ţ�</td><td width='39%'><%=m.get("yaopinbianhao")%></td>
<td width='11%'>ҩƷ���ƣ�</td><td width='39%'><%=m.get("yaopinmingcheng")%></td></tr><tr>
<td width='11%'>���</td><td width='39%'><%=m.get("leibie")%></td>
<td width='11%'>��Ӧ�̣�</td><td width='39%'><%=m.get("gongyingshang")%></td></tr><tr>
<td width='11%'>�������ڣ�</td><td width='39%'><%=m.get("shengchanriqi")%></td>
<td width='11%'>��Ч�ڣ�</td><td width='39%'><%=m.get("youxiaoqi")%></td></tr><tr>
<td width='11%'>��Ҫ�ɷ֣�</td><td width='39%'><%=m.get("zhuyaochengfen")%></td>
<td width='11%'>���</td><td width='39%'><%=m.get("guige")%></td></tr><tr>
<td width='11%'>��λ��</td><td width='39%'><%=m.get("danwei")%></td>
<td width='11%'>�۸�</td><td width='39%'><%=m.get("jiage")%></td></tr><tr>
  <td>��棺</td>
  <td><%=m.get("kucun")%></td>
<td width='11%'>&nbsp;</td>
<td width='39%'>&nbsp;</td>
</tr><tr>
<td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td>
<td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
  </table>

  </body>
</html>


