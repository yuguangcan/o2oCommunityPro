{%*我的物业*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
我的物业
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/ucenter-wuye.css -->
<link rel="stylesheet" href="static/styles/page/ucenter-wuye.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="我的物业"%}
{%/block%}


{%block name="content"%}
	
	<section class="uarea announce">
		<a href="/community/announce/listview">
			<p class="title">公告通知</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>

	<section class="uarea">
		<a href="/community/payment/listview">
			<p class="title">我的缴费</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>

	<section class="uarea">
		<a href="/community/package/package">
			<p class="title">我的包裹</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>

	<section class="uarea">
		<a href="/community/ucenter/myvisitorview">
			<p class="title">我的访客</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>

	<section class="uarea">
		<a href="/community/ucenter/myrepairview">
			<p class="title">我的报修</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>

	<section class="uarea complain">
		<a href="/community/ucenter/mycomplainview">
			<p class="title">我的投诉</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>

{%/block%}



