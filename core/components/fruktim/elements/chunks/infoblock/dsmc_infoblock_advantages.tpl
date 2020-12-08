<div class="benefits_wrap">
    <h2>Преимущества работы с нами:</h2>
    <div class="benefits_block">
        {foreach $items as $item}
        <div class="benefits_item">
            <div class="icon icon1">
                <svg class="svg-icon svg-icon-md">
                    <use xlink:href="#{$item.icon}"></use>
                </svg>
            </div>

            {if $item.name ?}
            <div class="text">
                <p>
                   {$item.content}
                </p>
            </div>
            {/if}
        </div>
        {/foreach}
    </div><!--/advantages_block-->
</div>