{'!pdoMenu' | snippet : [
'parents' => 8,
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
]}

<hr>

{'!pdoMenu' | snippet : [
'parents' => '8,-59,-49,-1213,-1214',
'firstClass' => 'first',
'lastClass' => '',
'includeTVs' => 'dsmc_icon_item_menu',
'outerClass' => 'aside-menu',
'innerClass' => 'aside-sub-menu',
'parentClass' => 'toggle-left',
'rowClass' => 'katalog',
'where' => [
'class_key:!=' => 'msProduct'
],
'showLog' => 1
]}

<hr>

[[!pdoMenu?
&parents=`8,-59,-49,-1213,-1214`
&templates=`-4`
&level=`3`
]]