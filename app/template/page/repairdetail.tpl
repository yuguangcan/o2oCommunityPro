{%*维修*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
维修详情
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/repairdetail.css -->
<link rel="stylesheet" href="static/styles/page/repairdetail.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
{%/block%}


{%block name="content"%}
	<p>报修订单：123</p>
	<p>报修房间：1号</p>
	<p>报修项目：水电</p>
	<p>报修详情：漏水</p>

	<section class="submit" id="submit">
		<div class="repair-checkbox">
			<div>
	            <input id="set-done" class="button-checkbox" type="checkbox">
	            <label for="set-done">已完成</label>
			</div>
			<div>
	            <input id="set-undone" class="button-checkbox" type="checkbox">
	            <label for="set-undone">未完成</label>
			</div>
		</div>
		<div class="repair-input">
    		<label>维修价格：</label><input name="cost" id="cost" type="text" value="">
    	</div>
		<div class="repair-detail">
    		<label>维修详情：</label>
            <textarea name="name" id="detail"></textarea>
    	</div>
	</section>

	<a href="javascript:;" class="m-submit" id="submit-complain">提交</a>
{%/block%}

{%block name="footer"%}
{%/block%}

{%block name="js"%}
<!-- build:js /static/community/scripts/page/repairdetail.js -->
<script src="static/scripts/page/repairdetail.js"></script>
<!-- endbuild -->
{%/block%}