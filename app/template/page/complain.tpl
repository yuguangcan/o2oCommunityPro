{%*首页*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
投诉建议
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/complain.css -->
<link rel="stylesheet" href="static/styles/page/complain.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="投诉建议"%}
{%/block%}


{%block name="content"%}
	<section class="submit" id="submit">
		<div class="m-textarea">
			<textarea placeholder="输入您的投诉与建议" id="other"></textarea>
		</div>
		<div class="operation clearfix">
			<a href="javascript:;" class="m-cancel">电话</a>
			<a href="javascript:;" class="m-submit" id="submit-complain">提交</a>
		</div>
	</section>
	<section class="result" id="result">
		<div class="m-result">
			<h3>提交成功</h3>
			<p>我们会在24小时内处理您的请求，请耐心等待</p>
			<div class="opt clearfix">
				<a href="/" class="m-cancel">返回首页</a>
				<a href="tel:123" class="m-cancel">立即电话</a>
			</div>
		</div>
		
	</section>
{%/block%}

{%block name="js"%}
<!-- build:js /static/community/scripts/page/complain.js -->
<script src="static/scripts/page/complain.js"></script>
<!-- endbuild -->
{%/block%}