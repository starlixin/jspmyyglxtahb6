<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ҽ����Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����ҽ����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ҽ����ţ�<input name="yishengbianhao" type="text" id="yishengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ҽ��������<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" /> �Ա�<select name='xingbie' id='xingbie' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  ���ң�<%=Info.getselect("keshi","keshixinxi","keshi"," 1=1 ")%>  ְ�ƣ�<input name="zhicheng" type="text" id="zhicheng" style='border:solid 1px #000000; color:#666666' size="12" />  ��ҵԺУ��<input name="biyeyuanxiao" type="text" id="biyeyuanxiao" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yishengxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ҽ�����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>ҽ������</td>    <td bgcolor='#CCFFFF' width='40' align='center'>�Ա�</td>    <td bgcolor='#CCFFFF' width='90' align='center'>��Ƭ</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>ְ��</td>    <td bgcolor='#CCFFFF'>��ҵԺУ</td>    <td bgcolor='#CCFFFF'>ҽ��</td>        
	<td width="90" align="center" bgcolor="#CCFFFF">���۹���</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yishengxinxi"); 
    String url = "yishengxinxi_list.jsp?1=1"; 
    String sql =  "select * from yishengxinxi where 1=1";
	if(request.getParameter("yishengbianhao")=="" ||request.getParameter("yishengbianhao")==null ){}else{sql=sql+" and yishengbianhao like '%"+request.getParameter("yishengbianhao")+"%'";}if(request.getParameter("yishengxingming")=="" ||request.getParameter("yishengxingming")==null ){}else{sql=sql+" and yishengxingming like '%"+request.getParameter("yishengxingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("keshi")=="" ||request.getParameter("keshi")==null ){}else{sql=sql+" and keshi like '%"+request.getParameter("keshi")+"%'";}if(request.getParameter("zhicheng")=="" ||request.getParameter("zhicheng")==null ){}else{sql=sql+" and zhicheng like '%"+request.getParameter("zhicheng")+"%'";}if(request.getParameter("biyeyuanxiao")=="" ||request.getParameter("biyeyuanxiao")==null ){}else{sql=sql+" and biyeyuanxiao like '%"+request.getParameter("biyeyuanxiao")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yishengbianhao") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("yishengxingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td width='90' align='center'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("keshi") %></td>    <td><%=map.get("zhicheng") %></td>    <td><%=map.get("biyeyuanxiao") %></td>    <td><%=map.get("yiling") %></td>        
	<td width="90" align="center"><a href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=yishengxinxi">���۹���</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="yishengxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="yishengxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="yishengxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

