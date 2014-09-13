
$(function(){
    new ScrollLoad({
        container : $('.public-list'),
        loading: $('.m-loading'),
        template : 'public_template',
        url : '/community/announce/list'
    });
});
