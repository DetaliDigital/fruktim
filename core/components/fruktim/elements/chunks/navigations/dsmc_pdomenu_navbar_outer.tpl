<ul{$classes}>
    <li>
        <button class="btn-close-menu">
            <svg viewBox="0 0 14 14" fill="none">
                <path d="M12 12L7 7L12 2" stroke="#AFBFD6" stroke-width="3"></path>
                <path d="M2 2L7 7L2 12" stroke="#AFBFD6" stroke-width="3"></path>
            </svg> Каталог
        </button>
    </li>
    <li>
        <ul class="header-menu aside">
            {'!pdoMenu' | snippet : [
            'parents' => 8,
            'resources' => '59,49,1213,1214',
            'limit' => 4,
            'includeTVs' => 'dsmc_icon_item_menu,tv_menu_color',
            'tvPrefix' => '',
            'outerClass' => 'header-menu aside',
            'tpl' => 'dsmc.pdomenu.ballon.row.li',
            ]}
        </ul>
    </li>
    {$wrapper}
    <li>
        <ul class="aside-contacts">
            <li><a href="{'4' | url}">О нас</a></li>
            <li><a href="{'5' | url}">Доставка и оплата</a></li>
            <li><a href="{'7' | url}">Контакты</a></li>
        </ul>
    </li>
</ul>