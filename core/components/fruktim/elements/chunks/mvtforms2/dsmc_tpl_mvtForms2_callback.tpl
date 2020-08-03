<div class="the_form">
    <form id="{$formID}_form" class="mvtForm2" method="post">
        <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
        <input type="hidden" name="token" value="{$token}">
        <input type="hidden" name="form" value="{$formID}">


        <div class="the_form_div the_form_div_half">
            <input type="text" name="{$formID}_name" name="name" placeholder="Ваше имя">
        </div>
        <div class="the_form_div the_form_div_half">
            <input type="text" name="{$formID}_phone" class="dsmc_input_phone" placeholder="Ваш телефон">
        </div>

        <div class="the_form_div the_form_div_half">
            <input type="text" name="{$formID}_time" placeholder="Удобное время">
        </div>

        <div class="the_form_div the_form_div_textarea">
            <textarea  name="{$formID}_comment" placeholder="Ваш коментарий"></textarea>
        </div>

        <div class="the_form_item the_form_item_accept">
            <input type="checkbox" name="{$formID}_accept" checked="checked"  id="{$formID}_accept" style="display:none;">

            <label class="checkbox1_label" for="{$formID}_accept">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                    <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                    <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
                <span>С <a href="policy/" rel="nofollow">правилами обработки</a> персональных данных ознакомлен</span>
            </label>
        </div>

        <div class="the_form_div the_form_div_submit">
            <button style="width: 100%;" id="{$formID}_form_submit" class="mvtForms2-tohide" type="submit">Отправить</button>
        </div>

    </form>
</div>