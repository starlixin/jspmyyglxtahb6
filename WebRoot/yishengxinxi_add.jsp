<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>ҽ����Ϣ</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="yishengxinxi_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){







new CommDAO().insert(request,response,"yishengxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="yishengxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ���ҽ����Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">ҽ����ţ�</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelyishengbianhao' /></td></tr>
		<tr><td  width="200">���룺</td><td><input name='mima' type='text' id='mima' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">ҽ��������</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelyishengxingming' /></td></tr>
		<tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr>
		<tr><td  width="200">��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td>���ң�</td><td><%=Info.getselect("keshi","keshixinxi","keshi")%></td></tr>
		<tr><td  width="200">ְ�ƣ�</td><td><input name='zhicheng' type='text' id='zhicheng' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">��ҵԺУ��</td><td><input name='biyeyuanxiao' type='text' id='biyeyuanxiao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">ҽ�䣺</td><td><input name='yiling' type='text' id='yiling' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">ҽ����飺</td><td><textarea name='yishengjianjie' cols='50' rows='5' id='yishengjianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var yishengbianhaoobj = document.getElementById("yishengbianhao"); if(yishengbianhaoobj.value==""){document.getElementById("clabelyishengbianhao").innerHTML="&nbsp;&nbsp;<font color=red>������ҽ�����</font>";return false;}else{document.getElementById("clabelyishengbianhao").innerHTML="  "; } 
	var yishengbianhaoobj = document.getElementById("yishengbianhao");  
if(yishengbianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yishengxinxi&col=yishengbianhao&value="+yishengbianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyishengbianhao").innerHTML="&nbsp;&nbsp;<font color=red>ҽ������Ѵ���</font>";  
return false;
}else{document.getElementById("clabelyishengbianhao").innerHTML="  ";  
}  
} 
	var yishengxingmingobj = document.getElementById("yishengxingming"); if(yishengxingmingobj.value==""){document.getElementById("clabelyishengxingming").innerHTML="&nbsp;&nbsp;<font color=red>������ҽ������</font>";return false;}else{document.getElementById("clabelyishengxingming").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


