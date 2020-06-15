<form method="post" class="mvtForm2" id="{$formID}_form">
    <input type="hidden" name="form" value="{$formID}">
    <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
    <input type="hidden" name="token" value="{$token}">
    <input type="hidden" name="{$formID}_product" id="mvtForms2ProductId" value="">
    <input type="hidden" name="{$formID}_product_count" id="mvtForms2ProductCount" value="1">
    <input type="hidden" name="{$formID}_product_options" id="mvtForms2ProductOptions" value="">

    <p class="form_title">
        <img src="assets/templ/img/cart_icon_big.png" alt="" />
        <span><b>Оставить</b> запрос</span>
    </p>

    <div class="the_form_item">
        <input type="text" name="{$formID}_name" placeholder="Ваше имя">
    </div>

    <div class="the_form_item">
        <input type="text" name="{$formID}_phone" class="mvtFormPhone" placeholder="Номер телефона">
    </div>

    <div class="the_form_item">
        <input type="text" name="{$formID}_email" placeholder="Почта">
    </div>

    <div class="the_form_item the_form_item_accept">
        <input type="checkbox" name="{$formID}_accept" checked="checked" id="{$formID}_accept" style="display:none;">

        <label class="checkbox1_label" for="{$formID}_accept">
            <svg width="18px" height="18px" viewBox="0 0 18 18">
                <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                <polyline points="1 9 7 14 15 4"></polyline>
            </svg>
            <span>С <a href="policy/" rel="nofollow">правилами обработки</a> персональных данных ознакомлен</span>
        </label>
    </div>

    <div class="the_form_item the_form_item_submit">
        <button id="{$formID}_form_submit" class="mvtForms2boc" type="button">Отправить</button>
    </div>

    <div class="circle-loader"></div>

</form>