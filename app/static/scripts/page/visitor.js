
$(function(){
	var date = $('#date'),
		count = $('#count'),
		other = $('#other');
	$('#submit-visitor').click(function(){
		if(date.val() =='请选择访问时间'){
			alert('请选择访问时间');
			return;
		}
		if(count.val() == -1){
			alert('请选择访客人数');
			return;
		}
		if($(this).hasClass('disabled')){
			return;
		}
		$.post('/community/visitor/addvisitorbyhost',{
			visitorTime : date.val(),
			visitorNum : count.val(),
			other : other.val()
		},function(resp){
			if(resp.errNo == 0){
				$('#result-date').html(date.val());
				$('#result-count').html(count.val());
				$('#result-code').html(resp.data.data.code);
				$('#submit').hide();
				$('#result').show();
			}else{
				alert('提交错误，请稍后重试');
			}
		});
	});
	date.on('change',function(){
		toggerSubmit();
	});
	count.on('change',function(){
		toggerSubmit();
	});
	function toggerSubmit(){
		if(date.val()!='请选择访问时间' && count.val() != -1){
			$('#submit-visitor').removeClass('disabled');
		}else{
			$('#submit-visitor').addClass('disabled');
		}
	}
	//new CustomSelect($('#dateselect'));
	new CustomSelect($('#countselect'));

	var currYear = (new Date()).getFullYear();	
	var opt = {
		preset: 'date',
		theme: 'android-ics light', //皮肤样式
        display: 'modal', //显示方式 
        mode: 'scroller', //日期选择模式
		lang:'zh',
        startYear:currYear - 10, //开始年份
        endYear:currYear + 10 //结束年份
	};

	$("#date").scroller('destroy').scroller(opt);
});

