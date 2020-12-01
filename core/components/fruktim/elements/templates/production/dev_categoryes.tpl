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
            
              
            <div class="inner_section no_margin_bottom clearfix">
            
            <div class="opto_page_description">
                    
                        <div class="img">
                            <img src="assets/templ/img/opto-pic1.png" alt="">
                        </div>    
                   
                    
                   
                        <div class="text">
                            <button class="button green_button">Бесплатно доставляем</button>
                            
                            <p>
                                по Санкт-Петербургу и Москве <br/>
                                оптовые заказы <b class="red">от 15 000 рублей</b>
                            </p>
                        </div>    
                   
                   </div>
                    
                    <div class="opto_page_introtext">
                        <p>
                            <p><b>Интернет-магазин "Фруктим"</b> - это надежный оптовый поставщик фруктов, овощей, орехов, сухофруктов и других натуральных продуктов. Скоропортящиеся продукты мы доставляем оптом только по Петербургу и Москве, остальной ассортимент, например, орехи и сухофрукты, мы доставляем оптом по всей России.</p>
                            <p>Мы всегда доставляем только вкусные фрукты и овощи. Вы почувствуете разницу с продукцией из супермаркетов! Мы отбираем все товары вручную, проверяя соответствие качества высоким стандартам. Фруктим – это внимательное отношение к каждому клиенту и отличная обратная связь. Ежедневно наши курьеры доставляют еду в офисы, гостиницы, рестораны, кафе, столовые, и другие заведения хорека и общепита.</p>
                        </p>    
                    </div>
                
                
                <div class="benefits_wrap">
                    <h2>Преимущества работы с нами:</h2>
                    
                    <div class="benefits_block">
                         
                            <div class="benefits_item">
                                <div class="icon icon1"></div>
                                
                                <div class="text">
                                    <p>
                                       Минимальная фасовка<br>
                                       продуктов <b>от 1 кг</b> 
                                    </p>
                                </div>
                            </div>
                        
                        
                            <div class="benefits_item">
                                <div class="icon icon2"></div>
                                
                                <div class="text">
                                    <p>
                                       <b>Бесплатно</b> доставляем<br> 
                                        по Петербургу и Москве
                                    </p>
                                </div>
                            </div>
                        
                         
                            <div class="benefits_item">
                                <div class="icon icon3"></div>
                                
                                <div class="text">
                                    <p>
                                       Быстрая доставка<br> <b>от 2 часов</b> 
                                    </p>
                                </div>
                            </div>
                        
                        
                         
                            <div class="benefits_item">
                                <div class="icon icon4"></div>
                                
                                <div class="text">
                                    <p>
                                       Всегда<br> свежие продукты
                                    </p>
                                </div>
                            </div>
                        
                        
                        
                            <div class="benefits_item">
                                <div class="icon icon5"></div>
                                
                                <div class="text">
                                    <p>
                                       <b>Низкие цены</b>  на весь<br> 
                                        оптовый ассортимент
                                    </p>
                                </div>
                            </div>
                      
                        
                       
                            <div class="benefits_item">
                                <div class="icon icon6"></div>
                                
                                <div class="text">
                                    <p>
                                      <b>Индивидуальные условия</b> 
                                        постоянным клиентам
                                    </p>
                                </div>
                            </div>
                        
                    </div><!--/advantages_block-->
                    
                    <div class="text_benefits">
                         
                            <div class="text_benefits_item">
                                <p>
                                   <span class="red">Мы знаем</span>
                                    что в вопросе поставок продуктов, решающими и самыми ценными являются три фактора: качество, цены и скорость поставки. 
                                </p>
                            </div>
                       
                        
                        
                            <div class="text_benefits_item">
                                <p>
                                   <span class="red">Всегда следим </span>
                                   чтобы качество продукции и скорость доставки всегда оставались на высоком уровне, а цены на низком. 
                                </p>
                            </div>
                     
                        
                       
                            <div class="text_benefits_item">
                                <p>
                                   <span class="red">Придерживаемся </span>
                                    правила, что фрукты и овощи должны быть свежими, спелыми и обладать яркими вкусовыми качествами. 
                                </p>
                            </div>
                       
                    </div><!--/text_benefits-->
                    
                    <div class="opto_page_contacts">
                        <div class="opto_page_contacts_item">
                            <p class="title"><span class="red">Заказать</span> фрукты и овощи оптом 
                            можно удобным способом:</p>
                        </div>
                        
                        <div class="opto_page_contacts_item opto_page_contacts_item_social">
                            <a href="#" target="_blank"><img src="assets/templ/img/opto-s1.svg" alt=""></a>
                            <a href="#" target="_blank"><img src="assets/templ/img/opto-s2.svg" alt=""></a>
                            <a href="#" target="_blank"><img src="assets/templ/img/opto-s3.svg" alt=""></a>
                            <a href="#" target="_blank"><img src="assets/templ/img/opto-s4.svg" alt=""></a>
                            <a href="#" target="_blank"><img src="assets/templ/img/opto-s5.svg" alt=""></a>
                            <a href="#" target="_blank"><img src="assets/templ/img/opto-s6.svg" alt=""></a>
                            <a href="#" target="_blank"><img src="assets/templ/img/opto-s7.svg" alt=""></a>
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
                
                <div class="bottom_horizontal_form_wrap">
                    <div class="the_form one_click_form_block bottom_horizontal_form">

                        <form method="post" class="mvtForm2" id="bottom_horizontal_form">
                <input type="hidden" name="form" value="bottom_horizontal_form">
                <input type="hidden" name="bottom_horizontal_form_resource" value="">
                <input type="hidden" name="token" value="">
                <input type="hidden" name="bottom_horizontal_form_product" id="mvtForms2ProductId" value="">
                <input type="hidden" name="bottom_horizontal_form_product_count" id="mvtForms2ProductCount" value="1">
                <input type="hidden" name="bottom_horizontal_form_product_options" id="mvtForms2ProductOptions" value="">
            
                <p class="form_title">
                    
                    <span><b>Остались вопросы?</b> мы перезвоним</span>
                </p>
                
                <div class="the_form_fields_wrap">
                    <div class="the_form_item_wrap">
                        <div class="the_form_item the_form_item_half">
                            <input type="text" name="bottom_horizontal_form_name" placeholder="Ваше имя">
                        </div>
                    
                        <div class="the_form_item the_form_item_half">
                            <input type="text" name="bottom_horizontal_form_phone" class="dsmc_input_phone" placeholder="Телефона">
                        </div>
                    </div>
               
                    <div class="the_form_item the_form_item_textarea">
                        <textarea name="bottom_horizontal_form_question" placeholder="Задайте вопрос который вас интересует"></textarea>
                    </div>
               
                
                    <div class="the_form_item the_form_item_submit">
                        <button id="bottom_horizontal_form_submit" class="mvtForms2boc" type="button">Отправить</button>
                    </div>
                    
                    <div class="the_form_item the_form_item_accept">
                        <input type="checkbox" name="oneclick_accept" checked="checked" id="oneclick_accept" style="display:none;">
                
                        <label class="checkbox1_label" for="oneclick_accept">
                            <svg width="18px" height="18px" viewBox="0 0 18 18">
                                <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                                <polyline points="1 9 7 14 15 4"></polyline>
                            </svg>
                            <span>Я согласен с <a href="policy/" rel="nofollow">правилами</a> политики конфиденциальности</span>
                        </label>
                    </div>
                </div>
               
            </form>       
            </div>
                </div>
                
            
            </div>   
                
                
            <!--
            <div class="pop_cat_block ">
                <nav class="hidden_for_revealing fast-links-container inner_section">
                    {'!pdoMenu' | snippet : [
                    'tplOuter' => '@INLINE
                    <ul>{$wrapper}</ul>
                    '
                    'level' => 1
                    'where' => ['isfolder' => 1]
                    ]}
                    <a class="reveal_all visible_on_mobile_only" href="#"><span><b>Показать полностью</b></span></a>
                </nav>
            </div>
            -->

            {'!msPreWrapperCase' | snippet : [
            'snippet' => 'pdoResources',
            'parents' => 8,
            'resources' => 'tv_categories_landing_combo_preset_5' | tv | fromJSON | join,
            'tplWrapper' => 'dsmc.msProducts.wrapper.categories',
            'wrapIfEmpty' => 0,
            'tpl' => 'dsmc.msProducts.row.category',
            'limit' => 12,
            'includeTVs' => 'tv_image_section_popular_category',
            'tvPrefix' => ''
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