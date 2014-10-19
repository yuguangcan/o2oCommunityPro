
$(function(){
    new ScrollLoad({
        container : $('.like-list'),
        loading: $('.m-loading'),
        template : 'activity_template',
        url : '/community/activity/mylike',
        rn : 10,
        emptyText : '暂无收藏活动，么么哒'
    });
});
