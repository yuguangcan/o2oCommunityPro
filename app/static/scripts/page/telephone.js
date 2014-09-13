
$(function(){
	var navList = $('.m-nav li'),
		contentList = $('.telephone-content>li');
	navList.click(function(){
		var item = $(this);
		if(item.hasClass('on')){
			return;
		}
		var index = $.inArray(item.get(0),navList),
			selectContent = contentList.eq(index);
		navList.filter('.on').removeClass('on');
		item.addClass('on');
		contentList.filter('.on').removeClass('on');
		selectContent.addClass('on')
	});
	
	var popup = $('.m-popup'),
		popupContent = popup.find('.popup-content');
	popup.find('.popup-overlay').click(function(){
		popup.hide();
	});
	popup.find('.popup-cancel').click(function(){
		popup.hide();
	});
	$('.telephone-list li').click(function(){
		popupContent.html($(this).html());
		$('#popup-tel').get(0).href = 'tel:'+$(this).data('tel');
		popup.show();
	});
});

