<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ԤԼҽ��</title>
	
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

new CommDAO().update(request,response,"yuyueyisheng",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yuyueyisheng"); 

%>
  <form  action="yuyueyisheng_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸�ԤԼҽ��:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>ԤԼ�ţ�</td><td><input name='yuyuehao' type='text' id='yuyuehao' value='<%= mmm.get("yuyuehao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ҽ����ţ�</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='<%= mmm.get("yishengbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ҽ��������</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='<%= mmm.get("yishengxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���ڣ�</td><td><input name='riqi' type='text' id='riqi' value='<%= mmm.get("riqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���ڣ�</td><td><input name='xingqi' type='text' id='xingqi' value='<%= mmm.get("xingqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ʱ�Σ�</td><td><input name='shiduan' type='text' id='shiduan' value='<%= mmm.get("shiduan")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ԤԼʱ�䣺</td><td><input name='yuyueshijian' type='text' id='yuyueshijian' value='<%= mmm.get("yuyueshijian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='<%= mmm.get("shenfenzheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�ֻ���</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>״̬��</td><td><select name='zhuangtai' id='zhuangtai'><option value="��ԤԼ">��ԤԼ</option><option value="��ȡ��">��ȡ��</option><option value="δ����">δ����</option></select></td></tr><script language="javascript">document.form1.zhuangtai.value='<%=mmm.get("zhuangtai")%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


