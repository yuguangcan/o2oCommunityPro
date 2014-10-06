{%*首页*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
物业报修
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/fix.css -->
<link rel="stylesheet" href="static/styles/page/fix.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="物业报修"%}
{%/block%}


{%block name="content"%}
	<section class="submit" id="submit">
		<div class="m-select">
			<span class="arrow"></span>
			<div class="info">请选择报修项目</div>
			<select id="type">
				{%foreach $data.project as $item%}
					<option value="{%$item.id%}">{%$item.content%}</option>
				{%/foreach%}
			</select>
		</div>
		<div class="m-textarea">
			<textarea placeholder="备注（选填）" id="other"></textarea>
		</div>
		<a href="javascript:;" class="m-submit disabled" id="submit-fix">提交</a>
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
<!-- build:js /static/community/scripts/widget/customSelect.js -->
<script src="static/scripts/widget/customSelect.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/page/fix.js -->
<script src="static/scripts/page/fix.js"></script>
<!-- endbuild -->
{%/block%}