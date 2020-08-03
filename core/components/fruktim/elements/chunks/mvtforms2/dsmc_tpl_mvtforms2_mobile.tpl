<div class="the_form">

    <form id="{$formID}_form" class="mvtForm2" method="post">

        <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
        <input type="hidden" name="token" value="{$token}">
        <input type="hidden" name="form" value="{$formID}">

        <p class="thanks_title">
            Закажите звонок
        </p>

        <p>
            И вам перезвонит наш менеджер <br/>
            в течение 15 минут
        </p>

        <div class="the_form_item">
            <label>Ваше имя</label>
            <input type="text" name="{$formID}_name" placeholder="Александр">
        </div>

        <div class="the_form_item">
            <label>Ваш телефон</label>
            <input type="text" name="{$formID}_phone" class="dsmc_input_phone" placeholder="+7 (___) ___-__-__">
        </div>

        <div class="accept">
            <input type="checkbox" name="{$formID}_accept" checked="checked"  id="{$formID}_accept" style="display:none;">

            <label class="checkbox1_label" for="{$formID}_accept">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                    <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                    <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
                <span>С <a href="policy/" rel="nofollow">правилами обработки</a> персональных данных ознакомлен</span>
            </label>
        </div>

        <div class="the_form_item the_form_item_submit">
            <button id="{$formID}_form_submit" class="mvtForms2-tohide" type="submit">Отправить</button>
        </div>

        <div id="{$formID}_form_result"></div>

    </form>
</div>