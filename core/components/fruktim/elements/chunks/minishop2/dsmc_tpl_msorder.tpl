<div class="cart_form_section">
    <div class="inner_section clearfix">

        <div class="the_form the_cart_form">

            <div class="the_tabs the_cart_form_tabs">
                <div class="the_tabs_head">
                    <button class="active" href="#tab1">Стандартное оформление</button>
                    <button href="#tab2">Быстрое оформление</button>
                </div>

                <div class="the_tabs_content">
                    <div class="the_tabs_item active" data-tab="tab1" id="tab1">
                        <form class="ms2_form" id="msOrder" method="post">
                            <div class="the_cart_form_row">
                                <p class="form_head"><span>Личные данные</span></p>

                                <div class="the_cart_form_row_content">

                                    {foreach ['receiver','phone','email'] as $field}
                                        <div class="the_form_div the_form_div_third">
                                            <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                                                   name="{$field}" value="{$form[$field]}"
                                                   class="{($field in list $errors) ? ' error' : ''}{$field == 'phone' ? 'dsmc_input_phone' : ''}">
                                        </div>
                                    {/foreach}


                                    <div class="the_form_div the_form_div_textarea">
                                       <textarea name="comment" id="comment" placeholder="{'ms2_frontend_comment' | lexicon}"
                                                 class="form-control{('comment' in list $errors) ? ' error' : ''}">{$form.comment}</textarea>
                                    </div>
                                </div>
                            </div><!--/the_cart_form_row-->
                            <div class="the_cart_form_row">
                                <p class="form_head"><span>Доставка</span></p>

                                <div class="the_cart_form_row_content">

                                    <div id="deliveries" class="delivery_cart_form_block">
                                        <p class="title">Варианты доставки</p>

                                        {foreach $deliveries as $delivery index=$index}
                                            {var $checked = !($order.delivery in keys $deliveries) && $index == 0 || $delivery.id == $order.delivery}
                                            <div class="delivery_cart_form_item">
                                                <label>
                                                    <input type="radio" name="delivery" value="{$delivery.id}" id="delivery_{$delivery.id}"
                                                           data-payments="{$delivery.payments | json_encode}"
                                                            {$checked ? 'checked' : ''}>
                                                    <span><b>{$delivery.name}</b>
                                                        {if $delivery.description?}
                                                           <i>
                                                                {$delivery.description}
                                                           </i>
                                                        {/if}</span>
                                                </label>
                                            </div>
                                        {/foreach}
                                        <div id="address_deliveries">
                                            <p class="title mt--35">Адрес доставки</p>
                                            <div class="the_form_div the_form_div_checkbox_horizontal">
                                                <label><input type="radio" name="region" value="Санкт-Петербург" checked="checked"><span>Санкт-Петербург</span></label>
                                                <label><input type="radio" name="region" value="Москва"><span>Москва</span></label>
                                                <label><input type="radio" name="region" data-val="other_city" value="Другой регион"><span>Другой город</span></label>
                                                <input type="text" name="city" placeholder="Раменское">
                                                <input type="text" name="index" placeholder="Индекс">
                                            </div>
                                            <div class="b_inp_frm">
                                                <input type="text" class="inp_frm{if $order.delivery == 1} d-none{/if}" name="fulladds" placeholder="Улица, дом, квартира">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="the_cart_form_row" id="payments">
                                <p class="form_head"><span>Варианты оплаты</span></p>

                                <div class="the_cart_form_row_content">
                                    <div class="delivery_cart_form_block">
                                        {foreach $payments as $payment index=$index}
                                            <div class="delivery_cart_form_item">
                                                {var $checked = !($order.payment in keys $payments) && $index == 0 || $payment.id == $order.payment}
                                                <label>
                                                    <input type="radio" name="payment" value="{$payment.id}" id="payment_{$payment.id}"{$checked ? 'checked' : ''}>
                                                        <span><b>{$payment.name}</b>
                                                            {if $payment.description?}
                                                                <i>{$payment.description}<i>
                                                            {/if}
                                                        </span>
                                                </label>
                                            </div>
                                        {/foreach}
                                    </div>
                                </div>
                            </div>

                            <div class="the_cart_form_row smaller_padding">
                                <div class="the_cart_form_row_content">
                                    <div class="the_cart_form_block_submit clearfix">
                                        <div class="the_form_div the_form_div_submit clearfix">
                                            <label>
                                                <input type="checkbox" name="accept" checked="checked">
                                                <span>
																	Я согласен с <a href="policy/" rel="nofollow">правилами</a>
																	политики конфиденциальности
																</span></label>
                                            <button type="submit" name="ms2_action" value="order/submit" class="btn btn-lg btn-primary ml-md-2 ms2_link button to_cart_button">
                                                {'ms2_frontend_order_submit' | lexicon}
                                            </button>
                                        </div>
                                    </div><!--/the_cart_form_block_submit-->
                                </div>
                            </div><!--/the_cart_form_row-->
                        </form>
                    </div><!--/the_tabs_item-->

                    <div class="the_tabs_item" data-tab="tab2" id="tab2">
                        {'!mvtForms2' | snippet : ['form'=>'fast_order']}
                    </div>

                </div>
            </div>

        </div>

    </div>
</div>


