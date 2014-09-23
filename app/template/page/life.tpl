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
            {%foreach $data.types as $item%}
            <li data-type="{%$item.typeId%}">{%$item.typeName%}</li>
            {%/foreach%}
        </ul>
    </nav>

    <section class="life-content"></section>
    <p class="m-loading">正在加载更多</p>
{%/block%}

{%block name="js"%}
<script id="shop_template" type="text/html">

    <% for(var i=0;i<list.length;i++){ %>
        <a href="/community/local/detail?id=<%=list[i].id%>" class="shop-wrapper clearfix">
            <img src="<%=list[i].img%>" class="img">
            <div class="info">
                <p class="title"><%=list[i].title%></p>
                <div class="price">
                    <span>人均 ￥<%=list[i].cost%></span>
                    <div class="discount">
                        <% if(list[i].isDiscount) { %>
                        <i class="zhe">折</i>
                        <% } %>
                        <% if(list[i].isGift) { %>
                        <i class="song">送</i>
                        <% } %>
                    </div>
                </div>
                <p class="detail">
                    <%=list[i].address%>
                </p>
            </div>
        </a>
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