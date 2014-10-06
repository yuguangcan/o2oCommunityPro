
$(function(){
	var date = $('#date'),
		count = $('#count'),
		other = $('#other');
	$('#submit-visitor').click(function(){
		if(!date.val()){
			alert('请选择访问时间');
		}
		if(count.val() == -1){
			alert('请选择访客人数');
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
		if(date.val() && count.val() != -1){
			$('#submit-visitor').removeClass('disabled');
		}else{
			$('#submit-visitor').addClass('disabled');
		}
	}
	new CustomSelect($('#dateselect'));
	new CustomSelect($('#countselect'));
});

