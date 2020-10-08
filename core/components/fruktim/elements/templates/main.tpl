<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'head'}
</head>
<body>
{ignore}
    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MXLWL7S"
                height="0" width="0" style="display:none;visibility:hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->
{/ignore}

{include 'callback'}
<div class="page_container main_page_container" id="top">

    {include 'header_new'}

    <section class="main" itemscope itemtype="http://schema.org/WebPage">

        {include 'banner_top'}

        <section class="advantages_section">
            <div class="inner_section">
                <div class="advantages_block">
                    [[getImageList?&docid=`1`&tvname=`advantage`&tpl=`@FILE:core/elements/chunks/items/advantageItem.tpl`]]
                </div>
            </div>
        </section>

        <section class="category_section">
            <div class="inner_section clearfix">

                <div class="category_section_left">
                    <div class="section_title_wrap">

                        {if 'title' | tv ?}
                            <p class="section_title"><span></span>{'title' | tv}</p>
                        {/if}

                    </div>
                    <div class="category_block_mark2 main-page-popular-category">
                        [[getImageList?&docid=`1`&tvname=`popular`&tpl=`@FILE:core/elements/chunks/items/categoryItem.tpl`]]
                    </div>
                </div>

                <div class="category_section_right">

                    <div class="category_section_right_article">
                        <article itemprop="mainContentOfPage">
                            {if 'longtitle' | resource ?}
                                <p class="title">{'longtitle' | resource}</p>
                            {/if}
                            {'content' | resource}
                        </article>
                    </div>
                </div>
            </div>
        </section>


        <section class="catalog_section main_actions_catalog_section">
            <div class="inner_section">


                <div class="main_actions_right">
                    <div class="main_actions_article">
                        {if 'title2' | tv ?}
                            <p class="title">{'title2' | tv}</p>
                        {/if}
                        {'text' | tv}
                        <a href="{'url' | tv}" class="button">Все акции</a>
                    </div>
                </div>

                <div class="main_actions_left">
                    <div class="catalog_block slider">

                        {'msProducts' | snippet : [
                        'depth' => 3,
                        'tpl' => 'dsmc.tpl.row.product',
                        'parents' => 8,
                        'limit' => 4,
                        'resources' => 'prod_main_id1' | tv
                        ]}

                    </div>
                </div>
            </div>
        </section>


        <section class="catalog_section main_catalog_section grey_bg">
            <div class="inner_section">

                <div class="section_title_wrap">
                    <p class="section_title centered no_decor"><span></span>{'title3' | tv}</p>
                </div>

                <div class="catalog_block wr-consumer slider">

                    {'msProducts' | snippet : [
                    'depth' => 3,
                    'tpl' => 'dsmc.tpl.row.product',
                    'parents' => 8,
                    'limit' => 10,
                    'resources' => 'prod_main_id2' | tv
                    ]}

                </div>
                <a href="{'717' | url}" class="button more_button">Все хиты продаж</a>
            </div>
        </section>


        <section class="main_about_section">
            <div class="inner_section clearfix">

                <div class="section_title_wrap">
                    {if 'title4' | tv ?}
                    <p class="section_title">
                        <span></span>{'title4' | tv}
                    </p>
                    {/if}
                </div>

                <div class="main_about_article">
                    {'text2' | tv}
                </div>

                <div class="main_about_list">
                    {if 'title5' | tv ?}
                        <p class="title">{'title5' | tv}</p>
                    {/if}

                    <ul class="main_about_ul">
                        [[getImageList?&docid=`1`&tvname=`about_list`&tpl=`@CODE:
                        <li>[[+title]]</li>
                        `]]
                    </ul>
                </div>

            </div>
        </section><!--/intresting_section-->

        <section class="how_we_work_section grey_bg">
            <div class="inner_section clearfix">
                <div class="section_title_wrap">
                    {if 'title6' | tv ?}
                        <p class="section_title">
                            <span></span>{'title6' | tv}
                        </p>
                    {/if}
                </div>
            </div>

            <div class="how_we_work_block">
                <div class="inner_section">
                    <div class="how_we_work_slider">
                        [[getImageList?&docid=`1`&tvname=`how_work`&tpl=`@FILE:core/elements/chunks/items/howworkItem.tpl`]]
                    </div>
                </div>
                <div class="how_we_work_block_arrows_holder">
                    <div class="inner_section">
                        <span></span>
                    </div>
                </div>

            </div>
        </section>

        {set $rows = json_decode(7 | resource : 'yandex_map', true)}
        {set $i = 1}

        <section class="map_section">

            {foreach $rows as $row first=$first}
            {set $coords = $row.address | split : ','}
            {if $first}
            <div class="map" id="map" data-map-coords1="{$coords[0]}" data-map-coords2="{$coords[1]}">
            {/if}
            {/foreach}
                <div class="map_pin_list" style="width:0px;height:0px;overflow:hidden;padding:0;margin:0;opacity:0;">
                    {foreach $rows as $row}
                        {set $coords = $row.address | split : ','}
                        <button data-pin-coords1="{$coords[0]}" data-pin-coords2="{$coords[1]}">{$i++}</button>
                    {/foreach}
                </div>
                <div class="map_info">
                    <div class="inner_section">
                        <div class="the_tabs map_tabs">
                            <div class="the_tabs_head">
                                [[getImageList?&docid=`7`&tvname=`contacts`&tpl=`@FILE:core/elements/chunks/items/contactsMenu.tpl`]]
                            </div>
                            <div class="the_tabs_content">
                                [[getImageList?&docid=`7`&tvname=`contacts`&tpl=`@FILE:core/elements/chunks/items/contactsItem.tpl`]]
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section><!--/map_section-->

    </section><!--/main-->

    {include 'footer'}
</div>
{include 'scripts'}
</body>
</html>