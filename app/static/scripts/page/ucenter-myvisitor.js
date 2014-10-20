
$(function(){
    new ScrollLoad({
        container : $('.visitor-list'),
        loading: $('.m-loading'),
        template : 'visitor_template',
        url : '/community/ucenter/myvisitor',
        rn : 10,
        emptyText : '暂无记录，么么哒'
    });
});
