
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>


<div class="footer">
	<div class="wrap">
		<div class="pad15">
			<div class="fl"><a href="#"></a></div>
			<div class="fr tr mr15">Copyright 2020 All rights reserved ҽԺ����ϵͳ </div>
		</div>
	</div>
</div>
<script type="text/javascript">
jQuery(".focusBox").hover(function(){ jQuery(this).find(".prev,.next").stop(true,true).fadeTo("show",0.2) },function(){ jQuery(this).find(".prev,.next").fadeOut() });
jQuery(".focusBox").slide({ mainCell:".pic",effect:"fold", autoPlay:true, delayTime:600, trigger:"click"});//bannerͼ
jQuery(".nav").slide({ type:"menu",  titCell:".m", targetCell:".sub", effect:"slideDown", delayTime:300, triggerTime:100,returnDefault:true  });//����

jQuery(".slideGroup .slideBox").slide({ mainCell:"ul",vis:5,prevCell:".sPrev",nextCell:".sNext",effect:"leftLoop"});
/* ���tab�л� */
jQuery(".slideGroup").slide({titCell:".parHd li",mainCell:".parBd"});

jQuery(".adsBox").slide({mainCell:".bd ul",effect:"fold",autoPlay:true});/*��水ť*/
</script>
