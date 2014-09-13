{%*社区活动*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
社区活动
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/activity.css -->
<link rel="stylesheet" href="static/styles/page/activity.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="社区活动"%}
{%/block%}


{%block name="content"%}
	<div class="submit">
		<section class="content">
			<h2 class="title">{%$data.title%}</h2>
			<div class="img" style="background-image:url({%$data.img%});"></div>
			<p><span>活动时间 :</span>{%$data.lastTime%}</p>
			<p><span>活动地点 :</span>{%$data.address%}</p>
			<p><span>活动内容 :</span>{%$data.content%}</p>
		</section>

		<section class="operation clearfix">
			{%if $data.isLike%}
				<a href="javascript:;" class="like-btn done">喜欢 （<span>{%$data.likeCount%}</span>）</a>
			{%else%}
				<a href="javascript:;" class="like-btn">喜欢 （<span>{%$data.likeCount%}</span>）</a>
			{%/if%}
			{%if $data.isJoin%}
				<a href="javascript:;" class="join-btn done">参加 （<span>{%$data.joinCount%}</span>）</a>
			{%else%}
				<a href="javascript:;" class="join-btn">参加 （<span>{%$data.joinCount%}</span>）</a>
			{%/if%}
			
		</section>
	</div>

	<section class="result" id="result">
		<div class="m-result">
			<h3>报名成功</h3>
			<p>已经成功报名的邻居</p>
			<div class="panel clearfix">
				
			</div>
			<a href="javascript:;" class="m-submit">分享到朋友圈</a>
		</div>
		
	</section>
{%/block%}

{%block name="footer"%}{%/block%}

{%block name="js"%}
<script type="text/javascript">
	F.context('aid','{%$data.aid%}');
</script>
<!-- build:js /static/community/scripts/page/activity.js -->
<script src="static/scripts/page/activity.js"></script>
<!-- endbuild -->
{%/block%}

{%block name="hideweixinmenu"%}{%/block%}