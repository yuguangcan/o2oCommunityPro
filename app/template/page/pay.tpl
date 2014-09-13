{%*首页*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
物业缴费
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/pay.css -->
<link rel="stylesheet" href="static/styles/page/pay.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="物业缴费"%}
{%/block%}


{%block name="content"%}
	<nav class="m-nav">
		<ul>
			{%foreach $data.type_list as $item%}
			<li data-type="{%$item.type_id%}">{%$item.type_name%}</li>
			{%/foreach%}
		</ul>
	</nav>

	<section class="pay-content">
	</section>
	<p class="m-loading">正在加载更多</p>
{%/block%}

{%block name="js"%}
<script id="pay_template" type="text/html">

	<% for(var i=0;i<list.length;i++){ %>
	<div class="pay-wrapper">
		<div class="m-box">
			<h3><%=list[i].title%></h3>
			<p><%=list[i].content%></p>
		</div>
		<div class="pay-info">
			<% if(list[i].area){ %>
			<span>单价<%=list[i].area%>元/m<sup>2</sup></span>
			<% } %>
			<span>总价<b><%=list[i].price%>元</b></span>
			<!--
			<a href="javascript:;" class="m-submit">缴费</a>
			-->
		</div>
	</div>
	<% } %>
	
</script>
<!-- build:js /static/community/scripts/base/baiduTemplate.js -->
<script src="static/scripts/base/baiduTemplate.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/widget/scrollLoad.js -->
<script src="static/scripts/widget/scrollLoad.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/page/pay.js -->
<script src="static/scripts/page/pay.js"></script>
<!-- endbuild -->
{%/block%}