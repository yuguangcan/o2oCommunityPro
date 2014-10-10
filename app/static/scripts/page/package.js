
$(function(){
    new ScrollLoad({
        container : $('.package-list'),
        loading: $('.m-loading'),
        template : 'package_template',
        url : '/community/package/packagelist',
        rn : 10,
        emptyText : '暂无包裹，么么哒'
    });
});
