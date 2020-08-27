{var $style = [
'logo' => 'display:block;margin: auto;',
'a' => 'color:#348eda;',
'p' => 'font-family: Arial;color: #666666;font-size: 12px;',
'footer' => 'font-family: Arial;color: #fff;font-size: 12px;',
'h' => 'font-family:Arial;color: #111111;font-weight: 200;line-height: 1.2em;',
'h1' => 'font-size: 36px;',
'h2' => 'font-size: 28px;',
'h3' => 'font-size: 22px;',
'th' => 'font-family: Arial;text-align: left;color: #111111;',
'td' => 'font-family: Arial;text-align: left;color: #111111;padding:25px;',
'td_product' => 'border:1px solid #ccc; font-family: Arial;text-align: left;color: #111111;padding:3px 5px;',
'th_product' => 'font-family: Arial;text-align: center;color: #111111;border:1px solid #ccc; padding:3px 5px;',
]}

{var $site_url = ('site_url' | option) | preg_replace : '#/$#' : ''}
{var $site_name = ('site_name' | option)}
{var $assets_url = 'assets_url' | option}
{set $list = $fields}
{unset $list['id']}


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>{$site_name}</title>
</head>
<body style="margin:0;padding:0;background:#ed0648;">
<div style="height:100%;padding-top:20px;background:#ed0648;">
    {block 'logo'}
        <a href="{$site_url}">
            <img style="{$style.logo}"
                 src="{$site_url}/assets/templ/img/logo-new22.png"
                 alt="{$site_name}"
                 width="150"/>
        </a>
    {/block}
    <!-- body -->
    <table class="body-wrap" style="padding:0 20px 20px 20px;width: 100%;background:#ed0648;margin-top:10px;">
        <tr>
            <td></td>
            <td class="container" style="border:1px solid #f0f0f0;background:#ffffff;width:800px;margin:auto;">
                <div class="content">
                    <table style="width:100%;">
                        <tr>
                            <td style="{$style.td}">
                                <p>Здравствуйтe.</p>
                                <p><b>{$fields['Имя']}</b>, обратился(ась) к Вам за консультацией. Перозвоните ему, клиент обратил внимание на страницу <a href="{$site_url}/{$fields['id'] | resource: 'uri' }">"{$fields['id'] | resource: 'pagetitle' }"</a></p>
                                <h4>Данные для обратной связи:</h4>
                                {foreach $list as $name => $value}
                                    <p><b>{$name}:</b> {$value}</p>
                                {/foreach}

                                <br>
                                <div style="border-top:1px solid #f0f0f0;"></div>
                                <p>Приятной работы!</p>

                                {if $cart?}
                                    <hr>
                                    {set $summ = 0}
                                    <h3>Товары в корнизе покупателя</h3>
                                    <table style="border-collapse: collapse;">
                                        <tr>
                                            <th style="{$style.th_product}">Товар</th>
                                            <th style="{$style.th_product}">Количество</th>
                                            <th style="{$style.th_product}">Цена</th>
                                            <th style="{$style.th_product}">Сумма</th>
                                        </tr>
                                        {foreach $cart as $item}
                                            {set $s = $item['price']*$item['count']}
                                            <tr>
                                                <td style="{$style.td_product}">{$item['name']}</tdh>
                                                <td style="{$style.td_product}">{$item['count']}</td>
                                                <td style="{$style.td_product}">{$item['price']}</td>
                                                <td style="{$style.td_product}">{$s}</tdh>
                                            </tr>
                                            {set $summ = $summ + $s}
                                        {/foreach}
                                    </table>
                                    <h4>Сумма заказа: {$summ}</h4>
                                {/if}
                            </td>
                        </tr>
                    </table>
                </div>
                <!-- /content -->
            </td>
            <td></td>
        </tr>
    </table>
    <!-- /body -->
    <!-- footer -->
    <table style="clear:both !important;width: 100%;">
        <tr>
            <td></td>
            <td class="container">
                <!-- content -->
                <div class="content">
                    <table style="width:100%;text-align: center;">
                        <tr>
                            <td align="center">
                                <p style="{$style.footer}">
                                    {block 'footer'}
                                        <a href="{$site_url}" style="color: #ffff;">
                                            © {'' | date : 'Y'} {'site_name' | option} Все права защищены.
                                        </a>
                                    {/block}
                                </p>
                            </td>
                        </tr>
                    </table>
                </div>
                <!-- /content -->
            </td>
            <td></td>
        </tr>
    </table>
    <!-- /footer -->
</div>
</body>
</html>
