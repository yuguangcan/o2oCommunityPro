
$(function(){
    new ScrollLoad({
        container : $('.repair-list'),
        loading: $('.m-loading'),
        template : 'repair_template',
        url : '/community/ucenter/myrepair',
        rn : 10,
        emptyText : '暂无记录，么么哒'
    });
});
