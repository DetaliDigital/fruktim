{foreach $items as $item}
    <div class="text_benefits_item">
        <p>
            {if $item.name ?}
            <span class="red">{$item.name}</span>
            {/if}
            {$item.content}
        </p>
    </div>
{/foreach}