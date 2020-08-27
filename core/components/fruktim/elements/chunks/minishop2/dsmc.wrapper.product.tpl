<div class="inner_section">
    <div class="section_title_wrap">
        <p class="section_title"><span></span>{'dsmc_wrapper_title' | placeholder} <a class="see_all" href="{'dsmc_wrapper_parent_link' | placeholder}">Смотреть все</a></p>
    </div>
    <div class="catalog_block {'dsmc_wrapper_carusel' | placeholder != 0 ?: ' swiper'}">

        {if 'dsmc_wrapper_carusel' | placeholder == 1}
            <!-- код для стрелочек карусели -->
        {/if}

        {$output}

    </div><!--/catalog_block-->
    <br>
    <br>
</div>