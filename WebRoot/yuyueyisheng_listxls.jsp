<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yuyueyisheng.xls");
%>
<html>
  <head>
    <title>ԤԼҽ��</title>
  </head>

  <body >
  <p>����ԤԼҽ���б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ԤԼ��</td>    <td bgcolor='#CCFFFF'>���</td>    <td bgcolor='#CCFFFF'>ҽ�����</td>    <td bgcolor='#CCFFFF'>ҽ������</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>ʱ��</td>    <td bgcolor='#CCFFFF'>ԤԼʱ��</td>    <td bgcolor='#CCFFFF'>�û���</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>���֤</td>    <td bgcolor='#CCFFFF'>�ֻ�</td>    <td bgcolor='#CCFFFF'>״̬</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 

    String url = "yuyueyisheng_list.jsp?1=1"; 
    String sql =  "select * from yuyueyisheng where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuyuehao") %></td>    <td><%=map.get("bianhao") %></td>    <td><%=map.get("yishengbianhao") %></td>    <td><%=map.get("yishengxingming") %></td>    <td><%=map.get("riqi") %></td>    <td><%=map.get("xingqi") %></td>    <td><%=map.get("shiduan") %></td>    <td><%=map.get("yuyueshijian") %></td>    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("zhuangtai") %></td>    
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

