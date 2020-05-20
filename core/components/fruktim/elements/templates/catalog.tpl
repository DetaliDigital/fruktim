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
                {'pdoCrumbs' | snippet : [
                'tplWrapper' => '@INLINE <ul class="breadcrumbs">{$output}</ul>'
                ]}
            </div>
        </div>

        <section class="the_content_section the_card_content_section the_cat_content_section padd_bottom0 bg_fff">
            <div class="inner_section clearfix no_bg">

                {if 'pagetitle' ?}
                <h1>{'pagetitle' | resource}</h1>
                {/if}

                <div class="hidden_for_revealing hidden_text_revealing">

                    {'content' | resource}

                    {if 'content' | resource ?}
                        <a class="reveal_all" href="#"><span><b>Показать полностью</b></span></a>
                    {/if}

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

            </div>
        </section>
    </section>

    {include 'footer'}

</div>
{include 'scripts'}
</body>
</html>