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

                {if 'pagetitle' ?}
                <h1 class="center_on_mobile">{'pagetitle' | resource}</h1>
                {/if}

                <div class="hidden_for_revealing hidden_text_revealing">

                    {'content' | resource}

                    {if 'content' | resource ?}
                    <a class="reveal_all" href="#"><span><b>Показать полностью</b></span></a>
                    {/if}

                </div>
            </div>
            
            {if ('tv_section_description_image' | tv) && ('tv_section_description_intro' | tv) }
            <div class="inner_section no_margin_bottom clearfix">

            <div class="opto_page_description">

                        {if 'tv_section_description_image' | tv}
                        <div class="img">
                            <img src="{'tv_section_description_image' | tv}" alt="">
                        </div>
                        {/if}

                        <div class="text">
                            <button class="button green_button">{'tv_section_description_title' | tv}</button>

                            {if 'tv_section_description_intro' | tv ?}
                            <p>
                                {'tv_section_description_intro' | tv}
                            </p>
                            {/if}
                        </div>    
                   
                   </div>
                {/if}

                {'infoBlock' | snippet : [
                'id' => 3
                ]}

                {*
                <div class="benefits_wrap">
                    <h2>Преимущества работы с нами:</h2>
                    
                    <div class="benefits_block">
                         
                            <div class="benefits_item">
                                <div class="icon icon1">
                                    <svg class="svg-icon svg-icon-md">
                                          <use xlink:href="#icon-benefit1"></use>
                                    </svg>
                                </div>
                                
                                <div class="text">
                                    <p>
                                       Минимальная фасовка
                                       продуктов 1 кг 
                                    </p>
                                </div>
                            </div>
                        
                        
                            <div class="benefits_item">
                                <div class="icon icon2">
                                    <svg class="svg-icon svg-icon-md">
                                          <use xlink:href="#icon-benefit2"></use>
                                    </svg>
                                </div>
                                
                                <div class="text">
                                    <p>
                                       Бесплатно доставим курьером 
                                        по Петербургу и Москве
                                    </p>
                                </div>
                            </div>
                        
                         
                            <div class="benefits_item">
                                <div class="icon icon3">
                                    <svg class="svg-icon svg-icon-md">
                                          <use xlink:href="#icon-benefit3"></use>
                                    </svg>
                                </div>
                                
                                <div class="text">
                                    <p>
                                       Быстрая доставка от 2 часов
                                    </p>
                                </div>
                            </div>
                        
                        
                         
                            <div class="benefits_item">
                                <div class="icon icon4">
                                    <svg class="svg-icon svg-icon-md">
                                          <use xlink:href="#icon-benefit4"></use>
                                    </svg>
                                </div>
                                
                                <div class="text">
                                    <p>
                                       Всегда свежие продукты
                                    </p>
                                </div>
                            </div>
                        
                        
                        
                            <div class="benefits_item">
                                <div class="icon icon5">
                                    <svg class="svg-icon svg-icon-md">
                                          <use xlink:href="#icon-benefit5"></use>
                                    </svg>
                                </div>
                                
                                <div class="text">
                                    <p>
                                       Низкий уровень цен на весь 
                                        оптовый ассортимент
                                    </p>
                                </div>
                            </div>
                      
                        
                       
                            <div class="benefits_item">
                                <div class="icon icon6">
                                    <svg class="svg-icon svg-icon-md">
                                          <use xlink:href="#icon-benefit6"></use>
                                    </svg>
                                </div>
                                
                                <div class="text">
                                    <p>
                                      Индивидуальные условия 
                                        для постоянных клиентов
                                    </p>
                                </div>
                            </div>
                        
                    </div><!--/advantages_block-->
                    *}
                    
                    <div class="text_benefits">
                         
                            {'!infoBlock' | snippet : [
                            'id' => 4
                            ]}
                       
                    </div><!--/text_benefits-->

                    {'!infoBlock' | snippet : [
                    'id' => 2
                    ]}
                    {*
                    <div class="opto_page_contacts">
                        <div class="opto_page_contacts_item">
                            <p class="title"><span class="red">Заказать</span> фрукты и овощи оптом
                            можно удобным способом:</p>
                        </div>

                        <div class="opto_page_contacts_item opto_page_contacts_item_social">
                            <a href="#" target="_blank">
                                <svg class="svg-icon svg-icon-md">
                                      <use xlink:href="#icon-social1"></use>
                                </svg>
                            </a>
                            <a href="#" target="_blank">
                                <svg class="svg-icon svg-icon-md">
                                      <use xlink:href="#icon-social2"></use>
                                </svg>
                            </a>
                            <a href="#" target="_blank">
                                <svg class="svg-icon svg-icon-md">
                                      <use xlink:href="#icon-social3"></use>
                                </svg>
                            </a>
                            <a href="#" target="_blank">
                                <svg class="svg-icon svg-icon-md">
                                      <use xlink:href="#icon-social4"></use>
                                </svg>
                            </a>
                            <a href="#" target="_blank">
                                <svg class="svg-icon svg-icon-md">
                                      <use xlink:href="#icon-social5"></use>
                                </svg>
                            </a>
                            <a href="#" target="_blank">
                                <svg class="svg-icon svg-icon-md">
                                      <use xlink:href="#icon-social6"></use>
                                </svg>
                            </a>
                            <a href="#" target="_blank">
                                <svg class="svg-icon svg-icon-md">
                                      <use xlink:href="#icon-social7"></use>
                                </svg>
                            </a>
                        </div>
                        <!--
                        <div class="opto_page_contacts_item">
                            <button class="cart_icon_button">Оформить на сайте</button>
                        </div>

                        <div class="opto_page_contacts_item">
                           <p class="mail_icon_p">Прислать заказ в удобном формате <br/>
                            нам на почту: <a href="mailto:info@fruktim.ru">info@fruktim.ru</a></p>
                        </div>
                        -->
                    </div>

                </div>
                *}


                {'!mvtForms2' | snippet : [
                'form' => 'questions'
                ]}
            
            </div>

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
                            <img class="image-section" src="{'tv_categories_section_textblock_image' | tv}">
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