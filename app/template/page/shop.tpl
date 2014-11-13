{%*附近商店*%}

{%extends file="community/layout/layout.tpl"%} 

{%block name="title"%}
{%$data.detail.typeName%}
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/community/styles/page/shop.css -->
<link rel="stylesheet" href="static/styles/page/shop.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="community/widget/header.tpl" headertitle="{%$data.detail.typeName%}"%}
{%/block%}


{%block name="content"%}
    <div class="shop-wrapper clearfix">
        <img src="{%$data.detail.img%}" class="img">
        <div class="info">
            <p class="title">{%$data.detail.title%}</p>
            <div class="price">
                <span>人均 ￥{%$data.detail.cost%}</span>
                <div class="discount">
                    {%if $data.detail.isDiscount%}
                    <i class="zhe">折</i>
                    {%/if%}
                    {%if $data.detail.isGift%}
                    <i class="song">送</i>
                    {%/if%}
                </div>
            </div>
            <p class="detail">
                环境{%$data.detail.environment%} 口味{%$data.detail.taste%} 服务{%$data.detail.service%}
            </p>
        </div>
    </div>
    <div class="address">{%$data.detail.address%}</div>
    <div class="tel">TEL:<a href="tel:{%$data.detail.phone%}">{%$data.detail.phone%}</a></div>
    <div class="des">
        <h2>推荐理由：</h2>
        <p>{%$data.detail.detail%}</p>
    </div>
{%/block%}


{%block name="js"%}
{%/block%}