<li class="list-item">
    <a href="{$uri}">
        {if $weight != 0}{$weight | grmscnvctr}{/if}
        <span>
            {$price} {$price | declension : 'рубль|рубля|рублей'}
        </span>
    </a>
</li>