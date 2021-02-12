<div class="inner_section" {if 'dsmc_wrapper_style' | placeholder ?}style="{'dsmc_wrapper_style' | placeholder}"{/if}>
    <div class="section_title_wrap">
        <p class="section_title">{'dsmc_wrapper_title' | placeholder} <a class="see_all" href="{'dsmc_wrapper_parent_link' | placeholder}">Смотреть все</a></p>
    </div>
    <div class="catalog_block {'dsmc_wrapper_carusel' | placeholder != 0 ?: ' swiper'}">

        {if 'dsmc_wrapper_carusel' | placeholder == 1}
            <!-- код для стрелочек карусели -->
        {/if}

        {$output}

    </div><!--/catalog_block-->
</div>