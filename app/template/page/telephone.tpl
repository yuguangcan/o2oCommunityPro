{%*首页*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
便民电话
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/telephone.css -->
<link rel="stylesheet" href="static/styles/page/telephone.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="便民电话"%}
{%/block%}


{%block name="content"%}
	<nav class="m-nav">
		<ul>
			{%foreach $data.type_list as $item%}
			<li class="{%if $item@index eq 0%}on{%else%}{%/if%}">{%$item.type_name%}</li>
			{%/foreach%}
		</ul>
	</nav>

	<section>
		<ul class="telephone-content">
			{%foreach $data.list as $itemlist%}
			<li class="{%if $itemlist@index eq 0%}on{%else%}{%/if%}">
				<ul class="telephone-list">
					{%foreach $itemlist as $item%}
					<li data-tel="{%$item.tel%}">
						{%$item.title%}：{%$item.tel%}
					</li>
					{%/foreach%}
				</ul>
			</li>
			{%/foreach%}
		</ul>
	</section>

{%/block%}

{%block name="popup"%}
	<div class="m-popup">
		<div class="popup-overlay"></div>
		<div class="popup-inner">
			<div class="popup-content"></div>
			<div class="popup-opt">
				<a href="javascript:;" class="popup-cancel">取消</a>
				<a href="tel:1234" id="popup-tel">呼叫</a>
			</div>
		</div>
	</div>
{%/block%}

{%block name="js"%}
<!-- build:js /static/community/scripts/page/telephone.js -->
<script src="static/scripts/page/telephone.js"></script>
<!-- endbuild -->
{%/block%}