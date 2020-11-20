<meta charset="utf-8">

{if $_modx->resource.titl == ''}
    <title>{$_modx->getPlaceholder('dsmc_title')}</title>
{else}
    <title>{$_modx->resource.titl}</title>
{/if}

{if $_modx->resource.desc == ''}
    <meta name="description" content="{$_modx->getPlaceholder('dsmc_description')}">
{else}
    {if $_modx->resource.desc != ''}
        <meta name="description" content="{$_modx->resource.desc}">
    {else}
        <meta name="description" content="{$_modx->resource.pagetitle}. Магазин фруктов, сухофруктов и орехов Фруктим. Бесплатная доставка от 3500 рублей.">
    {/if}
{/if}
<base href="{'site_url' | option}">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width">
<meta name="yandex-verification" content="af3e8dabc1ea8a35" />
<meta name="yandex-verification" content="6bcab666d55fbf5a" />
<meta name="google-site-verification" content="quRxHy9tjlp4Z5JXy9EPn_qfxCdncyTcjxNa2h03Aew" />

<link href="favlogo.png" rel="shortcut icon" type="image/x-icon" />


{if 'template' | resource == '21' || 'template' | resource == 22}
<link rel="stylesheet" href="assets/templ/css/bootstrap-grid.css" />
{/if}

<link href="assets/templ/css/jquery.fancybox.css" media="all" rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="assets/templ/css/ezmark.css" />
<link type="text/css" rel="stylesheet" href="assets/templ/css/slick.css" />
<link type="text/css" rel="stylesheet" href="assets/templ/css/slick-theme.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="assets/templ/css/jquery.selectBox.css" />
<link type="text/css" rel="stylesheet" href="assets/templ/css/jquery.nouislider.min.css" />
<link type="text/css" rel="stylesheet" href="assets/templ/css/jquery.selectbox-mobile.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
<!--<link type="text/css" rel="stylesheet" href="assets/templ/css/style.css[[!vers]]" />-->
<link type="text/css" rel="stylesheet" href="assets/templ/css/style.css?ver=[[!vers]]" />
<link type="text/css" rel="stylesheet" href="assets/templ/css/adaptive.css?ver=1.01" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600,700&amp;subset=cyrillic" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="assets/templ/js/slick.min.js"></script>
<script src="assets/templ/js/jquery.ezmark.min.js"></script>
<script src="assets/templ/js/jquery.selectBox.js"></script>
<script src="assets/templ/js/nouislider.min.js"></script>
<script src="assets/templ/js/jquery.validate.js"></script>
<!--<script type="text/javascript" src="assets/templ/js/maskedinput.js"></script>-->
<script type="text/javascript" src="assets/templ/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="assets/templ/js/jquery.sticky.js"></script>
<script type="text/javascript" src="https://api-maps.yandex.ru/2.1/?lang=ru_RU"></script>

<script src="assets/templ/js/jquery.selectbox-mobile.js"></script>
<script src="assets/templ/js/jquery.fancybox.js"></script>
<script src="assets/templ/js/main.js[[!vers]]"></script>

{$_modx->config.ga_head}