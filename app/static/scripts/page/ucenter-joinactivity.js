
$(function(){
    new ScrollLoad({
        container : $('.activity-list'),
        loading: $('.m-loading'),
        template : 'activity_template',
        url : '/community/activity/myjoin',
        rn : 10,
        emptyText : '暂无报名活动，么么哒'
    });
});
