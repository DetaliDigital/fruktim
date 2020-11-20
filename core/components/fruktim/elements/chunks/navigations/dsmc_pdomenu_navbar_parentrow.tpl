{if $idx == 1}
<li class="go_category_item">
    <a href="{$parent | url}" class="go_category_item">Смотреть все</a>
</li>
{/if}
<li{$classes}>
    <a href="{$link}" data-toggle="katalog" {$attributes}>
        {if $dsmc_icon_item_menu ?}
        <svg class="svg-icon-dsmc">
            <use xlink:href="#icon-{$dsmc_icon_item_menu}"></use>
        </svg>
        {/if}
        <span>{$menutitle}</span>
    </a>
    {$wrapper}
</li>
{*
{if $last ?}
<li class="go_category_item">
    <a href="{$parent | url}" class="go_category_item">Смотреть все</a>
</li>
{/if}
*}