<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>预约医生</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"paibanbiao");
 String bianhao="";  	String yishengbianhao="";  	String yishengxingming="";  	String riqi="";  	String xingqi="";  	String shiduan="";  	
 bianhao=(String)mlbdq.get("bianhao");  	yishengbianhao=(String)mlbdq.get("yishengbianhao");  	yishengxingming=(String)mlbdq.get("yishengxingming");  	riqi=(String)mlbdq.get("riqi");  	xingqi=(String)mlbdq.get("xingqi");  	shiduan=(String)mlbdq.get("shiduan");  	 
 

 HashMap mssdq = new CommDAO().getmaps("yonghuming",(String)request.getSession().getAttribute("username"),"huanzhezhuce");
 String xingming="";  	String shenfenzheng="";  	String shouji="";  	
 xingming=(String)mssdq.get("xingming");  	shenfenzheng=(String)mssdq.get("shenfenzheng");  	shouji=(String)mssdq.get("shouji");  	
   %>
<script language="javascript">

function gow()
{
	document.location.href="yuyueyisheng_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){







new CommDAO().insert(request,response,"yuyueyisheng",ext,true,false,""); 

}

%>

  <body >
 <form  action="yuyueyisheng_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加预约医生:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">预约号：</td><td><input name='yuyuehao' type='text' id='yuyuehao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.bianhao.value='<%=bianhao%>';document.form1.bianhao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">医生编号：</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yishengbianhao.value='<%=yishengbianhao%>';document.form1.yishengbianhao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yishengxingming.value='<%=yishengxingming%>';document.form1.yishengxingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">日期：</td><td><input name='riqi' type='text' id='riqi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.riqi.value='<%=riqi%>';document.form1.riqi.setAttribute("readOnly",'true');</script>		<tr><td  width="200">星期：</td><td><input name='xingqi' type='text' id='xingqi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingqi.value='<%=xingqi%>';document.form1.xingqi.setAttribute("readOnly",'true');</script>		<tr><td  width="200">时段：</td><td><input name='shiduan' type='text' id='shiduan' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shiduan.value='<%=shiduan%>';document.form1.shiduan.setAttribute("readOnly",'true');</script>		<tr><td  width="200">预约时间：</td><td><input name='yuyueshijian' type='text' id='yuyueshijian' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.shenfenzheng.value='<%=shenfenzheng%>';document.form1.shenfenzheng.setAttribute("readOnly",'true');</script>		<tr><td  width="200">手机：</td><td><input name='shouji' type='text' id='shouji' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.shouji.value='<%=shouji%>';document.form1.shouji.setAttribute("readOnly",'true');</script>		<tr><td>状态：</td><td><select name='zhuangtai' id='zhuangtai'><option value="已预约">已预约</option><option value="已取号">已取号</option><option value="未就诊">未就诊</option></select></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
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
 
	


return true;   
}   
popheight=450;
</script>  


