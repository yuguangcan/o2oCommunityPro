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
		<div class="logo">
			<span class="logo-wrapper"><i class="icon-logo"></i></span>
			<span class="icon-textlogo"></span>
		</div>
		<span class="icon-user"></span>
	</header>
{%/block%}

{%block name="content"%}

	<section class="public">
		<div id='public-slider' class='swipe'>
	        <ul class="public-list swipe-wrap">
	        	{%$i=1%}
                {%foreach from=$data.announce item=foo%}
                    {%if $i < 4%}
                    <li>
                    	<a href="/community/announce/listview">
                        	<div class="title">{%$foo.title%}</div>
                        	<p class="info">{%$foo.content%}</p>
                       	</a>
                   	</li>
                   {%/if%}
                   {%$i=$i+1%}
                {%/foreach%}
	        </ul>
	    </div>
	    <ul id="slider-position" class="public-list-pointer">
        	<li class="on"></li>
        	<li></li>
        	<li></li>
        </ul>

	</section>

	<section class="wuye">
		<table>
			<tr>
				<th colspan="3">物业服务</th>
			</tr>
			<tr>
				<td>
					<a href="/community/payment/listview">物业缴费</a>
				</td>
				<td>
					<a href="/community/package/package">包裹代收</a>
				</td>
				<td>
					<a href="/community/visitor/visitor">访客预约</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="/community/repair/listview">物业报修</a>
				</td>
				<td>
					<a href="/community/complain/listview">投诉建议</a>
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
			<p class="quick-incon-text">社区超市</p>
			<span class="quick-arrow shop"></span>
		</div>
		<div class="quick-wrapper">
			<div class="quick-icon-wrapper life">
				<i class="icon-life"></i>				
			</div>
			<p class="quick-incon-text">社区生活</p>
			<span class="quick-arrow life"></span>
		</div>
		<div class="quick-wrapper">
			<div class="quick-icon-wrapper award">
				<i class="icon-award"></i>
			</div>
			<p class="quick-incon-text">每日抽奖</p>
			<span class="quick-arrow award"></span>
		</div>
		<div class="quick-wrapper">
			<div class="quick-icon-wrapper neighbour">
				<i class="icon-neighbour"></i>				
			</div>
			<p class="quick-incon-text">我的邻居</p>
			<span class="quick-arrow neighbour"></span>
		</div>
	</section>

	<ul class="quick-content">
		<li class="on">
			<table class="shop">
				<tr>
					<td>
						<a href="/shop/home">食品</a>
					</td>
					<td>
						<a href="/shop/home">饮品</a>
					</td>
					<td>
						<a href="/shop/home">生活用品</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="/shop/home">新鲜水果</a>
					</td>
					<td>
						<a href="/shop/home">永生鲜花</a>
					</td>
					<td>
						<a href="/shop/home">母婴专区</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="/shop/home">生鲜专区</a>
					</td>
					<td>
						<a href="/shop/home">进口食品</a>
					</td>
					<td>
					</td>
				</tr>
			</table>
		</li>
		<li>
			<table class="life">
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
				<tr>
					<td>
						<a href="/">新鲜水果</a>
					</td>
					<td>
						<a href="/">永生鲜花</a>
					</td>
					<td>
						<a href="/">母婴专区</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="/">生鲜专区</a>
					</td>
					<td>
						<a href="/">进口食品</a>
					</td>
					<td>
					</td>
				</tr>
			</table>
		</li>
		<li>
			<table class="award">
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
				<tr>
					<td>
						<a href="/">新鲜水果</a>
					</td>
					<td>
						<a href="/">永生鲜花</a>
					</td>
					<td>
						<a href="/">母婴专区</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="/">生鲜专区</a>
					</td>
					<td>
						<a href="/">进口食品</a>
					</td>
					<td>
					</td>
				</tr>
			</table>
		</li>
		<li>
			<table class="neighbour">
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
				<tr>
					<td>
						<a href="/">新鲜水果</a>
					</td>
					<td>
						<a href="/">永生鲜花</a>
					</td>
					<td>
						<a href="/">母婴专区</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="/">生鲜专区</a>
					</td>
					<td>
						<a href="/">进口食品</a>
					</td>
					<td>
					</td>
				</tr>
			</table>
		</li>
	</ul>

	<div class="activity">
		<img src="/static/community/images/activity.jpg"></img>
	</div>
{%/block%}

{%block name="js"%}
<!-- build:js /static/community/scripts/base/swipe.js -->
<script src="static/scripts/base/swipe.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/page/index.js -->
<script src="static/scripts/page/index.js"></script>
<!-- endbuild -->
{%/block%}