<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�Ű��</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>�����Ű���б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��ţ�<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ҽ����ţ�<input name="yishengbianhao" type="text" id="yishengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ҽ��������<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" />  ���ڣ�<input name="riqi1" type="text" id="riqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="riqi2" type="text" id="riqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' /> ʱ�Σ�<select name='shiduan' id='shiduan' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="����">����</option><option value="����">����</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='paibanbiao_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td>    <td bgcolor='#CCFFFF'>ҽ�����</td>    <td bgcolor='#CCFFFF'>ҽ������</td>    <td bgcolor='#CCFFFF' width='65' align='center'>����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>ʱ��</td>    <td bgcolor='#CCFFFF'>ʣ���</td>    
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"paibanbiao"); 
    String url = "paibanbiao_list.jsp?1=1"; 
    String sql =  "select * from paibanbiao where 1=1";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}if(request.getParameter("yishengbianhao")=="" ||request.getParameter("yishengbianhao")==null ){}else{sql=sql+" and yishengbianhao like '%"+request.getParameter("yishengbianhao")+"%'";}if(request.getParameter("yishengxingming")=="" ||request.getParameter("yishengxingming")==null ){}else{sql=sql+" and yishengxingming like '%"+request.getParameter("yishengxingming")+"%'";}if (request.getParameter("riqi1")==""  ||request.getParameter("riqi1")==null ) {}else{sql=sql+" and riqi >= '"+request.getParameter("riqi1")+"'";}if (request.getParameter("riqi2")==""  ||request.getParameter("riqi2")==null ) {}else {sql=sql+" and riqi <= '"+request.getParameter("riqi2")+"'";}if(request.getParameter("shiduan")=="" ||request.getParameter("shiduan")==null ){}else{sql=sql+" and shiduan like '%"+request.getParameter("shiduan")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("yishengbianhao") %></td>    <td><%=map.get("yishengxingming") %></td>    <td><%=map.get("riqi") %></td>    <td><%=map.get("xingqi") %></td>    <td><%=map.get("shiduan") %></td>    <td><%=map.get("shengyuhao") %></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="paibanbiao_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="paibanbiao_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="paibanbiaodetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

