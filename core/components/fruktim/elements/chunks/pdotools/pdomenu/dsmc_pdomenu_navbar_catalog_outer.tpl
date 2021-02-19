<div class="content_right_column content_navbar to_left">
    <div class="filter_block">
        <div class="filter_block_inner">
            {if 'parent' | resource != 8}
                <a href="{'parent' | resource | url}" class="navbar-title">
                <span class="toggler">
                <svg class="svg-icon">
                    <use xlink:href="#icon-arrow-left"></use>
                </svg>
                    </span>
                    <p class="filter_head">
                        <span>{('parent' | resource) | resource : 'pagetitle'}</span>
                    </p>
                </a>
            {/if}
            <div class="filter_item">
                <ul {$classes}>{$wrapper}</ul>
            </div>
        </div>
    </div>
</div>