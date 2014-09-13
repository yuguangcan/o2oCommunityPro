<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport"/>
        <meta content="telephone=no" name="format-detection"/>
        <meta content="address=no" name="format-detection"/>
        <meta name="apple-mobile-web-app-capable" content="no" />
        <title>
            {%block name="title"%}社区首页{%/block%}
        </title>

        <!-- build:css(.tmp) /static/community/styles/base/common.css -->
        <link rel="stylesheet" href="static/styles/base/common.css">
        <!-- endbuild -->


        {%block name="css"%}
        {%/block%}

        <!-- build:js /static/community/scripts/base/context.js -->
        <script src="static/scripts/base/context.js"></script>
        <!-- endbuild -->

    </head>
    <body>
        {%block name="header"%}
            
        {%/block%}

        <div id="content-wrap">
            {%block name="content"%}
            {%/block%}
        </div>

        {%block name="footer"%}
            {%include file="community/widget/footer.tpl"%}
        {%/block%}
        
        {%block name="popup"%}
        {%/block%}

        <!-- build:js /static/community/scripts/base/zepto.js -->
        <script src="static/scripts/base/zepto.js"></script>
        <!-- endbuild -->
        {%block name="js"%}
        {%/block%}

        {%block name="hideweixinmenu"%}
            <script type="text/javascript">
                document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
                    WeixinJSBridge.call('hideOptionMenu');
                });
            </script>
        {%/block%}
    </body>
</html>
