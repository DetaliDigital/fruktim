<div class="header-menu">
    <button class="header-menu-item bg-white">
        <svg viewBox="0 0 18 15">
            <rect width="17.4004" height="2.07656" rx="1.03828"/>
            <rect y="6.14197" width="17.4004" height="2.07656" rx="1.03828" fill="#FF9523"/>
            <rect y="12.2839" width="17.4004" height="2.07656" rx="1.03828" fill="#FF9523"/>
        </svg>
        <span>Каталог</span>
    </button>

    {'!pdoMenu' | snippet : [
    'parents' => 8,
    'resources' => '59,49,1213,1214',
    'limit' => 4,
    'includeTVs' => 'dsmc_icon_item_menu,tv_menu_color',
    'tvPrefix' => '',
    'tplOuter' => '@INLINE {$wrapper}',
    'tpl' => 'dsmc.pdomenu.ballon.row',
    ]}
</div>