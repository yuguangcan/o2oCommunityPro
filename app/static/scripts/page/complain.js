
$(function(){
	var other = $('#other');
	$('#submit-complain').click(function(){
		$.post('/community/complain/operation',{
			up_mode : 'add',
			content : other.val(),
			pro_id : 1
		},function(resp){
			if(resp.errNo == 0){
				$('#submit').hide();
				$('#result').show();
			}else{
				alert('提交错误，请稍后重试');
			}
		});
	});
});
