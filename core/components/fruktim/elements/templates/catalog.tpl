<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'head'}
</head>
<body>
{include 'callback'}
<div class="page_container inner_page_container bg_f4f4f4" id="top">
    {include 'header_new'}
    <section class="main main_on_inner_pages">
        <div class="breadcrumbs_block">
            <div class="inner_section">
                [[pdoCrumbs?&tplWrapper=`@INLINE <ul class="breadcrumbs">[[+output]]</ul>`]]
            </div>
        </div>

        <section class="the_content_section the_card_content_section the_cat_content_section padd_bottom0 bg_fff">
            <div class="inner_section clearfix no_bg">


                <h1>[[*pagetitle]]</h1>

                <div class="hidden_for_revealing hidden_text_revealing">
                    [[*content]]

                    [[If?&subject=`[[*content]]`&operator=`notempty` &then=`<a class="reveal_all" href="#"><span><b>Показать полностью</b></span></a>` &else=``]]

                </div>

                <div class="pop_cat_block">

                    <nav class="hidden_for_revealing">
                        {'!pdoMenu' | snippet : [
                        'tplOuter' => '@INLINE <p class="title">Популярные категории</p><ul>{$wrapper}</ul>'
                        'level' => 1
                        'where' => ['isfolder' => 1]
                        ]}
                        <a class="reveal_all visible_on_mobile_only" href="#"><span><b>Показать полностью</b></span></a>
                    </nav>
                </div>

                {'!msPCS' | snippet : [
                'mode' => 2,
                'snippet' => 'mFilter2'
                'up' => 1,
                'class' => 'msProduct',
                'element' => 'msProducts',
                'limit' => 24,
                'tplOuter' => 'dsmc.tpl.mFilter2',
                'tpl' => 'dsmc.tpl.row.product',
                'sort' => 'resource|publishedon:desc'
                'tplFilter.outer.default'=> 'dsmc.tpl.mFilter2.filter.outer'
                'tplFilter.row.default'=> 'dsmc.tpl.mFilter2.filter.checkbox'
                ]}


                {*
                {'!mFilter2' | snippet : [
                'class' => 'msProduct',
                'element' => 'msProducts',
                'limit' => 24,
                'tplOuter' => 'dsmc.tpl.mFilter2',
                'tpl' => 'dsmc.tpl.row.product',
                'includeTVs' => 'price,image,country,pop,hit,act,cat,notin,set,basket,weight,price_old'
                'tvPrefix' => 'tv.',
                'filters' => '
                 ms|price:number,
                 ms|made_in:country,
                 msoption|promo,
                 msoption|tag,
                 msoption|group
                ',
                'sort' => 'resource|publishedon:desc'
                'tplFilter.outer.default'=> 'dsmc.tpl.mFilter2.filter.outer'
                'tplFilter.row.default'=> 'dsmc.tpl.mFilter2.filter.checkbox'
                'tplFilter.outer.msoption|group'=> 'dsmc.tpl.mFilter2.filter.outer.notitle'
                'tplFilter.outer.msoption|tag'=> 'dsmc.tpl.mFilter2.filter.outer.select'
                'tplFilter.row.msoption|tag'=> 'dsmc.tpl.mFilter2.filter.option'
                'tplFilter.outer.ms|price' => 'dsmc.tpl.mFilter2.filter.slider'
                'tplFilter.row.ms|price' => 'dsmc.tpl.mFilter2.filter.number'
                'tplFilter.row.ms|made_in' => 'tpl.mFilter2.filter.radio'
                ]}
                *}

            </div>
        </section>
    </section>

    {include 'footer'}

</div>
{include 'scripts'}
</body>
</html>