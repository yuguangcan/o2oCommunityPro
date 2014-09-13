$(function(){
	$('.like-btn').click(function(){
		var _this = $(this);
		if(_this.hasClass('done')){
			return;
		}
		$.post('/community/activity/like?aid='+ F.context('aid'),{},function(resp){
			if(resp.errNo == 0){
				_this.addClass('done');
				_this.find('span').html(parseInt(_this.find('span').html()) + 1);
			}else{
				alert('提交错误，请稍后重试');
			}
		});
	});
	$('.join-btn').click(function(){
		var _this = $(this);
		if(_this.hasClass('done')){
			return;
		}
		$.post('/community/activity/join?aid='+ F.context('aid'),{},function(resp){
			if(resp.errNo == 0){
				_this.addClass('done');
				_this.find('span').html(parseInt(_this.find('span').html()) + 1);
				$('.submit').hide();
				$('#result').show();
			}else{
				alert('提交错误，请稍后重试');
			}
		});
	});
});