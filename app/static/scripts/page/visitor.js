
$(function(){
	var date = $('#date'),
		count = $('#count'),
		other = $('#other');
	$('#submit-visitor').click(function(){
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
});

