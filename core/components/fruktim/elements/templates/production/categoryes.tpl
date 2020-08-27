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

                {'!msPreWrapperCase' | snippet : [
                'parents' => 588,
                'tplWrapper' => 'dsmc.msProducts.wrapper.categories'
                'tpl' => 'dsmc.msProducts.row.category'
                'limit' => 10,
                'wrapperPlaceholders' => [
                'title' => 'Популярные категории',
                ],
                ]}

                {'!msPreWrapperCase' | snippet : [
                'parents' => 'tv_categories_landing_combo_preset_1' | tv | fromJSON | join,
                'tplWrapper' => 'dsmc.wrapper.product'
                'tpl' => 'dsmc.tpl.row.product'
                'limit' => 4,
                'wrapperPlaceholders' => [
                'title' => 'tv_categories_landing_combo_preset_1' | tv_superselect_get : 'pagetitle',
                'number_title' => 3,
                'parent_link' => 'tv_categories_landing_combo_preset_1' | tv_superselect_get : 'uri',
                'carusel' => 0
                ],
                ]}

                {'!msPreWrapperCase' | snippet : [
                'parents' => 'tv_categories_landing_combo_preset_2' | tv | fromJSON | join,
                'tplWrapper' => 'dsmc.wrapper.product'
                'tpl' => 'dsmc.tpl.row.product'
                'limit' => 2,
                'wrapperPlaceholders' => [
                'title' => 'tv_categories_landing_combo_preset_2' | tv_superselect_get : 'pagetitle',
                'number_title' => 3,
                'parent_link' => 'tv_categories_landing_combo_preset_2' | tv_superselect_get : 'uri',
                'carusel' => 0
                ]
                ]}

                <section>
                    {if 'tv_categories_section_textblock_title' | tv ?}
                    <div class="card-title">
                    <h3>{'tv_categories_section_textblock_title' | tv}</h3>
                    </div>
                    {/if}
                    {if 'tv_categories_section_textblock_description' | tv ?}
                    <div class="card-body">
                        {'tv_categories_section_textblock_description' | tv}
                    </div>
                    {/if}

                    {if 'tv_categories_section_textblock_image' | tv ?}
                    <img src="{'tv_categories_section_textblock_image' | tv}">
                    {/if}

                </section>

                {'!msPreWrapperCase' | snippet : [
                'parents' => 'tv_categories_landing_combo_preset_3' | tv | fromJSON | join,
                'tplWrapper' => 'dsmc.wrapper.product'
                'tpl' => 'dsmc.tpl.row.product'
                'limit' => 2,
                'wrapperPlaceholders' => [
                'title' => 'tv_categories_landing_combo_preset_3' | tv_superselect_get : 'pagetitle',
                'number_title' => 3,
                'parent_link' => 'tv_categories_landing_combo_preset_3' | tv_superselect_get : 'uri',
                'carusel' => 0
                ]
                ]}

                {'!msPreWrapperCase' | snippet : [
                'parents' => 'tv_categories_landing_combo_preset_4' | tv | fromJSON | join,
                'tplWrapper' => 'dsmc.wrapper.product'
                'tpl' => 'dsmc.tpl.row.product'
                'limit' => 2,
                'wrapperPlaceholders' => [
                'title' => 'tv_categories_landing_combo_preset_4' | tv_superselect_get : 'pagetitle',
                'number_title' => 3,
                'parent_link' => 'tv_categories_landing_combo_preset_4' | tv_superselect_get : 'uri',
                'carusel' => 0
                ]
                ]}
            </div>
            {'!infoBlock' | snippet : [
            'id' => 1
            ]}
        </section>
    </section>

    {include 'footer'}

</div>
{include 'scripts'}
</body>
</html>