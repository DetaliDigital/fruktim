<div id="msCart">
    {if !count($products)}
    <div class="alert alert-warning">
        {'ms2_cart_is_empty' | lexicon}
    </div>
    {else}
    <div class="the_cart_list shop-cart" data-shopcart="2">
        <div class="the_cart_list_head clearfix">
            <p></p>
            <p>{'ms2_cart_title' | lexicon}</p>
            <p>{'ms2_cart_count' | lexicon}</p>
            <p>{'ms2_cart_price' | lexicon}</p>
            <p>{'ms2_cart_cost' | lexicon}</p>
        </div>
        <div class="full">
            <div class="the_cart_list_content">
                {foreach $products as $product}
                <div class="the_cart_list_item cart-order clearfix" id="{$product.key}">
                    <div class="img"><img src="{$product.image}" alt="" /></div>
                    <div class="cart_list_title">
                        <p class="title">
                            <a href="{$product.id | url}">
                                {$product.pagetitle}
                            </a>
                        </p>
                        <p>
                            {$product.made_in} <br />

                            {if $product.weight | grmscnvctr != 0}
                            {$product.weight | grmscnvctr}
                            {/if}
                        </p>
                    </div>
                    <form method="post" class="ms2_form qty_wrap" role="form">
                        <input type="hidden" name="key" value="{$product.key}" />
                        <div class="qty_div">
                            <span class="input_count_action minus"></span>
                            <input type="number" name="count" value="{$product.count}" class="form-control" />
                            <span class="input_count_action plus"></span>
                            <button class="btn btn-sm" type="submit" name="ms2_action" value="cart/change">&#8635;</button>
                        </div>
                    </form>
                    <div class="cart_price_wrap">
                        <p><b>{$product.price}</b> {'ms2_frontend_currency' | lexicon}/{'ms2_frontend_count_unit' | lexicon}</p>
                    </div>
                    <div class="cart_sum_wrap">
                        <p><i>Сумма: </i><b class="ms2_cost">{$product.cost}</b> {'ms2_frontend_currency' | lexicon}</p>
                    </div>
                    <form method="post" class="ms2_form text-md-right">
                        <input type="hidden" name="key" value="{$product.key}">
                        <button class="cart_item_delete" type="submit" name="ms2_action" value="cart/remove">Удалить</button>
                    </form>
                </div>
                {/foreach}
            </div>
            <div class="the_cart_list_total">
                <div class="total_sum">
                    <p>Итого: <span><b class="ms2_total_cost">{$total.cost}</b> {'ms2_frontend_currency' | lexicon}</span></p>

                    <a href="#" class="cart_refresh"></a>
                </div>

                <div class="the_form_item the_form_item_accept">
                    <label><input type="checkbox" id="isFirstClient" name="first_order">
                        <span>Это мой первый заказ</a></span>
                    </label>
                </div>
            </div>
        </div>
    </div>
    {/if}
</div>