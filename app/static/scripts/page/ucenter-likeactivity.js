
$(function(){
    new ScrollLoad({
        container : $('.activity-list'),
        loading: $('.m-loading'),
        template : 'activity_template',
        url : '/community/activity/mylike',
        rn : 10,
        emptyText : '暂无喜欢活动，么么哒'
    });
});
