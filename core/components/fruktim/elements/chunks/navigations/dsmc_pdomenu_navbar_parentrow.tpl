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
