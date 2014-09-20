function CustomSelect(id){
	this.selectContainer = $(id);
	this.select = this.selectContainer.find('select');
	this.options = this.select.find('option');
	this.info = this.selectContainer.find('.info');
	this.input = this.selectContainer.find('input');
	var _self = this;
	this.input.on('change',function(){
		_self.info.html(_self.input.val());
	})
	this.select.on('change',function(){
		_self.info.html(_self.options.filter('[value="'+_self.select.val()+'"]').html());
	})
}