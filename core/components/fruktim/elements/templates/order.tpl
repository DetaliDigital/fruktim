<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'head'}
</head>
<body>

{include 'header_new'}
<div class="page_container main_page_container" id="top">

    <section class="main main_on_inner_pages">
        <div class="breadcrumbs_block">
            <div class="inner_section">
                [[pdoCrumbs?&tplWrapper=`@INLINE <ul class="breadcrumbs">[[+output]]</ul>`&showHome=`1`]]
            </div>
        </div>

        <section class="the_content_section bg_fff">
            <div class="inner_section clearfix">
                <div class="cart_page_block">

                    <h1>{'longtitle' | resource ?: 'pagetitle' | resource}</h1>

                    {'!msCart' | snippet : [
                    'tpl' => 'dsmc.tpl.msCart'
                    ]}

                    {'!msOrder' | snippet : [
                    'tpl' => 'dsmc.tpl.msOrder'
                    ]}

                </div><!--/the_cart_page_block-->
            </div>
        </section>


    </section>

    {include 'footer'}

</div>
{include 'scripts'}
</body>
</html>