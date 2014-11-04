{%*个人中心*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
个人中心
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/ucenter.css -->
<link rel="stylesheet" href="static/styles/page/ucenter.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="个人中心"%}
{%/block%}


{%block name="content"%}
	<section class="uinfo">
		<img src="{%$userInfo.img%}" class="avatar">
		<p class="name">{%$userInfo.uname%}</p>
		<div class="detail">
			<span>激活方式：二维码</span>
			<span>社区积分：{%$userInfo.uscore%}</span>
			<span>状态：住户身份</span>
			<span>激活住址：{%$userInfo.ext.communityName%}{%$userInfo.ext.buildingName%}{%$userInfo.ext.roomName%}</span>
		</div>
	</section>
	
	<section class="uarea shop">
		<div class="shop-entrance">
			<div class="icon">
				<i class="icon-u-shop"></i>
			</div>
			<p class="title">我的超市</p>
		</div>
		<div class="shop-list">
			<a href="/shop/user/myorder?act=0">处理中订单</a>
			<a href="/shop/user/myorder?act=4">已取消订单</a>
			<a href="/shop/user/myorder?act=3">已完成订单</a>
		</div>
	</section>

	<section class="uarea wuye">
		<a href="/community/ucenter/property">
			<div class="icon">
				<i class="icon-u-wuye"></i>
			</div>
			<p class="title">我的物业</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>

	<section class="uarea activity">
		<a href="/community/ucenter/activity">
			<div class="icon">
				<i class="icon-u-activity"></i>
			</div>
			<p class="title">我的活动</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>
{%/block%}

