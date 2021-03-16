<form id="{$formID}_form" class="mvtForm2 feedBackWrapper" method="post">
    <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
    <input type="hidden" name="token" value="{$token}">
    <input type="hidden" name="form" value="{$formID}">
    <div class="the_form the_form_cart_order">
        <div class="the_form_cart_order_block">
            <div class="the_form_item the_form_item_third input-parent">
                <label>
                    Ваше имя<span class="required-star">*</span>
                </label>
                <input type="text" name="{$formID}_name" class="text_input" placeholder="Александр">
            </div>
            <div class="the_form_item the_form_item_third input-parent">
                <label>
                    Телефон<span class="required-star">*</span>
                </label>
                <input type="text" name="{$formID}_name" class="text_input dsmc_input_phone" placeholder="">
            </div>

            <div class="the_form_item the_form_item_accept">
                <input type="checkbox" name="accept" checked="checked" id="{$formID}_accept" style="display:none;">

                <label class="checkbox1_label" for="{$formID}_accept">
                    <svg width="18px" height="18px" viewBox="0 0 18 18">
                        <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                        <polyline points="1 9 7 14 15 4"></polyline>
                    </svg>
                    <!--noindex--><span>С <a href="policy/">правилами обработки</a> персональных данных ознакомлен</span><!--/noindex-->
                </label>

            </div>
            <div class="the_form_div the_form_div_submit">
                <button id="{$formID}_form_submit" class="submit_button" type="submit">Отправить</button>
            </div>
        </div><!--/the_form_cart_order_block-->
    </div>
</form>