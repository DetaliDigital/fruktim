{set $parent = '8,' ~ ('-49' | dsmc_parent_child) ~ ',' ~ ('-59' | dsmc_parent_child) ~ ',' ~ ('-1213' | dsmc_parent_child) ~ ',' ~ ('-1214' | dsmc_parent_child)}

{'!pdoMenu' | snippet : [
'parents' => $parent,
'firstClass' => '',
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