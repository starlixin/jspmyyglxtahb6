<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ԤԼҽ����ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yuyueyisheng");
     %>
  ԤԼҽ����ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>ԤԼ�ţ�</td><td width='39%'><%=m.get("yuyuehao")%></td><td width='11%'>��ţ�</td><td width='39%'><%=m.get("bianhao")%></td></tr><tr><td width='11%'>ҽ����ţ�</td><td width='39%'><%=m.get("yishengbianhao")%></td><td width='11%'>ҽ��������</td><td width='39%'><%=m.get("yishengxingming")%></td></tr><tr><td width='11%'>���ڣ�</td><td width='39%'><%=m.get("riqi")%></td><td width='11%'>���ڣ�</td><td width='39%'><%=m.get("xingqi")%></td></tr><tr><td width='11%'>ʱ�Σ�</td><td width='39%'><%=m.get("shiduan")%></td><td width='11%'>ԤԼʱ�䣺</td><td width='39%'><%=m.get("yuyueshijian")%></td></tr><tr><td width='11%'>�û�����</td><td width='39%'><%=m.get("yonghuming")%></td><td width='11%'>������</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%'>���֤��</td><td width='39%'><%=m.get("shenfenzheng")%></td><td width='11%'>�ֻ���</td><td width='39%'><%=m.get("shouji")%></td></tr><tr><td width='11%'>״̬��</td><td width='39%'><%=m.get("zhuangtai")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


