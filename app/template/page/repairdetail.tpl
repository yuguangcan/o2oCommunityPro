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
	<p>报修订单：{%$data.rid%}</p>
	<p>报修房间：{%$data.roomName%}</p>
	<p>报修项目：{%$data.project%}</p>
	<p>报修详情：{%$data.content%}</p>

	<section class="submit" id="submit">
		<div class="repair-checkbox">
			<div>
	            <input id="set-done" class="button-checkbox" type="radio" checked="checked" name="done" value="result_ok">
	            <label for="set-done">已完成</label>
			</div>
			<div>
	            <input id="set-undone" class="button-checkbox" type="radio" name="done" value="result_off">
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

	<a href="javascript:;" class="m-submit" id="submit-repair">提交</a>
{%/block%}

{%block name="footer"%}
{%/block%}

{%block name="js"%}
<script type="text/javascript">
    F.context('rid','{%$data.rid%}');
</script>
<!-- build:js /static/community/scripts/page/repairdetail.js -->
<script src="static/scripts/page/repairdetail.js"></script>
<!-- endbuild -->
{%/block%}