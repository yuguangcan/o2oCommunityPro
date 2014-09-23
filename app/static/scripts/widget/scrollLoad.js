function ScrollLoad(options){
    this.container = options.container;
    this.url = options.url;
    this.template = options.template;
    this.loading = options.loading;
    this.pn = 0;
    this.rn = options.rn || 3;
    this.data = options.data || {};
    var _self = this;
    this.loadHandel = function(){
        var reachBottom = document.body.scrollTop + window.innerHeight >= $(document).height() - 200;
        if ( reachBottom ) {
            $(document).off('scroll',_self.loadHandel);
            _self.loadData();
        }
    };      
    this.init();
}

ScrollLoad.prototype.loadData = function(){
    var _self = this;
    var param = $.param($.extend({
        pn : _self.pn,
        rn : _self.rn
    },_self.data));
    $.get(_self.url + '?' + param, function(data) {
        
        if(data.data.hasMore){
            _self.pn = _self.pn + _self.rn;
            $(document).on('scroll', _self.loadHandel);
            _self.loading.show();
        }else{
            $(document).off('scroll', _self.loadHandel);
            _self.loading.hide();
            
        }
        var content = baidu.template(_self.template, {list: data.data.list});
        _self.container.append(content);
    });
}
ScrollLoad.prototype.init = function(){
    this.loadData();
}
ScrollLoad.prototype.reset = function(){
    if(this.loadHandel){
        $(document).off('scroll', this.loadHandel);
    }
}