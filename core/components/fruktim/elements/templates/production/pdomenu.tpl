<pre>
{'!pdoMenu' | snippet : [
'parents' => 8,
'firstClass' => 'first',
'lastClass' => '',
'includeTVs' => 'dsmc_icon_item_menu',
'outerClass' => 'aside-menu',
'innerClass' => 'aside-sub-menu',
'parentClass' => 'toggle-left'
'rowClass' => 'katalog',
'tpl' => '',
'first' => 1,
'tplParentRow' => ''
'where' => [
'class_key:!=' => 'msProduct',
],
]}
</pre>
<hr>

{'!pdoMenu' | snippet : [
'parents' => '8,-49,-59,-62,-907',
'resources' => '-1213,-1214,-59,-49',
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