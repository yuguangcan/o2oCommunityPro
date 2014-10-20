{%*我的投诉*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
我的投诉
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/ucenter-mycomplain.css -->
<link rel="stylesheet" href="static/styles/page/ucenter-mycomplain.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="我的投诉"%}
{%/block%}


{%block name="content"%}
	<ul class="complain-list">
	</ul>

	<p class="m-loading">正在加载更多</p>
{%/block%}

{%block name="js"%}
<script id="complain_template" type="text/html">

	<% for(var i=0;i<list.length;i++){ %>
	<li>
		<% if(list[i].bit_pack==0){ %>
			<p>您好，我们已收到您的投诉<span>（<%=list[i].content%>）</span>,我们将尽快回复。</p>
		<% }else if(list[i].bit_pack==1){ %>
			<p>您好，我们已派人前往处理您的投诉<span>（<%=list[i].content%>）</span>。</p>
		<% }else if(list[i].bit_pack==2){ %>
			<p>您好，您的投诉<span>（<%=list[i].content%>）</span>我们已经处理完成。</p>
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
<!-- build:js /static/community/scripts/page/ucenter-mycomplain.js -->
<script src="static/scripts/page/ucenter-mycomplain.js"></script>
<!-- endbuild -->
{%/block%}