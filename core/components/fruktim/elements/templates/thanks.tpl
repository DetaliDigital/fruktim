<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'head'}
</head>
<body>

{include 'callback'}
<div class="page_container inner_page_container bg_eaf6ff" id="top">
    {include 'header_new'}

    <section class="main main_on_inner_pages main_on_finish_page no_padding">

        <section class="the_content_section">

            {'!msGetOrder' | snippet : [
            'tpl' => 'dsmc.tpl.msGetOrder'
            ]}

        </section>


    </section>

    {include 'footer'}

</div>
[[$scripts]]
</body>
</html>