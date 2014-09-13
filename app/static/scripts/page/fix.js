
$(function(){
	var type = $('#type'),
		other = $('#other');
	$('#submit-fix').click(function(){
		$.post('/community/repair/operation',{
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
