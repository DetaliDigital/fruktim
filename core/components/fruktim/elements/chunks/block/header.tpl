{'!addLooked' | snippet : [
'templates' => 4,
'limit' => 10
]}

<div class="mobile_menu_toggler"></div>

<header class="new_header">
    <div class="header_top">
        <div class="inner_section clearfix">

            {'!pdoMenu' | snippet : [
            'parents'=> 0
            'level' => 0
            'tplOuter' => '@INLINE <nav class="header_top_menu"><ul>{$wrapper}</ul></nav>'
            ]
            }

            <div class="header_top_right clearfix">

                <p class="phone"><a href="tel:[[++office.phone:clearPhone]]">[[++office.phone]]</a></p>

                <a href="#callback_popup" class="callback_button"><span>Заказать звонок</span></a>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="inner_header inner_section clearfix">
        <div class="inner_header_content clearfix">
            <div class="logo">
                <a href="/">
                    <img src="assets/templ/img/logo-ver3.svg" alt="Фруктим" />

                </a>
            </div>

            <div class="inner-header-nav">
                <div class="header_search_wrap">
                    <div class="header_search clearfix">

                        {'!mSearchForm' | snippet : [
                        'parents' => 8,
                        'element' => 'msProducts'
                        'tpl' => 'dsmc.tpl.mSearch2.ac'
                        'tplForm' => 'dsmc.tpl.mSearch2.form'
                        ]}

                        <!-- &tplWrapper=`tpl.mSearch2.outer` -->
                    </div>

                    <a href="#" class="header_search_mobile_toggler"></a>
                </div>


                <div class="header_icons_wrap">

                    <div class="header_favourites"><a href="[[~29]]"><span>[[!getFavorites]]</span></a></div>


                    {'!msMiniCart' | snippet : [
                    'tpl' => 'dsmc.tpl.msMiniCart'
                    ]}
                </div>
            </div>
        </div>
    </div>

    <div class="header_menu_wrap">
        <div class="inner_section">
            <div class="header_menu_block">
                <div class="header_menu_wrap clearfix">
                    <nav class="header_menu clearfix">

                        {include 'tpl.menu.item.new'}

                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="header_placeholder"></div>

{'!msFavorites.initialize' | snippet}