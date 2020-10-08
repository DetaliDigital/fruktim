{foreach $positions as $position}
    {$position.title}
    <div class="wr-info-block">
        <div class="container p-0 info-block-container">
            <div class="row">
                {foreach $position.items as $item}
                    <div class="col-12 col-md-6 info-block">
                        <div class="info-title">
                            {$item.name}
                        </div>
                        <div class="info-text">
                            {$item.content}
                        </div>
                        <div class="info-footer">
                            <a href="{$item.url | url}" class="btn btn-danger">{$item.description}</a>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
{/foreach}
