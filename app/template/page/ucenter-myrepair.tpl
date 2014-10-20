{%*我的报修*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
我的报修
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/ucenter-myrepair.css -->
<link rel="stylesheet" href="static/styles/page/ucenter-myrepair.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="我的报修"%}
{%/block%}


{%block name="content"%}
	<ul class="repair-list">
	</ul>

	<p class="m-loading">正在加载更多</p>
{%/block%}

{%block name="js"%}
<script id="repair_template" type="text/html">

	<% for(var i=0;i<list.length;i++){ %>
	<li>
		<% if(list[i].bit_pack==0){ %>
			<p>您好，我们已收到您的报修<span>（<%=list[i].content%>）</span>,我们将尽快处理。</p>
		<% }else if(list[i].bit_pack==1){ %>
			<p>您好，我们已派人前往处理您的报修<span>（<%=list[i].content%>）</span>。</p>
		<% }else if(list[i].bit_pack==2){ %>
			<p>您好，您的报修<span>（<%=list[i].content%>）</span>我们已经处理完成。</p>
		<% }else if(list[i].bit_pack==3){ %>
			<p>您好，您的报修<span>（<%=list[i].content%>）</span>我们暂时无法处理，请与客服联系。</p>
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
<!-- build:js /static/community/scripts/page/ucenter-myrepair.js -->
<script src="static/scripts/page/ucenter-myrepair.js"></script>
<!-- endbuild -->
{%/block%}