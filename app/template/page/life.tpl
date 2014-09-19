{%*社区生活*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
社区生活
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/life.css -->
<link rel="stylesheet" href="static/styles/page/life.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="community/widget/header.tpl" headertitle="社区生活"%}
{%/block%}


{%block name="content"%}
    <nav class="m-nav">
        <ul>
            <li class="on">附近美食</li>
            <li>家政保洁</li>
            <li>交通出行</li>
            <li>健身运动</li>
        </ul>
    </nav>

    <section class="life-content">
        <a href="###" class="life-wrapper clearfix">
            <img src="" class="img">
            <div class="info">
                <p class="title">海底捞</p>
                <div class="price">
                    <span>人均 ￥86</span>
                    <div class="discount">
                        <i class="zhe">折</i>
                        <i class="song">送</i>
                    </div>
                </div>
                <p class="detail">
                    好吃不贵，真是好吃啊哈哈哈哈哈，来一个啊啊啊啊啊啊
                </p>
            </div>
        </a>
    </section>
    <p class="m-loading">正在加载更多</p>
{%/block%}

{%block name="js"%}
<script id="life_template" type="text/html">

    <% for(var i=0;i<list.length;i++){ %>
    <div class="life-wrapper">
        <div class="m-box">
            <h3><%=list[i].title%></h3>
            <p><%=list[i].content%></p>
        </div>
        <div class="pay-info">
            <% if(list[i].area){ %>
            <span>单价<%=list[i].area%>元/m<sup>2</sup></span>
            <% } %>
            <span>总价<b><%=list[i].price%>元</b></span>
            <!--
            <a href="javascript:;" class="m-submit">缴费</a>
            -->
        </div>
    </div>
    <% } %>
    
</script>
<!-- build:js /static/community/scripts/base/baiduTemplate.js -->
<script src="static/scripts/base/baiduTemplate.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/widget/scrollLoad.js -->
<script src="static/scripts/widget/scrollLoad.js"></script>
<!-- endbuild -->
<!-- build:js /static/community/scripts/page/life.js -->
<script src="static/scripts/page/life.js"></script>
<!-- endbuild -->
{%/block%}