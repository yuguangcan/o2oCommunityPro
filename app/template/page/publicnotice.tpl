{%*首页*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
物业公告
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/publicnotice.css -->
<link rel="stylesheet" href="static/styles/page/publicnotice.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="物业公告"%}
{%/block%}


{%block name="content"%}
	<div class="public-list"></div>
	<p class="m-loading">正在加载更多</p>
{%/block%}

{%block name="js"%}
<script id="public_template" type="text/html">
	<% for(var i=0;i<list.length;i++){ %>
	<section class="m-box">
		<h3><%=list[i].title%></h3>
		<i class="icon-"></i>
		<p><%=list[i].content%></p>
		<p class="sign"><%=list[i].com_name%></p>
		<p class="sign"><%=list[i].push_time%></p>
	</section>
	<% } %>
</script>
<!-- build:js /static/community/scripts/base/baiduTemplate.js -->
<script src="static/scripts/base/baiduTemplate.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/widget/scrollLoad.js -->
<script src="static/scripts/widget/scrollLoad.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/page/publicnotice.js -->
<script src="static/scripts/page/publicnotice.js"></script>
<!-- endbuild -->
{%/block%}