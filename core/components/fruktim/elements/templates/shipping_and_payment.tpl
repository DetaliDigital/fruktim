<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'head'}
</head>
<body>

{include 'callback'}

<div class="page_container inner_page_container bg_f4f4f4" id="top">
    {include 'header_new'}
    <section class="main main_on_inner_pages">
        <div class="breadcrumbs_block">
            <div class="inner_section">
                {'pdoCrumbs' | snippet : [
                'tplWrapper' => '@INLINE <ul class="breadcrumbs">{$output}</ul>'
                ]}
            </div>
        </div>

        <section class="the_content_section bg_fff article_content">
            <div class="inner_section no_margin_bottom clearfix">

                <h1>{'pagetitle' | resource}</h1>

                {'content' | resource}

            </div>
        </section>
    </section>


    {include 'footer'}

</div>
{include 'sctipts'}
</body>
</html>