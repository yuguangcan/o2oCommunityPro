
$(function(){
    new ScrollLoad({
        container : $('.complain-list'),
        loading: $('.m-loading'),
        template : 'complain_template',
        url : '/community/ucenter/mycomplain',
        rn : 10,
        emptyText : '暂无记录，么么哒'
    });
});
