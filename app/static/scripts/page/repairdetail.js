$(function(){
    var state = 'result_ok';
    $('#set-done').click(function(){
        $('#cost').removeClass('disabled').get(0).disabled = false;
        state = $(this).val();
    });
    $('#set-undone').click(function(){
        $('#cost').addClass('disabled').get(0).disabled = true;
        state = $(this).val();
    });
    $('#submit-repair').click(function(){

        $.post('/community/repair/operation',{
            up_mode:'re',
            id: F.context('rid'),
            state:state,
            solution_content : $.trim($('#detail').val()),
            repair_cost: $.trim($('#cost').val()),
            repair_state : 0
        },function(resp){
            if(resp.errNo == 0){
                alert('提交成功');
            }else{
                alert('提交错误，请稍后重试');
            }
        });
    });
});