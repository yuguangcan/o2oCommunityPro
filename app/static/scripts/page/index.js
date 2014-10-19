
    $(function(){
        var slider = Swipe(document.getElementById('public-slider'), {
            auto: 3000,
            continuous: true,
            callback: function(pos) {

              var i = bullets.length;
              
              if( i == 2 ){
                if(pos == 1||pos == 3){
                    bullets[0].className = ' ';
                    bullets[1].className = 'on';
                }else{
                    bullets[1].className = ' ';
                    bullets[0].className = 'on';
                }
              }else{
                while (i--) {
                    bullets[i].className = ' ';
                }
                bullets[pos].className = 'on';
              }
            }
        });
        if(document.getElementById('slider-position')){
            var bullets = document.getElementById('slider-position').getElementsByTagName('li');
        }

        var quickList = $('.quick-wrapper'),
            quickcontentList = $('.quick-content li');
        quickList.click(function(){
            var item = $(this);
            if(item.hasClass('on')){
                return;
            }
            var index = $.inArray(item.get(0),quickList),
                selectContent = quickcontentList.eq(index);
            quickList.filter('.on').removeClass('on');
            item.addClass('on');
            quickcontentList.filter('.on').removeClass('on');
            selectContent.addClass('on')
        });

        new ScrollLoad({
            container : $('#activity-list'),
            loading: $('.m-loading'),
            template : 'activity_template',
            url : '/community/activity/list',
            rn : 5
        });

        //抽奖
        $('#award').click(function(){
            $.get('/community/lucky/draw?activity_id='+$(this).data('id'),function(resp){
                if(resp.errNo == 0){
                    if(resp.data.result){
                        alert("恭喜您获得"+resp.data.prize.prizeName);
                    }else{
                        alert("很遗憾您没中奖");
                    }
                    $('#award').addClass('hide');
                    $('#award-result').find('.time').attr('data-time',resp.data.remainTime);
                    initTimeCountDown();
                }else{
                    alert(resp.errStr);
                }
            });
        });

        var timer;
        function initTimeCountDown(){
            clearInterval(timer);
            var timeDom = $('#award-result').find('.time');
            timer = setInterval(function(){
                var t = timeDom.data('time');
                if(t == 0){
                    $('#award').removeClass('hide');
                    clearInterval(timer);
                }
                var h = Math.floor(t/60/60%24),
                    m = Math.floor(t/60%60),
                    s = Math.floor(t%60);
                h = h<10?('0'+h):h;
                m = m<10?('0'+m):m;
                s = s<10?('0'+s):s;
                timeDom.html(h+':'+m+':'+s).data('time',t-1);
                $('#award-result').removeClass('hide');
            },1000);
        }
        if($('#award-result') && !$('#award-result').hasClass('hide')){
            initTimeCountDown();
        }
    });