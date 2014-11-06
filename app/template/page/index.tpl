{%*首页*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
首页
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/index.css -->
<link rel="stylesheet" href="static/styles/page/index.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	<header class="header" id="header">
		<div class="logo icon-logo"></div>
		<a href="/community/ucenter/ucenter" class="info">
			博雅国际
			<img src="{%$userInfo.img%}" class="avatar">
		</a>
	</header>
{%/block%}

{%block name="content"%}

	<section class="public">
		<div id='public-slider' class='swipe'>
	        <ul class="public-list swipe-wrap">
                {%foreach from=$data.announce item=foo%}
                    <li>
                    	<a href="/community/announce/listview">
                        	<div class="title">{%$foo.title%}</div>
                        	<p class="info">{%$foo.content%}</p>
                       	</a>
                   	</li>
                {%/foreach%}
	        </ul>
	    </div>

	    <ul id="slider-position" class="public-list-pointer">
	    	{%foreach $data.announce as $item%}
        	<li class="{%if $item@index == 0%}on{%/if%}"></li>
        	{%/foreach%}
        </ul>

	</section>

	<h2 class="section-title">物业服务</h2>

	<section class="wuye">
		<!-- <div class="mask">物业准备中，敬请期待</div> -->
		<table>
			<tr>
				<td>
					<a href="/community/payment/listview">物业缴费</a>
					<!-- {%if $data.remind.payment%}
						<i class="notice">{%$data.remind.payment%}</i>
					{%/if%} -->
				</td>
				<td>
					<a href="/community/package/package">包裹代收</a>
					<!-- {%if $data.remind.package%}
						<i class="notice">{%$data.remind.package%}</i>
					{%/if%} -->
				</td>
				<td>
					<a href="/community/visitor/visitor">访客预约</a>
					<!-- {%if $data.remind.visitor%}
						<i class="notice">{%$data.remind.visitor%}</i>
					{%/if%} -->
				</td>
			</tr>
			<tr>
				<td>
					<a href="/community/repair/listview">物业报修</a>
					<!-- {%if $data.remind.repair%}
						<i class="notice">{%$data.remind.repair%}</i>
					{%/if%} -->
				</td>
				<td>
					<a href="/community/complain/listview">投诉建议</a>
					<!-- {%if $data.remind.complain%}
						<i class="notice">{%$data.remind.complain%}</i>
					{%/if%} -->
				</td>
				<td>
					<a href="/community/tel/listview">便民电话</a>
				</td>
			</tr>
		</table>
	</section>

	<section class="quick">
		<div class="quick-wrapper on">
			<div class="quick-icon-wrapper shop">
				<i class="icon-shop"></i>
			</div>
			<p class="quick-incon-text">超市</p>
			<span class="quick-arrow shop"></span>
		</div>
		<div class="quick-wrapper">
			<div class="quick-icon-wrapper life">
				<i class="icon-life"></i>				
			</div>
			<p class="quick-incon-text">折扣</p>
			<span class="quick-arrow life"></span>
		</div>
		<div class="quick-wrapper">
			<div class="quick-icon-wrapper award">
				<i class="icon-award"></i>
			</div>
			<p class="quick-incon-text">抽奖</p>
			<span class="quick-arrow award"></span>
		</div>
		<!--
		<div class="quick-wrapper">
			<div class="quick-icon-wrapper weidian">
				<i class="icon-weidian"></i>				
			</div>
			<p class="quick-incon-text">微店</p>
			<span class="quick-arrow weidian"></span>
		</div> -->
	</section>

	<ul class="quick-content">
		<li class="on">
			<table class="shop">
				<tr>
					<td>
						<a href="/shop/home?type=101010">食品</a>
					</td>
					<td>
						<a href="/shop/home?type=111010">饮品</a>
					</td>
					<td>
						<a href="/shop/home?type=121010">生活用品</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="/shop/home?type=141010">水果生鲜</a>
					</td>
					<td>
						<a href="/shop/home?type=151010">创意办公</a>
					</td>
					<td>
						<a href="/shop/home?type=171010">母婴宠物</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="/shop/home?type=251010">活动专区</a>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
			</table>
		</li>
		<li>
			<table class="life">
				
				{%if $data.lifeTypes|count > 0%}
					{%assign var=types1 value=$data.lifeTypes|array_slice:0:3%}
					<tr>
						{%foreach $types1 as $type%}
						<td>
							<a href="/community/local/life?typeId={%$type.typeId%}">{%$type.typeName%}</a>
						</td>
						{%/foreach%}
						{%$left1=4-$types1|count%}
						{%foreach $left1 as $item%}
							<td></td>
						{%/foreach%}
					</tr>
				{%/if%}
				{%if $data.lifeTypes|count > 3%}
					{%assign var=types2 value=$data.lifeTypes|array_slice:3:3%}
					<tr>
						{%foreach $types2 as $type%}
						<td>
							<a href="/community/local/life?typeId={%$type.typeId%}">{%$type.typeName%}</a>
						</td>
						{%/foreach%}
						{%$left2=4-$types2|count%}
						{%foreach $left2 as $item%}
							<td></td>
						{%/foreach%}
					</tr>
				{%/if%}
				{%if $data.lifeTypes|count > 6%}
					{%assign var=types3 value=$data.lifeTypes|array_slice:6:3%}
					<tr>
						{%foreach $types3 as $type%}
						<td>
							<a href="/community/local/life?typeId={%$type.typeId%}">{%$type.typeName%}</a>
						</td>
						{%/foreach%}
						{%$left3=4-$types3|count%}
						{%foreach $left3 as $item%}
							<td></td>
						{%/foreach%}
					</tr>
				{%/if%}
				
			</table>
		</li>
		<li>
			<div class="award">
				{%if $data.bonusList%}
					<img src="{%$data.bonusList.img%}">
					<div class="info">
						<p class="title">{%$data.bonusList.title%}</p>
						<p>{%$data.bonusList.detail%}</p>
						{%if $data.bonusList.status %}
							<div id="award" class="award-btn" data-id="{%$data.bonusList.activityId%}">每日抽奖</div>
							<div id="award-result" class="award-result-btn hide">
								<span>距离下次抽奖</span>
								<div class="time">00:00:00</div>
							</div>
						{%else%}
							<div id="award" class="award-btn hide" data-id="{%$data.bonusList.activityId%}">每日抽奖</div>
							<div id="award-result" class="award-result-btn">
								<span>距离下次抽奖</span>
								<div class="time" data-time="{%$data.bonusList.remainTime%}">00:00:00</div>
							</div>
						{%/if%}
					</div>
				{%else%}
					<div class="m-empty"><div></div><p>当前暂无活动，敬请期待</p></div>
				{%/if%}
				
			</div>
		</li>
		<!--
		<li>
			<table class="weidian">
				<tr>
					<td>
						<a href="/">食品</a>
					</td>
					<td>
						<a href="/">饮品</a>
					</td>
					<td>
						<a href="/">生活用品</a>
					</td>
				</tr>
			</table>
		</li> -->
	</ul>

	<h2 class="section-title">社区活动</h2>

	<div class="activity">
		<ul id="activity-list"></ul>
		<p class="m-loading">正在加载更多</p>
	</div>
{%/block%}

{%block name="popup"%}
	<div id="award-popup" class="m-popup">
		<div class="popup-overlay"></div>
		<div class="popup-award icon-award-bg">
			<div id="award-text" class="award-text"></div>
		</div>
	</div>
{%/block%}

{%block name="js"%}
<script id="activity_template" type="text/html">

	<% for(var i=0;i<list.length;i++){ %>
	<li>
		<a href="/community/activity/detail?aid=<%=list[i].aid%>" class="clearfix">
			<img src="<%=list[i].abbrimg%>" class="img">
			<div class="info">
				<p class="title"><%=list[i].title%></p>
				<p class="date"><%=list[i].lastTime%></p>
				<div class="opt">
					<% if(list[i].isLike){ %>
						<span class="opt-btn done">
					<% }else{ %>
						<span class="opt-btn">
					<% } %>
					<i><%=list[i].likeCount%></i>人喜欢</span>
					<% if(list[i].isJoin){ %>
						<span class="opt-btn done">
					<% }else{ %>
						<span class="opt-btn">
					<% } %>
					<i><%=list[i].joinCount%></i>人参加</span>
				</div>
			</div>
		</a>
	</li>
	<% } %>
	
</script>
<!-- build:js /static/community/scripts/base/baiduTemplate.js -->
<script src="static/scripts/base/baiduTemplate.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/widget/scrollLoad.js -->
<script src="static/scripts/widget/scrollLoad.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/base/swipe.js -->
<script src="static/scripts/base/swipe.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/page/index.js -->
<script src="static/scripts/page/index.js"></script>
<!-- endbuild -->
{%/block%}