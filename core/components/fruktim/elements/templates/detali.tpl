<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'head'}
</head>
<body itemscope itemtype="http://schema.org/WebPage">
[[$callback]]
<div class="page_container inner_page_container bg_f4f4f4" id="top">
    [[$header_new]]

    <section class="main main_on_inner_pages">
        <div class="breadcrumbs_block">
            <div class="inner_section" itemprop="breadcrumb">
                {'pdoCrumbs' | snippet : [ 'tplWrapper' => '@INLINE
          <ul class="breadcrumbs">{$output}</ul>' ]}
            </div>
        </div>
        <span itemscope itemtype="http://schema.org/Product">
      <div class="card_top_panel">
        <div class="card_top_panel_content inner_section">
          <div class="card_top_panel_inner">
            <div class="flags">
              {if 'Хиты' in list $_modx->resource.promo}<a href="{'717' | url}" class="flag hit large">
                      Хиты продаж</a>{/if}
                {if 'Популярные' in list $_modx->resource.promo}<a href="{'718' | url}"  class="flag fav large">
                        Популярный</a>{/if}
                {if 'Акции' in list $_modx->resource.promo}<a href="{'719' | url}"  class="flag discount large">
                        Акции</a>{/if}
            </div>
          </div>
        </div>
      </div>

      <section class="the_content_section the_card_content_section padd_bottom0 bg_fff">
        <div class="inner_section clearfix">
          <div class="page-title">
          <h1 itemprop="name">{$_modx->resource.pagetitle}</h1>
          <a class="msfavorites" data-click data-data-list="default" data-data-type="resource"
             data-data-key="{$_modx->resource.id}">
                </a>
          </div>
          <div class="content_left_column">
            <div class="card_block clearfix">
              <div class="card_block_content clearfix">
                <div class="big_img">
                  {'msGallery' | snippet : [ 'tpl' => 'dsmc.tpl.msGallery' ]}
                </div>
                <div class="description">
                  <div class="specs">
                    {if $_modx->resource.made_in ?}
                        <p><span>Страна</span><b>{$_modx->resource.made_in}</b></p>
                    {/if} {if $_modx->resource.weight ?}
                          <p><span>Вес</span><b>{$_modx->resource.weight | grmscnvctr}</b></p>
                      {/if}
                  </div>
                  <p>
                    {'introtext' | resource}
                  </p>

                  {'!msProducts' | snippet : [
                  'parents' => 'parent' | resource,
                  'link' => 4,
                  'sortby' => 'Data.weight',
                  'master' => 'id' | resource,
                  'tplWrapper' => 'dsmc.msProducts.packing.wrapper',
                  'tpl' => 'dsmc.msProducts.packing.full',
                  'wrapIfEmpty' => 0
                  ]}

                  {if ('id' | resource | dsmc_get_parent_id : 59) == true}
                  <div class="action-bouquet">
                    <a href="#bouquet_popup" class="fancy" tabindex="0">
                      <div class="btn btn-badge">
                          <div class="btn-badge-img">
                            <img src="{'image' | resource | phpthumbon : 'w=120&h=120&zc=1'}">
                          </div>
                          <div class="btn-badge-block">
                              <div class="btn-badge-card">
                                <div class="btn-badge-text">
                                  Хотите изменить <br> букет
                                </div>
                                <div class="btn-badge-title">
                                  <span>
                                  Сделаем на заказ!
                                  </span>
                                </div>
                              </div>
                          </div>
                      </div>
                    </a>
                  </div>
                  {/if}
                </div>
              </div>
            </div>
          </div>


            <!--/content_left_column-->
          <div class="content_right_column">
            <div class="content_right_column_in sticky_element">
              <div class="price_block shk-item active">
                <div class="price_block_top" itemprop="offers" itemscope itemtype="http://schema.org/Offer"><meta
                            itemprop="priceCurrency" content="RUB"/>
                  <p class="price">
                    <span>
                      {if $_pls['old_price'] != 0}
                          <b class="old_price">{$_pls['old_price']} {'ms2_frontend_currency' | lexicon}</b>
                      {/if}
                        {if $_pls['price'] != 0}
                            <b class="new_price"><u
                                        itemprop="price">{$_pls['price']}</u> {'ms2_frontend_currency' | lexicon}/{'ms2_frontend_count_unit' | lexicon} {if $_modx->resource.weight != 0}, {$_modx->resource.weight | grmscnvctr}{/if}</b>
                        {/if}
                    </span>
                  </p>
                  {if $_modx->resource.availability == 1}
                      <span class="in_stock many">В наличии</span>
                      {else}
                      <span class="in_stock few">Нет наличии</span>
                      <div class="price_block_bottom clearfix">
                    <a href="#" class="one_click_ref"><span>Оставить запрос</span></a>
                  </div>
                  {/if}
                </div>

                <div class="price_block_content clearfix">
                  <form class="ms2_form" method="post">
                    <input type="hidden" name="id" value="{$_modx->resource.id}"/>
                     {if $_modx->resource.availability == 1}
                         <fieldset>
                      <input type="hidden" name="shk-id" value="{$_modx->resource.id}"/>


                        {'!msProducts' | snippet : [
                        'parents' => 'parent' | resource,
                        'link' => 4,
                        'sortby' => 'Data.weight'
                        'master' => 'id' | resource,
                        'tplWrapper' => 'dsmc.msProducts.wrapper.selector'
                        'tpl' => 'dsmc.msProducts.packing.selector',
                        'wrapIfEmpty' => 0
                        ]}


                           <div class="qty_wrap">
                        <p>Кол-во, {'ms2_frontend_count_unit' | lexicon}:</p>
                        <div class="qty_div">
                          <span class="minus"></span>
                          <input type="number" name="count" id="product_price" value="1">
                          <span class="plus"></span>
                        </div>
                      </div>

                      <div class="product-price">
                        <button type="submit" onclick="ym(56381620, 'reachGoal', 'product_to_cart'); return true;"
                                class="button to_cart_button" name="ms2_action"
                                value="cart/add">{'ms2_frontend_add_to_cart' | lexicon}</button>
                      </div>
                    </fieldset>
                     {/if}
                  </form>
                  {if $_modx->resource.availability == 1}
                      <div class="price_block_bottom clearfix">
                    <a href="#" class="one_click_ref"><span>Купить в 1 клик</span></a>
                  </div>
                  {/if}
                </div>
              </div>
              <div class="the_form one_click_form_block">

                {if $_modx->resource.availability == 1}
                    {'!mvtForms2' | snippet : ['form'=>'oneclick']}
                {else}
                    {'!mvtForms2' | snippet : ['form'=>'delivery_request']}
                {/if}

                <a href="#" class="close_ref"></a>
              </div>
              <div class="the_form the_form_thanks">
                <div class="the_form_thanks_content">
                  <img src="assets/templ/img/thanks_icon1.png" alt="Спасибо!"/>
                  <p class="thanks_title"><b>Спасибо</b>
                    <br/> за ваш заказ!</p>
                  <p>С вами в течении 30 минут свяжется наш менеджер</p>
                  <a href="#" class="close_ref"></a>
                </div>
              </div>
            </div>
          </div>
            <!--/ content_right_column-->
        </div>
      </section>

      <section class="advantages_section advantages_section_mark2">
        <div class="inner_section">
          <div class="advantages_block">
            [[getImageList?&docid=`1`&tvname=`advantage`&tpl=`@FILE:core/elements/chunks/items/advantageItem.tpl`]]
          </div>
        </div>
      </section>
      <section class="the_content_section">
        <div class="inner_section clearfix no_bg">
          <div class="the_tabs card_tabs" id="card_tabs">
            <div class="the_tabs_head_wrap">
              <div class="the_tabs_head_content">
                <div class="the_tabs_head">
                  <button class="active"><span>Описание товара</span></button>
                  <button><span>О магазине</span></button>
                  <button><span>Доставка и оплата</span></button>
                </div>
              </div>
            </div>
            <div class="the_tabs_content">
              <div class="the_tabs_item active clearfix" itemprop="description">
                <article>
                  {if $_modx->resource.content != ''}
                      <h2 class="mb-3">Описание</h2>
                      {$_modx->resource.content}
                  {/if}

                    {'msProductOptionsGroup' | snippet : [
                    'tpl' => 'dsmc.tpl.msProductOptionsGroup',
                    'ignoreOptions' => 'ms_sostav_buketa'
                    ]}
                </article>
              </div>
              <div class="the_tabs_item clearfix">
                <article>
                  {$_modx->config.about}
                </article>
              </div>
              <div class="the_tabs_item clearfix">
                <div class="payment_and_delivery_wrap delivery_wrap">
                  {$_modx->config.deleviry}
                </div>
                <div class="payment_and_delivery_wrap payment_wrap">
                  {$_modx->config.pay}
                </div>
              </div>
                <!--/the_tabs_item-->
            </div>
          </div>
        </div>
      </section>
      <section class="catalog_section catalog_section_five_in_row">
			{'!msPreWrapperCase' | snippet : [
            'parents' => $_modx->resource.parent,
            'tplWrapper' => 'dsmc.wrapper.product'
            'tpl' => 'dsmc.tpl.row.product'
            'limit' => 10,
            'wrapperPlaceholders' => [
            'title' => 'Похожие',
            'number_title' => 3,
            'parent_link' => $_modx->resource.parent | url,
            'carusel' => 0
            ]
            ]}
	</section>
	<section class="catalog_section catalog_section_five_in_row">

	        {'!looked' | snippet : [
            'tplOuter' => 'dsmc.lookedOuterTpl'
            'tpl' => 'dsmc.tpl.row.product'
            ]
             }

	</section>
	</span>
    </section>

    {include 'footer'}
</div>
{include 'scripts'}
</body>
</html>