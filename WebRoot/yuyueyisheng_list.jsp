<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ԤԼҽ��</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����ԤԼҽ���б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ԤԼ�ţ�<input name="yuyuehao" type="text" id="yuyuehao" style='border:solid 1px #000000; color:#666666' size="12" />  ��ţ�<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ҽ����ţ�<input name="yishengbianhao" type="text" id="yishengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ҽ��������<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" />  ���ڣ�<input name="riqi" type="text" id="riqi" style='border:solid 1px #000000; color:#666666' size="12" />  ���ڣ�<input name="xingqi" type="text" id="xingqi" style='border:solid 1px #000000; color:#666666' size="12" />  �û�����<input name="yonghuming" type="text" id="yonghuming" style='border:solid 1px #000000; color:#666666' size="12" />  ������<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  ���֤��<input name="shenfenzheng" type="text" id="shenfenzheng" style='border:solid 1px #000000; color:#666666' size="12" />  �ֻ���<input name="shouji" type="text" id="shouji" style='border:solid 1px #000000; color:#666666' size="12" /> ״̬��<select name='zhuangtai' id='zhuangtai' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="��ԤԼ">��ԤԼ</option><option value="��ȡ��">��ȡ��</option><option value="δ����">δ����</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yuyueyisheng_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ԤԼ��</td>
    <td bgcolor='#CCFFFF'>���</td>
    <td bgcolor='#CCFFFF'>ҽ�����</td>
    <td bgcolor='#CCFFFF'>ҽ������</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>ʱ��</td>
    <td bgcolor='#CCFFFF'>�û���</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>���֤</td>
    <td bgcolor='#CCFFFF'>�ֻ�</td>
    <td bgcolor='#CCFFFF'>״̬</td>
    
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yuyueyisheng"); 
    String url = "yuyueyisheng_list.jsp?1=1"; 
    String sql =  "select * from yuyueyisheng where 1=1";
	
if(request.getParameter("yuyuehao")=="" ||request.getParameter("yuyuehao")==null ){}else{sql=sql+" and yuyuehao like '%"+request.getParameter("yuyuehao")+"%'";}
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}
if(request.getParameter("yishengbianhao")=="" ||request.getParameter("yishengbianhao")==null ){}else{sql=sql+" and yishengbianhao like '%"+request.getParameter("yishengbianhao")+"%'";}
if(request.getParameter("yishengxingming")=="" ||request.getParameter("yishengxingming")==null ){}else{sql=sql+" and yishengxingming like '%"+request.getParameter("yishengxingming")+"%'";}
if(request.getParameter("riqi")=="" ||request.getParameter("riqi")==null ){}else{sql=sql+" and riqi like '%"+request.getParameter("riqi")+"%'";}
if(request.getParameter("xingqi")=="" ||request.getParameter("xingqi")==null ){}else{sql=sql+" and xingqi like '%"+request.getParameter("xingqi")+"%'";}
if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}
if(request.getParameter("shouji")=="" ||request.getParameter("shouji")==null ){}else{sql=sql+" and shouji like '%"+request.getParameter("shouji")+"%'";}
if(request.getParameter("zhuangtai")=="" ||request.getParameter("zhuangtai")==null ){}else{sql=sql+" and zhuangtai like '%"+request.getParameter("zhuangtai")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuyuehao") %></td>
    <td><%=map.get("bianhao") %></td>
    <td><%=map.get("yishengbianhao") %></td>
    <td><%=map.get("yishengxingming") %></td>
    <td><%=map.get("riqi") %></td>
    <td><%=map.get("xingqi") %></td>
    <td><%=map.get("shiduan") %></td>
    <td><%=map.get("yonghuming") %></td>
    <td><%=map.get("xingming") %></td>
    <td><%=map.get("shenfenzheng") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("zhuangtai") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="yuyueyisheng_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="yuyueyisheng_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="yuyueyisheng_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

