<li{$classes}>
    <a href="{$link}" {$attributes}>
        {if $dsmc_icon_item_menu ?}
            <svg class="svg-icon-dsmc">
                <use xlink:href="#icon-{$dsmc_icon_item_menu}"></use>
            </svg>
        {/if}
        <span>{$menutitle}</span>
    </a>
    {if $level > 1 && $last ?}
    <li class="go_category_item">
        <a href="{$parent | url}" class="go_category_item">Смотреть все</a>
    </li>
    {/if}
</li>
