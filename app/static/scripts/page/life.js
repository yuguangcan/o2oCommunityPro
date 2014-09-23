
$(function(){
    var navList = $('.m-nav li'),
        contentList = $('.life-content'),
        scroll;
    navList.click(function(){
        var item = $(this);
        if(item.hasClass('on')){
            return;
        }
        var index = $.inArray(item.get(0),navList)
        navList.filter('.on').removeClass('on');
        item.addClass('on');

        contentList.empty();

        if(scroll){
            scroll.reset();
        }

        scroll = new ScrollLoad({
            container : contentList,
            loading: $('.m-loading'),
            template : 'shop_template',
            url : '/community/local/list',
            data : {
                typeId : item.data('type')
            }
        });
    });
    var typeId = getQueryStringByName('typeId');
    navList.filter('[data-type="'+typeId+'"]').trigger('click');

    function getQueryStringByName(name){
        var result = location.search.match(new RegExp('[\?\&]' + name+ '=([^\&]+)','i'));
        if(result == null || result.length < 1){
            return '';
        }
        return result[1];
    }
});
