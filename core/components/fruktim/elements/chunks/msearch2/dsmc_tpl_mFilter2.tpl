<div class="msearch2 row" id="mse2_mfilter">
    <div class="content_left_column to_right catalog_page_left_column">
        <div class="sorting_panel">
            <a href="#" class="filter_panel_toggling_button">Фильтр</a>

            <div class="sorting_panel_item">
                <p class="note">Сортировать по:</p>
            </div>

            <div class="sorting_panel_item">
                <select id="mse2_sort" style="display:none;">
                    <option class="sort" data-sort="resource|pagetitle" data-default="asc" value="asc">А-Я</option>
                    <option class="sort" data-sort="resource|pagetitle" data-default="desc" value="desc">Я-А</option>
                    <option class="sort" data-sort="ms|price" data-default="asc" value="desc">Сначала дорогие</option>
                    <option class="sort" data-sort="ms|price" data-default="desc" value="asc">Сначала дешевые</option>
                </select>
                <div class="sort_dropdown" id="sort_dropdown">
                    <span class="selectBox-label" style="width: 88px;">А-Я</span>
                    <span class="selectBox-arrow"><i class="fas fa-chevron-down" style="font-size:13px;"></i></span>
                    <ul id="dropdown_menu" class="selectBox-dropdown-menu selectBox-options selectBox-options-bottom" style="display: none; max-height: 125.575px; width: 196px; position: absolute; top:95%; left:-1px; z-index:15; margin-left:0!important; border-color: #e4e4e4;">
                        <li class="">
                            <a class="sort_picker" data-sort="resource|pagetitle" data-default="asc" data-parent="asc">А-Я</a>
                        </li>
                        <li class="">
                            <a class="sort_picker" data-sort="resource|pagetitle" data-default="desc" data-parent="desc">Я-А</a>
                        </li>
                        <li class="">
                            <a class="sort_picker" data-sort="ms|price" data-default="asc" data-parent="desc">Сначала дорогие</a>
                        </li>
                        <li class="">
                            <a class="sort_picker" data-sort="ms|price" data-default="desc" data-parent="asc">Сначала дешевые</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="catalog_wrap">
            <div class="catalog_block catalog_page_cat_block" id="mse2_results">
                {$results}
            </div>
        </div>

        <div class="pagination">
            <ul id="mse2_pagination">
                {'page.nav' | placeholder}
            </ul>
        </div>

        {$_modx->resource.content2}

        <br/>

        <div class="payment_and_delivery_block_mark2 clearfix">
            <div class="payment_and_delivery_wrap delivery_wrap">
                [[pdoField?&id=`5`&field=`deliv`]]
            </div>

            <div class="payment_and_delivery_wrap payment_wrap">
                [[pdoField?&id=`5`&field=`pay`]]
            </div>
        </div>

    </div>

    <div class="content_right_column to_left">
        <div class="filter_block">
            <div class="filter_block_inner">
                <p class="filter_head"><span>Фильтр</span></p>
                <a href="#" class="filter_close_toggler">Закрыть</a>
                <div class="filter_item">
                    {'!pdoMenu' | snippet : [
                    'parents' => 8,
                    'level' => 3,
                    'outerClass' => 'nav_left_bar',
                    'innerClass' => 'inner',
                    'levelClass' => 'level',
                    'firstClass' => '',
                    'lastClass' => '',
                    'parentClass' => 'submenu'
                    'where' => ['isfolder' => 1]
                    ]}
                    <form action="" method="post" id="mse2_filters">
                        {$filters}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>