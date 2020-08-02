<footer itemscope itemtype="http://schema.org/Organization">

    <div class="footer_wrap">
        <div class="inner_section clearfix">
            <div class="footer_menu clearfix">
                <div class="footer_menu_column">
                    <ul>
                        <li>
                            <a href="[[~59]]">Съедобные букеты</a>

                            {'!getCache' | snippet : [
                            'element' => 'pdoMenu'
                            'cacheKey' => 'getMenu'
                            'parents' => '59',
                            'level' => 1
                            'cache' => 1,
                            'outerClass' => 'nav_footer',
                            'innerClass' => 'inner',
                            'levelClass' => 'level',
                            'firstClass' => '',
                            'lastClass' => '',
                            'limit' => '7',
                            'parentClass' => 'column'
                            ]}
                        </li>

                        <li>
                            <a href="[[~65]]">Фруктовые наборы</a>

                            {'!getCache' | snippet : [
                            'element' => 'pdoMenu'
                            'cacheKey' => 'getMenu'
                            'parents' => '65',
                            'level' => 1,
                            'cache' => 1,
                            'outerClass' => 'nav_footer',
                            'innerClass' => 'inner',
                            'levelClass' => 'level',
                            'firstClass' => '',
                            'lastClass' => '',
                            'limit' => '3',
                            'parentClass' => 'column'
                            ]}
                        </li>

                        <li>
                            <a href="[[~588]]">Фрукты</a>

                            {'!getCache' | snippet : [
                            'element' => 'pdoMenu'
                            'cacheKey' => 'getMenu'
                            'parents' => '588',
                            'level' => 1,
                            'cache' => 1,
                            'outerClass' => 'nav_footer',
                            'innerClass' => 'inner',
                            'levelClass' => 'level',
                            'firstClass' => '',
                            'lastClass' => '',
                            'limit' => '2',
                            'parentClass' => 'column'
                            ]}
                        </li>

                        <li>
                            <a href="[[~57]]">Овощи</a>


                        </li>
                    </ul>
                </div>

                <div class="footer_menu_column">
                    <ul>
                        <li>
                            <a href="[[~9]]">Орехи</a>

                            {'!getCache' | snippet : [
                            'element' => 'pdoMenu'
                            'cacheKey' => 'getMenu'
                            'parents' => '9',
                            'level' => 1,
                            'cache' => 1,
                            'outerClass' => 'nav_footer',
                            'innerClass' => 'inner',
                            'levelClass' => 'level',
                            'firstClass' => '',
                            'lastClass' => '',
                            'parentClass' => 'column'
                            ]}
                        </li>

                        <li>
                            <a href="[[~56]]">Ягоды</a>

                        </li>

                        <li>
                            <a href="[[~590]]">Грибы</a>

                        </li>

                        <li>
                            <a href="[[~387]]">Варенье</a>


                        </li>
                    </ul>
                </div>

                <div class="footer_menu_column">
                    <ul>
                        <li>
                            <a href="[[~12]]">Сухофрукты</a>

                            {'!getCache' | snippet : [
                            'element' => 'pdoMenu'
                            'cacheKey' => 'getMenu'
                            'parents' => '12',
                            'level' => 1,
                            'cache' => 1,
                            'outerClass' => 'nav_footer',
                            'innerClass' => 'inner',
                            'levelClass' => 'level',
                            'firstClass' => '',
                            'lastClass' => '',
                            'limit' => '12',
                            'parentClass' => 'column'
                            ]}
                        </li>

                        <li>
                            <a href="[[~64]]">Специи</a>

                        </li>

                        <li>
                            <a href="[[~13]]">Чай</a>

                        </li>

                        <li>
                            <a href="[[~172]]">Мед</a>


                        </li>

                        <li>
                            <a href="[[~11]]">Сладости</a>


                        </li>
                    </ul>
                </div>

                <div class="footer_menu_column">
                    <ul>
                        <li>
                            <a href="[[~615]]">Цукаты</a>

                            {'!getCache' | snippet : [
                            'element' => 'pdoMenu'
                            'cacheKey' => 'getMenu'
                            'parents' => 615,
                            'level' => 1,
                            'cache' => 1,
                            'outerClass' => 'nav_footer',
                            'innerClass' => 'inner',
                            'levelClass' => 'level',
                            'firstClass' => '',
                            'lastClass' => '',
                            'parentClass' => 'column'
                            'where' => ['isfolder' => 1]
                            ]}
                        </li>



                        <li>
                            <span>Меню</span>

                            {'!getCache' | snippet : [
                            'element' => 'pdoMenu'
                            'cacheKey' => 'getMenu'
                            'parents' => 0,
                            'level' => 1,
                            'cache' => 1,
                            'resources' => '4,5,7',
                            'outerClass' => 'nav_footer',
                            'innerClass' => 'inner',
                            'levelClass' => 'level',
                            'firstClass' => '',
                            'lastClass' => '',
                            'parentClass' => 'column'

                            ]}
                        </li>
                    </ul>
                </div>
            </div><!--/footer_menu-->
        </div>
    </div>

    <div class="inner_section inner_footer clearfix">

        <div class="footer_column footer_column_contacts clearfix">
            <div class="footer_logo">
                <a href="/" rel="nofollow"><img src="assets/templ/img/logo.png" alt="" /></a>
            </div>
            [[pdoField?&id=`7`&field=`footer`]]
        </div>

    </div>
</footer>

<a href="#top" class="to_top"><img src="assets/templ/img/to_top.png" alt="Наверх" /></a>

<div class="popup thanks_popup" id="thanks_popup">
    <div class="the_form">
        <p class="form_title">Спасибо. Мы свяжемся с Вами в ближайшее время.</p>
    </div>
</div>


<div class="popup order_call_popup" id="order_call_popup">
    <div class="inner_section">
        <div class="the_form">
            {'!mvtForms2' | snippet : ['form'=>'modal']}
        </div>
    </div>
</div>



<div class="mobile_menu roll_over_menu">

    <div class="ul_sub_wrap" data-toggle="call_form">
        <ul class="header_menu_mobile_sub_categories_ul clearafter">
            <li class="form_li">

                {'!mvtForms2' | snippet : ['form'=>'mobile']}

                <div class="ul_sub_wrap" data-toggle="thanks">
                    <ul class="header_menu_mobile_sub_categories_ul clearafter">
                        <li class="form_li">
                            <div class="the_form">
                                <p class="thanks_title">
                                    Спасибо!
                                </p>

                                <p>
                                    Ваша заявка принята <br>
                                    наш менеджер перезвонит <br>
                                    вам через 30 минут
                                </p>

                                <!--<a href="#" class="close_all">Вернуться на главную</a>-->
                            </div>
                        </li>
                    </ul>
                </div><!--/ul_sub_wrap-->

            </li>
        </ul>
    </div>

    {include 'menu_mob'}

</div>
