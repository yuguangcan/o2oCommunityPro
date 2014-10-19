{%*我的活动*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
我的活动
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/ucenter-activity.css -->
<link rel="stylesheet" href="static/styles/page/ucenter-activity.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="我的活动"%}
{%/block%}


{%block name="content"%}
	
	<section class="uarea join">
		<a href="/community/activity/myjoinview">
			<p class="title">已报名</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>

	<section class="uarea like">
		<a href="/community/activity/mylikeview">
			<p class="title">已收藏</p>
			<i class="arrow icon-arrow"></i>
		</a>
	</section>
{%/block%}

