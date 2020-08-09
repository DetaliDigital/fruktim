{'!pdoMenu' | snippet : [
'parents' => '8',
'firstClass' => 'first',
'lastClass' => '',
'includeTVs' => 'dsmc_icon_item_menu',
'outerClass' => 'aside-menu',
'innerClass' => 'aside-sub-menu',
'parentClass' => 'toggle-left'
'rowClass' => 'katalog',
'where' => [
'class_key:!=' => 'msProduct',
],
'tpl' => 'dsmc.pdoMenu.navbar.row',
'tplParentRow' => 'dsmc.pdoMenu.navbar.parentRow',
'tplOuter' => 'dsmc.pdoMenu.navbar.outer',
'tplInner' => 'dsmc.pdoMenu.navbar.inner',
]}