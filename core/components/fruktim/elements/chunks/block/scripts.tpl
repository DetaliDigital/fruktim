<div class="share-button on-up">
    <a href="{'whatsapp' | option}" class="item">
        <i class="fab fa-whatsapp" aria-hidden="true"></i>
    </a>
    <a href="{'viber' | option}" class="item">
        <i class="fab fa-viber" aria-hidden="true"></i>
    </a>
    <a href="{'telegram' | option}" class="item">
        <i class="fab fa-telegram-plane"></i>
    </a>
    <div class="item open_share">
        <i class="fab fa-whatsapp" aria-hidden="true"></i>
    </div>
</div>

<div class="back-to-top on-up top d-flex">
    <i class="fas fa-angle-up"></i>
</div>

<div class="share-block-absolute">
    <!-- filter -->
    <svg>
        <defs>
            <filter id="goo">
                <feGaussianBlur in="SourceGraphic" stdDeviation="8" result="shadow"/>
                <feOffset in="shadow" dx="0" dy="0" result="shadow"/>
                <feColorMatrix in="shadow" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7"
                               result="shadow2"/>
                <feBlend in="SourceGraphic" in2="shadow2"/>
            </filter>
        </defs>
    </svg>

    <!-- back-to-top -->

{$_modx->regClientScript("assets/templ/js/ms2.js")}
{if 'id' | resource != 584 ?}
{$_modx->regClientScript("assets/components/msminicartdynamic/js/web/msminicartdynamic.js")}
{/if}
{$_modx->config.metrika}

<script>
    // ------------------------------------------------------- //
    //   Inject SVG Sprite -
    //   see more here
    //   https://css-tricks.com/ajaxing-svg-sprite/
    // ------------------------------------------------------ //
    function injectSvgSprite(path) {
        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }
    // this is set to Bootstrapious website as you cannot
    // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
    // while using file:// protocol
    // pls don't forget to change to your domain :)
    injectSvgSprite('assets/components/fruktim/icons/svg-sprite.svg');
</script>

{$_modx->regClientScript("assets/components/mvtforms2/js/web/mvtforms2.dsmc.js")}