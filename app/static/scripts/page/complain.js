
$(function(){
	var other = $('#other');
	$('#submit-complain').click(function(){
		if($.trim(other.val()) == "" || $(this).hasClass('disabled')){
			alert('请输入投诉内容');
			return;
		}
		$.post('/community/complain/add',{
			content : other.val()
		},function(resp){
			if(resp.errNo == 0){
				$('#submit').hide();
				$('#result').show();
			}else{
				alert('提交错误，请稍后重试');
			}
		});
	});
	other.on('input',function(e){
		if($.trim(other.val()) == ""){
			$('#submit-complain').addClass('disabled');
		}
		else{
			$('#submit-complain').removeClass('disabled');
		}
	});
});
