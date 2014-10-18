{%*个人中心*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
个人中心
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/.css -->
<link rel="stylesheet" href="static/styles/page/ucenter.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="个人中心"%}
{%/block%}


{%block name="content"%}
	<section>
		<div class="avatar">
			<img src="">
			<p>测试用户</p>
		</div>
		<div class="detail">
			<span>激活方式：二维码</span>
		</div>
	</section>
	

{%/block%}

