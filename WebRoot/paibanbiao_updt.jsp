<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�Ű��</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"paibanbiao",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"paibanbiao"); 

%>
  <form  action="paibanbiao_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸��Ű��:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ҽ����ţ�</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='<%= mmm.get("yishengbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ҽ��������</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='<%= mmm.get("yishengxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���ڣ�</td><td><input name='riqi' type='text' id='riqi' value='<%= mmm.get("riqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>���ڣ�</td><td><input name='xingqi' type='text' id='xingqi' value='<%= mmm.get("xingqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ʱ�Σ�</td><td><select name='shiduan' id='shiduan'><option value="����">����</option><option value="����">����</option></select></td></tr><script language="javascript">document.form1.shiduan.value='<%=mmm.get("shiduan")%>';</script>     <tr><td>ʣ��ţ�</td><td><input name='shengyuhao' type='text' id='shengyuhao' value='<%= mmm.get("shengyuhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


