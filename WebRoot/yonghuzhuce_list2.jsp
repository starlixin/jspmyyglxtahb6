<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�û�ע��</title><LINK href="css.css" type=text/css rel=stylesheet>
  </head>
  <body >
  <p>������Ϣ�б�</p>
  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="44" bgcolor='#CCFFFF'>�û���</td>
    <td width="30" bgcolor='#CCFFFF'>����</td>
    <td width="30" bgcolor='#CCFFFF'>����</td>
    <td width="30" bgcolor='#CCFFFF'>�Ա�</td>
    <td width="59" bgcolor='#CCFFFF'>��������</td>
    <td width="22" bgcolor='#CCFFFF'>QQ</td>
    <td width="30" bgcolor='#CCFFFF'>����</td>
    <td width="38" bgcolor='#CCFFFF'>�绰</td>
    <td width="78" bgcolor='#CCFFFF'>���֤</td>
    <td width="94" bgcolor='#CCFFFF'>ͷ��</td>
    <td width="82" bgcolor='#CCFFFF'>��ַ</td>
    <td width="55" bgcolor='#CCFFFF'>��ע</td>
    <td width="71" align="center" bgcolor="CCFFFF">����</td>
  </tr>
   <% 
   new CommDAO().delete(request,"yonghuzhuce"); 
    String url = "yonghuzhuce_list.jsp?1=1"; 
    String sql =  "select * from yonghuzhuce where yonghuming='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming").trim()+"%'";}
	if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming").trim()+"%'";}
	if(request.getParameter("QQ")=="" ||request.getParameter("QQ")==null ){}else{sql=sql+" and QQ like '%"+request.getParameter("QQ").trim()+"%'";}
	if(request.getParameter("youxiang")=="" ||request.getParameter("youxiang")==null ){}else{sql=sql+" and youxiang like '%"+request.getParameter("youxiang").trim()+"%'";}
	if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+request.getParameter("dianhua").trim()+"%'";}
	if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng").trim()+"%'";}
    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,10,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td><%=map.get("yonghuming") %></td><td><%=map.get("mima") %></td><td><%=map.get("xingming") %></td><td><%=map.get("xingbie") %></td><td><%=map.get("chushengnianyue") %></td><td><%=map.get("QQ") %></td><td><%=map.get("youxiang") %></td><td><%=map.get("dianhua") %></td><td><%=map.get("shenfenzheng") %></td><td><a href='<%=map.get("touxiang") %>' target='_blank'><img src='<%=map.get("touxiang") %>' width=88 height=99 border=0 /></a></td><td><%=map.get("dizhi") %></td><td><%=map.get("beizhu") %></td>
    <td width="71" align="center"><a href="yonghuzhuce_updt2.jsp?id=<%=map.get("id")%>">�޸�</a></td>
  </tr>
  	<%
 
   }
   %>
</table>
<br>
</body>
</html>
