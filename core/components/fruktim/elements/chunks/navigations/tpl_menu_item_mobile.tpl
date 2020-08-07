<li {$classes}><a href="{$link}" {$attributes}>{$menutitle}</a>
    {set $tv_res = 587 | resource: 'main_menu'}
    {set $tv_id = $id}
    {set $rows = json_decode($tv_res, true)}

    {foreach $rows as $row}
        {if $tv_id == $row.resourse}
            <div class="ul_sub_wrap" data-toggle="{$tv_url}">
                <ul class="header_menu_mobile_sub_categories_ul clearafter">
                    {set $section_menu = $row.level | fromJSON}
                    {foreach $section_menu as $section}
                    {set $categories_menu = $section.categories | fromJSON}
                    {foreach $categories_menu as $cat}
                        
                            {if $cat.link != ''}
                                    <li>
                                        <a href="{$cat.link | preg_replace:'/[^0-9]|/': '' | url}">{$cat.name}</a>
                                    </li>
                                {else}
                                {if $cat.name != ''}
                                    <p class="sub_wrap_title">{$cat.name}</p>
                                {/if}
                            {/if}
                            {set $item_menu = $cat.item | fromJSON}
                            {if $item_menu != ''}
                                {foreach  $item_menu as $item}
                                    <li><a href="{$item.url | preg_replace:'/[^0-9]|/': '' | url}">{$item.title}</a></li>
                                {/foreach}
                                <li><a href="#" class="more_toggle"><span>Показать еще</span></a></li>
                            {/if}
                         </li>
                    {/foreach}
                    {/foreach}
                </ul>
            </div><!--/header_menu_dropdown-->
        {/if}
    {/foreach}
</li>

</li>