<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���в�����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:���ƣ�
     <input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
    ���ң�<%=Info.getselect("keshi","keshixinxi","keshi"," 1=1 ")%>
  ״̬��
   <select name='zhuangtai' id='zhuangtai' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="δס">δס</option><option value="��ס">��ס</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>״̬</td>
    <td bgcolor='#CCFFFF'>��ע</td>
    
    
	<td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"chuangweixinxi"); 
    String url = "chuangweixinxi_list.jsp?1=1"; 
    String sql =  "select * from chuangweixinxi where 1=1";
	if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+request.getParameter("mingcheng")+"%'";}

if(request.getParameter("zhuangtai")=="" ||request.getParameter("zhuangtai")==null ){}else{sql=sql+" and zhuangtai like '%"+request.getParameter("zhuangtai")+"%'";}
if(request.getParameter("keshi")=="" ||request.getParameter("keshi")==null ){}else{sql=sql+" and keshi like '%"+request.getParameter("keshi")+"%'";}

    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("mingcheng") %></td>
    <td><%=map.get("keshi") %></td>
    <td><%=map.get("fanghao") %></td>
    <td><%=map.get("chuanghao") %></td>
    <td><%=map.get("zhuangtai") %></td>
    <td><%=map.get("beizhu") %></td>
    
	<td width="60" align="center"><a href="chuangweixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="chuangweixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="chuangweixinxidetail.jsp?id=<%=map.get("id")%>" target="_blank"></a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

