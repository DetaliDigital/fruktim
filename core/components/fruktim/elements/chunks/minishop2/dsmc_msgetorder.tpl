<div class="finish_banner">
		<div class="inner_section clearfix">

			<div class="text">
				<p class="title">
					Спасибо за оформление заказа <br>
					<span>№{$order.num}</span> на нашем сайте!
				</p>

				<p>
					Оператор свяжется с Вами для уточнения <br>
					деталей заказа и сроков доставки!
				</p>

				<a href="#" class="return_button">На главную</a>
			</div>

		</div>
</div><!--/finish_banner-->


<div id="msCart">
    <div class="final_order_details_block">
	    <div class="inner_section">
             <div class="final_order_details_block_content">
									<div class="final_order_cart_list">

									<p class="title">Ваш заказ</p>
									
                                        {foreach $products as $product}
										<div class="final_order_cart_list_item">			
											<div class="img"><img src="{$product.image}" alt=""></div>

											<div class="cart_list_title">
												<p class="title">
													<a href="{$product.pagetitle | url}">
														{$product.pagetitle}
													</a>
												</p>

												<p>
													{$product.made_in}
                                                    {if $product.weight | grmscnvctr != 0}
                                                    <br />
                                                    {$product.weight | grmscnvctr}
                                                    {/if}
												</p>
											</div>
											<div class="cart_sum_wrap">
												<p><b>{$product.price}</b> руб.</p>
											</div>
										</div>
										{/foreach}

										<div class="final_order_cart_list_total">							
											<p><i>Итого:</i> <span><b>{$product.cost}</b> {'ms2_frontend_currency' | lexicon}</span></p>							
										</div>
									</div><!--/final_order_cart_list-->

									<div class="final_order_contacts">
										<div class="final_order_contacts_column">
											<p class="title">Контактные данные</p>


                                            {foreach ['email','receiver','phone'] as $field}
                                                {if $address[$field]?}
                                                <p>
                                                <span>
                                                {('ms2_frontend_' ~ $field) | lexicon}</span>  
                                                        <b>{$address[$field]}</b>
                                                
                                                </p>
                                                {/if}
                                            {/foreach}
										</div>

										<div class="final_order_contacts_column">
											<p class="title">Адрес доставки</p>
											
											{foreach ['index','city','fulladds'] as $field}
                                                {if $address[$field]?}
                                                <p>
                                                <span>
                                                {('ms2_frontend_' ~ $field) | lexicon}</span>  
                                                        <b>{$address[$field]}</b>
                                                
                                                </p>
                                                {/if}
                                            {/foreach}				
										</div>

										<div class="final_order_contacts_column">
											<p class="title">Доставка</p>
                                                {if $delivery.name ?}
										    	<p>
												<span>Способ доставки:</span>
												<b>{$delivery.name}</b>
											    </p>	
											    {/if}
                                                {if $payment.name ?}
										    	<p>
												<span>Способ оплаты:</span>
												<b>{$payment.name}</b>
											    </p>
											    {/if}
										</div>
									</div><!--/final_order_contacts-->

								</div>
        </div>
    </div>
</div>