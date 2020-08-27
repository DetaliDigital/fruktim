{foreach $positions as $position}
    {$position.title}
    <div class="inner_section"
    <div class="">
        <div class="row">
            {foreach $position.items as $item}
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title">
                                {$item.name}
                            </div>
                            <div class="card-text">
                                {$item.content}
                            </div>
                            <div class="card-footer">
                                <a href="{$item.url | url}" class="btn btn-danger">{$item.description}</a>
                            </div>
                        </div>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
    </div>
{/foreach}
