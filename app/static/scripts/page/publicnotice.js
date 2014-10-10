
$(function(){
    new ScrollLoad({
        container : $('.public-list'),
        loading: $('.m-loading'),
        template : 'public_template',
        url : '/community/announce/list',
        rn : 10,
        emptyText : '暂无公告，么么哒'
    });
});
