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
                    <li>
                        <div class="sub_wrap_subdivision">
                            <div class="sub_wrap_subdivision_item">
                                {if $cat.link != ''}
                                        <a href="{$cat.link | preg_replace:'/[^0-9]|/': '' | url}" class="sub_wrap_title">{$cat.name}</a>
                                    {else}
                                    {if $cat.name != ''}
                                        <p class="sub_wrap_title">{$cat.name}</p>
                                    {/if}
                                {/if}
                                {set $item_menu = $cat.item | fromJSON}
                                {if $item_menu != ''}
                                    <ul>
                                        {foreach  $item_menu as $item}
                                            <li><a href="{$item.url | preg_replace:'/[^0-9]|/': '' | url}">{$item.title}</a></li>
                                        {/foreach}
                                    </ul>
                                    <a href="#" class="more_toggle"><span>Показать еще</span></a>
                                {/if}

                                {/foreach}
                                {/foreach}
                </ul>
            </div><!--/header_menu_dropdown-->
        {/if}
    {/foreach}
</li>

</li>