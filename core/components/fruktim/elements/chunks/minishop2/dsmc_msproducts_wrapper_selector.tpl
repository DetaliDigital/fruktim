<div class="packing_wrap">
    <p>Другие фасовки</p>
    <div class="packing_div">
        <div class="sort_dropdown" id="sort_dropdown">

            {'!msProducts' | snippet : [
            'parents' => 'parent' | resource,
            'link' => 4,
            'limit' => 1,
            'sortby' => 'Data.weight'
            'master' => 'id' | resource,
            'tpl' => 'dsmc.msProducts.packing.label',
            'wrapIfEmpty' => 0
            ]}

            <span class="selectBox-arrow"><i class="fas fa-chevron-down" style="font-size:13px;"></i></span>
            <ul id="dropdown_menu" class="selectBox-dropdown-menu selectBox-options selectBox-options-bottom"
                style="display: none; max-height: 125.575px; position: absolute; top:95%; left:-1px; z-index:15; margin-left:0!important; border-color: #e4e4e4;">

                {$output}

            </ul>
        </div>
    </div>
</div>