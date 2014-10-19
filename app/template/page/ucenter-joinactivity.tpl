{%*已报名*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
已报名
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/ucenter-joinactivity.css -->
<link rel="stylesheet" href="static/styles/page/ucenter-joinactivity.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="已报名"%}
{%/block%}


{%block name="content"%}
	<ul class="activity-list">
	</ul>

	<p class="m-loading">正在加载更多</p>
	
{%/block%}

{%block name="js"%}
<script id="activity_template" type="text/html">

	<% for(var i=0;i<list.length;i++){ %>
	<li>
		<div class="clearfix">
			<span class="title"><%=list[i].title%></span>
			<span class="acount"><%=list[i].joinCount%>人报名</span>
		</div>
		<div class="clearfix">
			<div class="detail">
				<p class="address"><%=list[i].address%></p>
				<p class="time"><%=list[i].startTime%></p>
			</div>
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
<!-- build:js /static/community/scripts/page/ucenter-joinactivity.js -->
<script src="static/scripts/page/ucenter-joinactivity.js"></script>
<!-- endbuild -->
{%/block%}
