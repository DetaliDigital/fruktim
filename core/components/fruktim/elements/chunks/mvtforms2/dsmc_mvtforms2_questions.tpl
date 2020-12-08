<div class="bottom_horizontal_form_wrap">
    <div class="the_form one_click_form_block bottom_horizontal_form">

        <form method="post" class="mvtForm2" id="{$formID}_form">
            <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
            <input type="hidden" name="token" value="{$token}">
            <input type="hidden" name="form" value="{$formID}">

            <p class="form_title">
                <span><b>{$formName}</b> {$formDescription}</span>
            </p>

            <div class="the_form_fields_wrap">
                <div class="the_form_item_wrap">
                    <div class="the_form_item the_form_item_half">
                        <input type="text"  name="{$formID}_name" placeholder="Ваше имя">
                    </div>

                    <div class="the_form_item the_form_item_half">
                        <input type="text"  name="{$formID}_phone" class="dsmc_input_phone" placeholder="Телефона">
                    </div>
                </div>

                <div class="the_form_item the_form_item_textarea">
                    <textarea name="{$formID}_question" placeholder="Задайте вопрос который вас интересует"></textarea>
                </div>


                <div class="the_form_item the_form_item_submit">
                    <button id="{$formID}_form_submit" class="mvtForms2boc" type="button">Отправить</button>
                </div>

                <div class="the_form_item the_form_item_accept">
                    <input type="checkbox" name="{$formID}_accept" checked="checked" id="{$formID}_accept" style="display:none;">

                    <label class="checkbox1_label" for="{$formID}_accept">
                        <svg width="18px" height="18px" viewBox="0 0 18 18">
                            <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                            <polyline points="1 9 7 14 15 4"></polyline>
                        </svg>
                        <span>Я согласен с <a href="{'15' | url}" rel="nofollow">правилами</a> политики конфиденциальности</span>
                    </label>
                </div>
            </div>

        </form>
    </div>
</div>