<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta  />
<title>医院管理系统</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>


<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<div class="content">
  <div class="icon"></div>
	<div class="wrap">
		<div class="pad20 slideGroup">
			<div class="title">
				<div class="name name2"><h3>医生风采</h3>Products</div>
				<div class="more"><a href="yishengxinxilist.jsp">更多 ></a></div>
				<div class="clear"></div>
			</div>
		  <div class="parBd">
				<div class="slideBox">
					<a class="sPrev" href="javascript:void(0)"></a>
					<ul>
						
						
					<%
														
					for(HashMap map:new CommDAO().select("select * from yishengxinxi  order by id desc ")){
					
					 %>
						
						<li>
						
							<div class="pic"><a href="yishengxinxidetail.jsp?id=<%=map.get("id")%>" > <img src="<%=map.get("zhaopian")%>"/></a></div>
							<div class="tit"><a href="yishengxinxidetail.jsp?id=<%=map.get("id")%>"><%=map.get("yishengxingming")%></a></div>
						</li>
						
	  <%
	  }
	  %>
		
					</ul>
					<a class="sNext" href="javascript:void(0)"></a>
				</div><!-- slideBox End -->
				<!-- slideBox End --><!-- slideBox End -->
			  <!-- slideBox End -->
          </div>
			<!-- parBd End -->
		</div>
		
		
		
		<div class="pad20">
			<div class="title">
				<div class="name name2"><h3>就医指南</h3>News</div>
				<div class="more"><a href="news.jsp?lb=就医指南">更多 ></a></div>
			</div>
			<div class="f4_x"></div>
			<div class="wwdt">
				<div class="l_pic">
					<a href="news.jsp?lb=就医指南"><img src="qtimages/news.jpg"/></a>
					<a href="news.jsp?lb=就医指南">所有资讯,这里都有,快来看看！</a>
				</div>
				<div class="c_news">
				
					<div class="news_sj">
						<ul>
						  <%
										
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='就医指南' order by id desc ",1,7)){
	
     %>
							<li><a href="gg_detail.jsp?id=<%=map.get("id")%>"><span><%=(String)map.get("addtime").toString().substring(0,10) %></span> <%=Info.ensubStr(map.get("biaoti"),30)%></a></li>
							
							<%
							}
							%>
							
						</ul>
					</div>
					<a href="news.jsp?lb=就医指南" class="more"></a>
			  </div>
				<div class="r_tw">
					<ul class="r_tw_list">
						<li>
							<div class="pic"><a href="#"><img src="qtimages/news1.jpg"/></a></div>
							<div class="txt"><a href="#">我们的团队</a><span>xxxx-xx-xx</span></div>
						</li>
						<li>
							<div class="pic"><a href="#"><img src="qtimages/news2.jpg"/></a></div>
							<div class="txt"><a href="#">我们的风彩</a><span>xxxx-xx-xx</span></div>
						</li>
					</ul>
					<a href="news.jsp?lb=就医指南" class="more"></a>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<!--<div id="adsBox" class="adsBox mrt20">
			<div class="hd">
				<ul>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div class="bd">
				<ul>
					<li><a href="#" target="_blank"><img src="qtimages/ad1.jpg" /></a></li>
					<li><a href="#" target="_blank"><img src="qtimages/ad1.jpg" /></a></li>
					<li><a href="#" target="_blank"><img src="qtimages/ad1.jpg" /></a></li>
				</ul>
			</div>
		</div>-->
	</div>
</div>
<%@ include file="qtdown.jsp"%>
<!-- The Scripts -->

</body>
</html>


