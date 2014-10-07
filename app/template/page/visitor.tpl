{%*首页*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
访客预约
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/widget/mobiscroll.css -->
<link rel="stylesheet" href="static/styles/widget/mobiscroll/mobiscroll.core-2.5.2.css">
<link rel="stylesheet" href="static/styles/widget/mobiscroll/mobiscroll.animation-2.5.2.css">
<link rel="stylesheet" href="static/styles/widget/mobiscroll/mobiscroll.android-ics-2.5.2.css">
<!-- endbuild -->

<!-- build:css(.tmp) /static/community/styles/page/visitor.css -->
<link rel="stylesheet" href="static/styles/page/visitor.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
	{%include file="community/widget/header.tpl" headertitle="访客预约"%}
{%/block%}


{%block name="content"%}
	<section class="submit" id="submit">
		<div class="m-select" id="dateselect">
			<span class="notice">时间</span>
			<span class="arrow"></span>
			<input type="text" id="date" value="请选择访问时间">
		</div>
		<div class="m-select" id="countselect">
			<span class="notice">人数</span>
			<span class="arrow"></span>
			<div class="info">请选择人数</div>
			<select id="count">
				<option value="1">1人</option>
				<option value="2">2人</option>
				<option value="3">3人</option>
				<option value="4">4人</option>
				<option value="5">5人</option>
				<option value="6">6人</option>
				<option value="7">7人</option>
				<option value="8">8人</option>
				<option value="9">9人</option>
				<option value="10">10人</option>
			</select>
		</div>
		<div class="m-textarea">
			<textarea placeholder="备注（选填）" id="other"></textarea>
		</div>
		<a href="javascript:;" class="m-submit disabled" id="submit-visitor">提交</a>
	</section>
	<section class="result" id="result">
		<div class="m-result">
			<h3>提交成功</h3>
			<p>你已经成功登记预约<span id="result-date">06月10日</span><span id="result-count">2</span>人，请将以下验证码发送给访客</p>
			<div class="code" id="result-code">1234</div>
			<div class="opt clearfix">
				<a href="/" class="m-cancel">返回首页</a>
				<a href="tel:123" class="m-submit">立即电话</a>
			</div>
		</div>
		
	</section>
{%/block%}

{%block name="js"%}
<!-- build:js /static/community/scripts/widget/mobiscroll.js -->
<script src="static/scripts/widget/mobiscroll/mobiscroll.zepto.js"></script>
<script src="static/scripts/widget/mobiscroll/mobiscroll.core-2.5.2.js"></script>
<script src="static/scripts/widget/mobiscroll/mobiscroll.core-2.5.2-zh.js"></script>
<script src="static/scripts/widget/mobiscroll/mobiscroll.datetime-2.5.1.js"></script>
<script src="static/scripts/widget/mobiscroll/mobiscroll.datetime-2.5.1-zh.js"></script>
<script src="static/scripts/widget/mobiscroll/mobiscroll.android-ics-2.5.2.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/widget/customSelect.js -->
<script src="static/scripts/widget/customSelect.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/page/visitor.js -->
<script src="static/scripts/page/visitor.js"></script>
<!-- endbuild -->
{%/block%}