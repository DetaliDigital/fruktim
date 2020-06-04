<div class="catalog_block_slider_item">
    <div class="catalog_block_item catalog_block_item_mark2 shk-item">
        <div class="img">
            <a href="{$id | url}"><img src="{$image | phpthumbon : 'w=300&h=300&bg=fff&fltr=wmi|/assets/templ/img/water-fruktim-300.png'}" alt=""/></a>

            <div class="flags">
                {if 'Хиты' in list $promo}<span class="flag hit"></span>{/if}
                {if 'Популярные' in list $promo}<span class="flag fav"></span>{/if}
                {if 'Акции' in list $promo}<span class="flag discount"></span>{/if}
            </div>
            <a class="msfavorites" data-click data-data-list="default" data-data-type="resource" data-data-key="{$id}">
            </a>
        </div>
        <form method="post" class="ms2_form">
            <input type="hidden" name="id" value="{$id}">
            <input type="hidden" name="options" value="[]">
            <div class="text">
                <div class="text_top">
                    <p class="title">
                        <a href="{$id | url}">
                            {$pagetitle}
                        </a>
                    </p>

                    <div class="text_specs">
                        {if $availability == 1}
                            <span class="in_stock many">В наличии</span
                        {else}
                            <span class="in_stock some">Нет наличии</span
                        {/if}
                        <p>
                            {if $weight != 0}{$weight | grmscnvctr}{/if} {if $made_in ?}{if $weight != 0},{/if} {$made_in} {/if}
                        </p>

                    </div>
                </div>

                <div class="text_bottom">
                    <p class="price">
                        {if $old_price != 0}
                            <span class="old_price">{$old_price} {'ms2_frontend_min_currency' | lexicon}</span>
                        {/if}
                        {if $price != 0}
                            <span class="actual_price">{$price} {'ms2_frontend_min_currency' | lexicon}</span>
                        {/if}
                    </p>

                    {if $availability == 1}
                        <div class="product_submit_wrap clearfix">
                            <button type="submit" onclick="ym(56381620, 'reachGoal', 'preview_to_cart'); return true;" class="to_cart_button" name="ms2_action" value="cart/add">В корзину</button>
                            <div class="qty_wrap">
                                <p>Кол-во:</p>

                                <div class="qty_div">
                                    <span class="minus"></span>
                                    <input type="text" name="count" value="1">
                                    <span class="plus"></span>
                                </div>
                            </div>
                        </div>
                    {/if}

                </div>
            </div>
        </form>
    </div>
</div>

