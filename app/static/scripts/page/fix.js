
$(function(){
	var type = $('#type'),
		other = $('#other');
	$('#submit-fix').click(function(){
		if($(this).hasClass('disabled')){
			return;
		}
		var typeId = type.val();
		if(typeId == -1){
			alert('请选择报修项目');
			return;
		}
		$.post('/community/repair/add',{
			content : other.val(),
			pro_id : typeId
		},function(resp){
			if(resp.errNo == 0){
				$('#submit').hide();
				$('#result').show();
			}else{
				alert('提交错误，请稍后重试');
			}
		});
	});
	type.on('change',function(){
		if(type.val() == -1){
			$('#submit-fix').addClass('disabled');
		}else{
			$('#submit-fix').removeClass('disabled');
		}
	})
	new CustomSelect($('.m-select'));
});
