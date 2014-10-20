{%*我的访客*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
我的访客
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/ucenter-myvisitor.css -->
<link rel="stylesheet" href="static/styles/page/ucenter-myvisitor.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="我的访客"%}
{%/block%}


{%block name="content"%}
	<ul class="visitor-list">
	</ul>

	<p class="m-loading">正在加载更多</p>
{%/block%}

{%block name="js"%}
<script id="visitor_template" type="text/html">

	<% for(var i=0;i<list.length;i++){ %>
	<li>
		<% if(list[i].visitor_state==0){ %>
			<p>您好，您预约的<span>（<%=list[i].other%>）</span>尚未到达,预计到达时间（<%=list[i].arrive_time%>）。（访客验证码：<span><%=list[i].validation%></span>）。</p>
		<% }else if(list[i].visitor_state==1){ %>
			<p>您好，您预约的<span>（<%=list[i].other%>）</span>已到达,到达时间（<%=list[i].arrive_time%>）。（访客验证码：<span><%=list[i].validation%></span>）。</p>
		<% } %>
		<div class="info clearfix">
			<div class="time"><%=list[i].time%></div>
		</div>
	</li>
	<% } %>
	
</script>
<!-- build:js /static/community/scripts/base/baiduTemplate.js -->
<script src="static/scripts/base/baiduTemplate.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/widget/scrollLoad.js -->
<script src="static/scripts/widget/scrollLoad.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/page/ucenter-myvisitor.js -->
<script src="static/scripts/page/ucenter-myvisitor.js"></script>
<!-- endbuild -->
{%/block%}