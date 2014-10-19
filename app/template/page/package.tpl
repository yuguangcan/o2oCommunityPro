{%*首页*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
包裹代收
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/package.css -->
<link rel="stylesheet" href="static/styles/page/package.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="包裹代收"%}
{%/block%}


{%block name="content"%}
	<ul class="package-list">
	</ul>

	<p class="m-loading">正在加载更多</p>
{%/block%}

{%block name="js"%}
<script id="package_template" type="text/html">

	<% for(var i=0;i<list.length;i++){ %>
	<li>
		<p><span>尊敬的<%=list[i].recipient%></span>有一个<span><%=list[i].courier%></span>在<span><%=list[i].place%></span>，
			<% if(list[i].state==1){ %>
				<%=list[i].sign%>已签收。
			<% }else{ %>
				请及时签收。
			<% } %>
			（领取验证码：<span><%=list[i].validation%></span>）
		</p>
		<div class="info clearfix">
			<div class="time"><%=list[i].add_time%></div>
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
<!-- build:js /static/community/scripts/page/package.js -->
<script src="static/scripts/page/package.js"></script>
<!-- endbuild -->
{%/block%}