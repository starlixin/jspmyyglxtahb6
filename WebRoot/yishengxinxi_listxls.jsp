<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yishengxinxi.xls");
%>
<html>
  <head>
    <title>ҽ����Ϣ</title>
  </head>

  <body >
  <p>����ҽ����Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ҽ�����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>ҽ������</td>    <td bgcolor='#CCFFFF' width='40' align='center'>�Ա�</td>    <td bgcolor='#CCFFFF' width='90' align='center'>��Ƭ</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>ְ��</td>    <td bgcolor='#CCFFFF'>��ҵԺУ</td>    <td bgcolor='#CCFFFF'>ҽ��</td>        
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 

    String url = "yishengxinxi_list.jsp?1=1"; 
    String sql =  "select * from yishengxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yishengbianhao") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("yishengxingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td width='90' align='center'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("keshi") %></td>    <td><%=map.get("zhicheng") %></td>    <td><%=map.get("biyeyuanxiao") %></td>    <td><%=map.get("yiling") %></td>        
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

