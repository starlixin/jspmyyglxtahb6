<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
<head>
<title>ҽԺ����ϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	
	background-repeat: repeat-x;
	background-color: #0092E5;
}

.STYLE7 {color: #000000; font-size:9pt;}
.STYLE8 {color: #0092E5}
-->
</style>
</head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;

function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.pagerandom.value=="")
	{
		alert('����������');
		return false;
	}
}

           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 

           
           </script>   
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1441" height="743" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login.jpg" id="__01">
  <tr>
    <td height="366" colspan="3" ><table width="95%" height="304" border="0" cellpadding="0" cellspacing="0">
      
      <tr>
        <td height="304" valign="bottom"><div style="font-family:����; color:#ffffff; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 26px; margin-top:5pt">
      <div align="center" class="STYLE8" >ҽԺ����ϵͳ</div>
    </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="314" rowspan="2">&nbsp;</td>
    <td width="352" height="176">
	
	<form action="jspmyyglxtahb6?ac=adminlogin&a=a" method="post" name="form1" style="display: inline"><table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="44" height="30"><span class="STYLE7">�û�:</span></td>
        <td height="30" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
      </tr>
      <tr>
        <td height="30"><span class="STYLE7">����:</span></td>
        <td height="30" colspan="2"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
      </tr>
      <tr>
        <td height="30"><span class="STYLE7">Ȩ��:</span></td>
        <td height="30" colspan="2"><select name="cx" id="cx">
            <option value="����Ա">����Ա</option>
			<option value="ҽ����Ϣ">ҽ����½</option>
		<!--quxanxiaxndexnglxu-->
          </select>
        </td>
      </tr>
      <tr>
        <td height="30"><span class="STYLE7">��֤��:</span></td>
        <td width="59" height="30"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" />
        <td width="102"><a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"> </a></td>
      </tr>
      <tr>
        <td height="30" colspan="3"><input type="submit" name="Submit" value="��½" onClick="return check();" >
            <input type="reset" name="Submit2" value="����" ></td>
      </tr>
    </table>
	</form>
	
	</td>
    <td width="336" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>


