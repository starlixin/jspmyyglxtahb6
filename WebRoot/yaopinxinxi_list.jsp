<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ҩƷ��Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����ҩƷ��Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ҩƷ��ţ�<input name="yaopinbianhao" type="text" id="yaopinbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ҩƷ���ƣ�<input name="yaopinmingcheng" type="text" id="yaopinmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ���<%=Info.getselect("leibie","yaopinleibie","leibie"," 1=1 ")%>    �������ڣ�
   <input name="shengchanriqi1" type="text" id="shengchanriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="shengchanriqi2" type="text" id="shengchanriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  ��Ч�ڣ�<input name="youxiaoqi" type="text" id="youxiaoqi" style='border:solid 1px #000000; color:#666666' size="12" />  ���<input name="guige" type="text" id="guige" style='border:solid 1px #000000; color:#666666' size="12" />  ��λ��<input name="danwei" type="text" id="danwei" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ҩƷ���</td>
    <td bgcolor='#CCFFFF'>ҩƷ����</td>
    <td bgcolor='#CCFFFF'>���</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>��������</td>
    <td bgcolor='#CCFFFF'>��Ч��</td>
    <td bgcolor='#CCFFFF'>��Ҫ�ɷ�</td>
    <td bgcolor='#CCFFFF'>���</td>
    <td bgcolor='#CCFFFF'>��λ</td>
    <td width='90' align='center' bgcolor='#CCFFFF'>ͼƬ</td>
    <td bgcolor='#CCFFFF'>�۸�</td>
    <td bgcolor='#CCFFFF'>���</td>
    
    
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	

int kucuntx=0;
  	 new CommDAO().delete(request,"yaopinxinxi"); 
    String url = "yaopinxinxi_list.jsp?1=1"; 
    String sql =  "select * from yaopinxinxi where 1=1";
	
if(request.getParameter("yaopinbianhao")=="" ||request.getParameter("yaopinbianhao")==null ){}else{sql=sql+" and yaopinbianhao like '%"+request.getParameter("yaopinbianhao")+"%'";}
if(request.getParameter("yaopinmingcheng")=="" ||request.getParameter("yaopinmingcheng")==null ){}else{sql=sql+" and yaopinmingcheng like '%"+request.getParameter("yaopinmingcheng")+"%'";}
if(request.getParameter("leibie")=="" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+request.getParameter("leibie")+"%'";}
if(request.getParameter("gongyingshang")=="" ||request.getParameter("gongyingshang")==null ){}else{sql=sql+" and gongyingshang like '%"+request.getParameter("gongyingshang")+"%'";}
if (request.getParameter("shengchanriqi1")==""  ||request.getParameter("shengchanriqi1")==null ) {}else{sql=sql+" and shengchanriqi >= '"+request.getParameter("shengchanriqi1")+"'";}
if (request.getParameter("shengchanriqi2")==""  ||request.getParameter("shengchanriqi2")==null ) {}else {sql=sql+" and shengchanriqi <= '"+request.getParameter("shengchanriqi2")+"'";}
if(request.getParameter("youxiaoqi")=="" ||request.getParameter("youxiaoqi")==null ){}else{sql=sql+" and youxiaoqi like '%"+request.getParameter("youxiaoqi")+"%'";}
if(request.getParameter("guige")=="" ||request.getParameter("guige")==null ){}else{sql=sql+" and guige like '%"+request.getParameter("guige")+"%'";}
if(request.getParameter("danwei")=="" ||request.getParameter("danwei")==null ){}else{sql=sql+" and danwei like '%"+request.getParameter("danwei")+"%'";}
if(request.getParameter("jiage")=="" ||request.getParameter("jiage")==null ){}else{sql=sql+" and jiage like '%"+request.getParameter("jiage")+"%'";}
if(request.getParameter("rukujiage")=="" ||request.getParameter("rukujiage")==null ){}else{sql=sql+" and rukujiage like '%"+request.getParameter("rukujiage")+"%'";}
if (request.getParameter("kucun1")==""  ||request.getParameter("kucun1")==null ) {}else{sql=sql+" and kucun >= '"+request.getParameter("kucun1")+"'";}
if (request.getParameter("kucun2")==""  ||request.getParameter("kucun2")==null ) {}else {sql=sql+" and kucun <= '"+request.getParameter("kucun2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	
if(Float.valueOf((String)map.get("kucun")).floatValue()<10){kucuntx=kucuntx+1;}


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yaopinbianhao") %></td>
    <td><%=map.get("yaopinmingcheng") %></td>
    <td><%=map.get("leibie") %></td>
    <td><%=map.get("shengchanriqi") %></td>
    <td><%=map.get("youxiaoqi") %></td>
    <td><%=map.get("zhuyaochengfen") %></td>
    <td><%=map.get("guige") %></td>
    <td><%=map.get("danwei") %></td>
    <td width='90'><a href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("jiage") %></td>
    <td><%=map.get("kucun") %></td>
    
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="yaopinxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="yaopinxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="yaopinxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }

 
  </body>
</html>

