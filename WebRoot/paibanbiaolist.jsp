<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>�Ű��</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<link href="qtimages/css/sub.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>

<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%

%>

<%@ include file="qttop.jsp"%>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">�Ű��</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con">
			
			 <form name="form1" id="form1" method="post" action="" style="width:100%">
   ����:  ��ţ�<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ҽ����ţ�<input name="yishengbianhao" type="text" id="yishengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ҽ��������<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" />  ���ڣ�<input name="riqi1" type="text" id="riqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="riqi2" type="text" id="riqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' /> ʱ�Σ�<select name='shiduan' id='shiduan' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="����">����</option><option value="����">����</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
			 </form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align="center" bgcolor='#CCFFFF'>���</td>
    <td align="center" bgcolor='#CCFFFF'>ҽ�����</td>
    <td align="center" bgcolor='#CCFFFF'>ҽ������</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>����</td>
    <td align="center" bgcolor='#CCFFFF'>����</td>
    <td align="center" bgcolor='#CCFFFF'>ʱ��</td>
    <td align="center" bgcolor='#CCFFFF'>ʣ���</td>
    
    
    <td width="30" align="center" bgcolor="CCFFFF">��ϸ</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"paibanbiao"); 
    String url = "paibanbiaolist.jsp?2=2"; 
    String sql =  "select * from paibanbiao where 1=1";
	
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}
if(request.getParameter("yishengbianhao")=="" ||request.getParameter("yishengbianhao")==null ){}else{sql=sql+" and yishengbianhao like '%"+request.getParameter("yishengbianhao")+"%'";}
if(request.getParameter("yishengxingming")=="" ||request.getParameter("yishengxingming")==null ){}else{sql=sql+" and yishengxingming like '%"+request.getParameter("yishengxingming")+"%'";}
if (request.getParameter("riqi1")==""  ||request.getParameter("riqi1")==null ) {}else{sql=sql+" and riqi >= '"+request.getParameter("riqi1")+"'";}
if (request.getParameter("riqi2")==""  ||request.getParameter("riqi2")==null ) {}else {sql=sql+" and riqi <= '"+request.getParameter("riqi2")+"'";}
if(request.getParameter("shiduan")=="" ||request.getParameter("shiduan")==null ){}else{sql=sql+" and shiduan like '%"+request.getParameter("shiduan")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td align="center"><%=map.get("bianhao") %></td><td align="center"><%=map.get("yishengbianhao") %></td><td align="center"><%=map.get("yishengxingming") %></td><td align="center"><%=map.get("riqi") %></td><td align="center"><%=map.get("xingqi") %></td><td align="center"><%=map.get("shiduan") %></td><td align="center"><%=map.get("shengyuhao") %></td>
    
    <td width="30" align="center"> <a href="paibanbiaodetail.jsp?id=<%=map.get("id")%>" >��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }						
						  
			</div>
			</div>	
		</div>
	</div>		
</div>
<%@ include file="qtdown.jsp"%>


</body>
</html>


