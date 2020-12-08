<div class="opto_page_contacts">
    <div class="opto_page_contacts_item">
        <p class="title">{$title}</p>
    </div>

    <div class="opto_page_contacts_item opto_page_contacts_item_social">
{foreach $items as $item}
        <a href="{$item.intro}" target="_blank">
            <svg class="svg-icon svg-icon-md">
                <use xlink:href="#{$item.icon}"></use>
            </svg>
        </a>
{/foreach}
    </div>
</div>