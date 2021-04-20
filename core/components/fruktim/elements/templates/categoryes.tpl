<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'head'}
</head>
<body>

{include 'callback'}

<div class="page_container inner_page_container" id="top">
    {include 'header_new'}
    <section class="main main_on_inner_pages">
        <div class="breadcrumbs_block">
            <div class="inner_section">
                {'pdoCrumbs' | snippet : [
                'tplWrapper' => '@INLINE
                <ul class="breadcrumbs">{$output}</ul>
                '
                ]}
            </div>
        </div>

        <section class="the_content_section the_card_content_section the_cat_content_section padd_bottom0 bg_fff">
            <div class="inner_section main-title clearfix no_bg">

                <div class="section_title section_hero">
                <h1>{'pagetitle' | resource}</h1>
                    {if 'tv_section_titlehero_link' | tv ?}
                    <div class="link_block_all_see">
                        <a class="see_all" href="{'tv_section_titlehero_link' | tv | url}">Смотреть все</a>
                    </div>
                    {/if}
                </div>

                <div class="hidden_for_revealing hidden_text_revealing">

                    {'content' | resource}

                    {if 'content' | resource ?}
                    <a class="reveal_all" href="#"><span><b>Показать полностью</b></span></a>
                    {/if}

                </div>
            </div>

            <div class="pop_cat_block ">
                <nav class="hidden_for_revealing fast-links-container inner_section">
                    {'!pdoMenu' | snippet : [
                    'tplOuter' => '@INLINE
                    <ul>{$wrapper}</ul>',
                    'level' => 1,
                    'where' => ['isfolder' => 1]
                    ]}
                    <a class="reveal_all visible_on_mobile_only" href="#"><span><b>Показать полностью</b></span></a>
                </nav>
            </div>

            {'!msPreWrapperCase' | snippet : [
            'snippet' => 'pdoResources',
            'parents' => 8,
            'resources' => 'tv_categories_landing_combo_preset_5' | tv | fromJSON | join,
            'tplWrapper' => 'dsmc.msProducts.wrapper.categories',
            'wrapIfEmpty' => 0,
            'tpl' => 'dsmc.msProducts.row.category',
            'limit' => 12,
            'includeTVs' => 'tv_image_section_popular_category',
            'tvPrefix' => '',
            'sortby' => 'ids',
            'wrapperPlaceholders' => [
            'title' => 'Популярные категории',
            ]
            ]}


            {'!msPreWrapperCase' | snippet : [
            'parents' => 'tv_categories_landing_combo_preset_1' | tv | fromJSON | join,
            'tplWrapper' => 'dsmc.wrapper.product',
            'wrapIfEmpty' => 0,
            'tpl' => 'dsmc.tpl.row.product'
            'limit' => 10,
            'wrapperPlaceholders' => [
            'title' => 'tv_categories_landing_combo_preset_1' | tv_superselect_get : 'pagetitle',
            'number_title' => 3,
            'parent_link' => 'tv_categories_landing_combo_preset_1' | tv_superselect_get : 'uri',
            'carusel' => 0
            ],
            'optionFilters' => [
            'taxonomy_product' => 'landing',
            ] | json_encode,
            'sortby' => [
            'menuindex' => 'ASC'
            ]]
            }

            {'!msPreWrapperCase' | snippet : [
            'parents' => 'tv_categories_landing_combo_preset_2' | tv | fromJSON | join,
            'tplWrapper' => 'dsmc.wrapper.product',
            'wrapIfEmpty' => 0,
            'tpl' => 'dsmc.tpl.row.product'
            'limit' => 10,
            'wrapperPlaceholders' => [
            'title' => 'tv_categories_landing_combo_preset_2' | tv_superselect_get : 'pagetitle',
            'number_title' => 3,
            'parent_link' => 'tv_categories_landing_combo_preset_2' | tv_superselect_get : 'uri',
            'carusel' => 0
            ],
            'optionFilters' => [
            'taxonomy_product' => 'landing',
            ] | json_encode
            'sortby' => [
            'menuindex' => 'ASC'
            ]]}

            <section class="wr-opt">
                <div class="container p-0">
                    <div class="row justify-content-md-between align-items-md-start">
                        <div class="col-12 col-lg-6 block-section">
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
                        </div>
                        <div class="col-12 col-lg-5 image-section-container">
                            {if 'tv_categories_section_textblock_image' | tv ?}
                            <svg viewBox="0 0 414 374">
                                <path d="M14 243C-5.19999 272.6 0.666679 310 6.00001 325C52 412 159 353 310 366C461 379 407 238 391 217C375 196 379 164 383 146C387 128 417 29 323 45C229 61 243 14 149 2.00002C55 -9.99998 -6 57 22 125C50 193 38 206 14 243Z"
                                      fill="#FFF7E1"/>
                            </svg>
                            <img class="image-section" src="{'tv_categories_section_textblock_image' | tv}" alt="{'tv_categories_section_textblock_title' | tv}">
                            {/if}
                        </div>
                    </div>
                </div>
            </section>


            {'!msPreWrapperCase' | snippet : [
            'parents' => 'tv_categories_landing_combo_preset_3' | tv | fromJSON | join,
            'tplWrapper' => 'dsmc.wrapper.product'
            'tpl' => 'dsmc.tpl.row.product'
            'limit' => 10,
            'wrapperPlaceholders' => [
            'title' => 'tv_categories_landing_combo_preset_3' | tv_superselect_get : 'pagetitle',
            'number_title' => 3,
            'parent_link' => 'tv_categories_landing_combo_preset_3' | tv_superselect_get : 'uri',
            'carusel' => 0
            ],
            'optionFilters' => [
            'taxonomy_product' => 'landing'
            ] | json_encode
            'sortby' => [
            'menuindex' => 'ASC'
            ]]}

            {'!msPreWrapperCase' | snippet : [
            'parents' => 'tv_categories_landing_combo_preset_4' | tv | fromJSON | join,
            'tplWrapper' => 'dsmc.wrapper.product'
            'tpl' => 'dsmc.tpl.row.product'
            'limit' => 10,
            'wrapperPlaceholders' => [
            'title' => 'tv_categories_landing_combo_preset_4' | tv_superselect_get : 'pagetitle',
            'number_title' => 3,
            'parent_link' => 'tv_categories_landing_combo_preset_4' | tv_superselect_get : 'uri',
            'carusel' => 0
            ],
            'optionFilters' => [
            'taxonomy_product' => 'landing'
            ] | json_encode
            'sortby' => [
            'menuindex' => 'ASC'
            ]]}
            
            <section class="wr-opt">
                <div class="container p-0">
                    <div class="row justify-content-md-between align-items-md-start">
                        <div class="col-12 col-lg-5 image-section-container">
                            {if 'tv_categories_section_textblock_image_2' | tv ?}
                            <svg viewBox="0 0 414 374">
                                <path d="M14 243C-5.19999 272.6 0.666679 310 6.00001 325C52 412 159 353 310 366C461 379 407 238 391 217C375 196 379 164 383 146C387 128 417 29 323 45C229 61 243 14 149 2.00002C55 -9.99998 -6 57 22 125C50 193 38 206 14 243Z"
                                      fill="#FFF7E1"/>
                            </svg>
                            <img class="image-section image-second-section" src="{'tv_categories_section_textblock_image_2' | tv}" alt="{'tv_categories_section_textblock_title_2' | tv}">
                            {/if}
                        </div>
                        <div class="col-12 col-lg-6 block-section">
                            {if 'tv_categories_section_textblock_title_2' | tv ?}
                            <div class="card-title">
                                <h3>{'tv_categories_section_textblock_title_2' | tv}</h3>
                            </div>
                            {/if}
                            {if 'tv_categories_section_textblock_description_2' | tv ?}
                            <div class="card-body">
                                {'tv_categories_section_textblock_description_2' | tv}
                            </div>
                            {/if}
                        </div>
                    </div>
                </div>
            </section>
            
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