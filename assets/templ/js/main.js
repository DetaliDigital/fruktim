$(document).ready(function() {

	//check if mobile
		var isMobile = false; //initiate as false
		// device detection
		if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
			|| /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0,4))) isMobile = true;
	//-
	if (isMobile) {$('body').addClass('mobile');}



	$('.fancy').fancybox({nextSpeed:0,prevSpeed:0});

	$('.fancy_img').fancybox({wrapCSS:"fancy_img"});
	$('.fancy_card').fancybox({wrapCSS:"fancy_img"});
	$('.fancy_buy').fancybox({wrapCSS:"fancy_buy"});

	$('input[name="tel"]').mask("+7 (999) 999-99-99");
    $('input[name="phone"]').mask("+7 (999) 999-99-99");


	if ($('input[type="radio"]').length) {
		$('input[type="radio"]').ezMark();
	}

	if ($('input[type="checkbox"]').length) {
		$('.filter_block input[type="checkbox"]').ezMark();
	}


    //services menu transformation
	if (($(window).width() >= 1200) && ($('.header_menu>ul>li').length >=6)) {
	   var h_m_el = $('.header_menu>ul>li');
	   $('.header_menu_block').addClass('has_right_dropdown');

	   $('<div class="right_dropdown_wrap"><button class="dropdown_more">Еще продукты</button><ul class="right_dropdown"></ul></div>').appendTo('.header_menu');

	   for (var i=6;i<h_m_el.length;i++) {
	       $(h_m_el[i]).appendTo($('.right_dropdown'));
	   }
	}
	//--

	//-show qty on to cart click
	$('.product_submit_wrap').on("click", ".to_cart_button", function() {
	    $(this).closest('div').addClass('show_qty');
	});
	//--


  /*
	if ($('select').length) {
		if ($(window).width() > 1170) {
			$('select').selectBox({'keepInViewport':false});
		} else {
			$('select').selectboxMobile();
		}
	}
	*/



	//to cart button
	/*
	$('.catalog_block_item .to_cart_button').click(function(e) {
		e.preventDefault();
		$(this).closest('.catalog_block_item').toggleClass('show_qty');
	});
	*/
	
	
	let sliderInit = function(className) {
	    $(`.${className}`).slick({
		    slidesToShow: 5,
		    slidesToScroll: 1,
		    arrows: true,
		    dots: false,
		    //autoplay: true,
		    // autoplaySpeed: 2000,
		    responsive: [
                {
                  breakpoint: 1100,
                  settings: {
                    slidesToShow: 4,
                  }
                },
                {
                  breakpoint: 950,
                  settings: {
                    slidesToShow: 3,
                  }
                },
                {
                  breakpoint: 800,
                  settings: {
                    slidesToShow: 2,
                  }
                },
                {
                  breakpoint: 420,
                  settings: {
                    slidesToShow: 1,
                  }
                }
              ]
		  });
	};
	
	let arrSliders = Array.from(document.querySelectorAll('.catalog_block.swiper')).filter(i => i.children.length >= 5);
	
	for(let i = 0; i < arrSliders.length; i++) {
	    let slider = arrSliders[i].classList.add('slider');
	   // sliderInit('catalog_block.swiper.slider');
	}
	
	
	$('.catalog_block.swiper.slider').slick({
	    slidesToShow: 5,
	    slidesToScroll: 1,
	    arrows: true,
	    dots: true,
	    //autoplay: true,
	    // autoplaySpeed: 2000,
	    responsive: [
            {
              breakpoint: 1100,
              settings: {
                slidesToShow: 4,
              }
            },
            {
              breakpoint: 950,
              settings: {
                slidesToShow: 3,
                centerMode: true,
                centerPadding: '40px',
                 arrows: false,
              }
            },
            {
              breakpoint: 680,
              settings: {
                slidesToShow: 2,
                 centerMode: true,
                centerPadding: '40px',
                arrows: false,
              }
            },
            {
              breakpoint: 530,
              settings: {
                slidesToShow: 1,
                 centerMode: true,
                centerPadding: '40px',
                arrows: false,
              }
            }
          ]
	  });
	  
	  //a.reveal_all
    	let fastLinks = document.querySelectorAll('.fast-links-container ul li');
    	
    	if(fastLinks.length >= 4 ) {
    	    let fastLinksContainer = document.querySelector('.fast-links-container');
    	    fastLinksContainer.classList.add('show');
            showListLinks();
    	}
    	
    	function showListLinks() {
    	
        	$('a.reveal_all').click(function(e) {
        		e.preventDefault();
        		$(this).closest('.hidden_for_revealing').toggleClass('revealed');
        
        		if ($(this).hasClass('visible_on_mobile_only')) {
        			$(this).toggleClass('active');
        
        			if ($(this).hasClass('active')) {
        				$(this).find('b').html('Свернуть');
        			} else {
        				$(this).find('b').html('Показать еще');
        			}
        		}
        	});
    	}
    	//--


    $(document).on( 'click','#isFirstClient',function(e) {
    	var ch = $(this).prop("checked");
    	if(ch){
    		$('.isFirstClient').val('Внимание! Это первый заказ клиента');
		}else{
            $('.isFirstClient').val('');
		}
    });

/*
    $(document).on( 'click','.js_quick',function(e) {
        $(this).parent().find('.header_quick_cart').toggleClass('active');
        return false;
    });
*/


    $(document).on( 'click','.js_search_subm',function(e) {
        $('#mse2_form').submit();
        return false;
    });


    $(document).on( 'click touchstart','span.plus',function(e) {
    	var obj = $(this).parent().find('input'), val = obj.val()*1;
        obj.val(val+1);
        //obj.closest('form').submit();
        //return false;
    });

    $(document).on( 'click touchstart','span.minus',function(e) {
        var obj = $(this).parent().find('input'), val = obj.val()*1;
        if(val>1){
            obj.val(val-1);
		}
        //SHK.recountItemAll();
        return false;
    });

$('#sort_dropdown').click(function() {
    var menu = document.getElementById('dropdown_menu');
    console.log('success');
    if(menu.classList.contains('active'))
    {
        menu.classList.remove('active');
        menu.style.display = 'none';
    }
    else
    {
        menu.classList.add('active');
        menu.style.display = 'block';
    }
});

$('.sort_picker').click(function(e) {
    var menu = document.getElementById('dropdown_menu');
    menu.classList.remove('active');
    menu.style.display = 'none';
    var current = e.currentTarget;
    var input = document.getElementsByClassName('selectBox-label');
    input[0].innerHTML = current.innerHTML;
    var sort = $(this).data('sort');
    sort += mse2Config.method_delimeter + $(this).data('parent');
    mse2Config.sort =  sort;
    mSearch2.submit();
});

/*
    $('.icon.fav_toggler').each(function () {
    	var $this=$(this),id = $this.data('id');
        $.ajax({
            url: '/ajax.json',
            type: "POST",
            data: {'id': id, 'isFav': isFav , 'task': 'getFav'},
            dataType: "json",
            success: function (data) {


            }

        });

    });
    */
	//--

	// card page fav_toggler
	/*
	$('a.cat_fav').click(function(e) {
		e.preventDefault();
		$(this).toggleClass('active');
	});
*/

$(document).on('change', '#mse2_sort', function() {
        var selected = $(this).find('option:selected');
        var sort = selected.data('sort');
        sort += mse2Config.method_delimeter + selected.val();
        mse2Config.sort =  sort;
        mSearch2.submit();
});

	$('.fav_toggler, a.cat_fav').click(function (e) {
        e.preventDefault();
        $(this).toggleClass('active');
        var isFav = $(this).hasClass('active'), id= $(this).data('id');



            $.ajax({
                url: '/ajax.json',
                type: "POST",
                data: {'id': id, 'isFav': isFav , 'task': 'setFav'},
                dataType: "json",
                success: function (data) {


                }

            });



        if ($(this).hasClass('active')) {

            $(this).find('img').attr('src', 'assets/templ/img/health_a.png');
        } else {
            $(this).find('img').attr('src', 'assets/templ/img/health.png');
        }
    });
	//--

  /*
	$('#mse2_sort select').change(function () {
		var id=$("#mse2_sort option:selected").val();
		//console.log($("#mse2_sort option:selected").val());
        $.ajax({
            url: '/ajax.json',
            type: "POST",
            data: {'id': id, 'task': 'sort'},
            dataType: "json",
            success: function (data) {
                //mSearch2.load();
                window.location.reload()

            }

        });


    });
  */
	//listen for the_form_div_checkbox_horizontal other city
	$('.the_form_div_checkbox_horizontal').find('input[type="text"]').hide();

	$('.the_form_div_checkbox_horizontal input[type="radio"]').not('.the_form_div_checkbox_horizontal input[data-val="other_city"]').change(function() {
			$(this).closest('.the_form_div_checkbox_horizontal').removeClass('show_other_city');
			$(this).closest('.the_form_div_checkbox_horizontal').find('input[type="text"]').hide();
	});

	$('.the_form_div_checkbox_horizontal input[data-val="other_city"]').change(function() {
			$(this).closest('.the_form_div_checkbox_horizontal').addClass('show_other_city');
			$(this).closest('.the_form_div_checkbox_horizontal').find('input[type="text"]').show();
	});
	//--


	//slick Sliders
	if ($(".top_banner_slider").length) {
			var b_slider = $(".top_banner_slider").slick({
			    slidesToShow: 3,
			    slidesToScroll: 1,
			    arrows: true,
			    dots: false,
			    autoplay: true,
			    autoplaySpeed: 3000,
			    slide: ".top_banner_slider_item",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25
			  });
	}


	if ($(".catalog_block_slider").length) {
			var c_slider = $(".catalog_block_slider").slick({
			    slidesToShow: 4,
			    slidesToScroll: 1,
			    arrows: true,
			    dots: false,
			    //autoplay: true,
			    // autoplaySpeed: 2000,
			    slide: ".catalog_block_slider_item",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25
			  });
	}

	if ($(".how_we_work_slider").length) {
			var h_slider = $(".how_we_work_slider").slick({
			    slidesToShow: 3,
			    slidesToScroll: 1,
			    arrows: true,
			    dots: false,
			    //autoplay: true,
			    // autoplaySpeed: 2000,
			    slide: ".how_we_work_item",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25
			  });
	}

	if ($(".reviews_block_slider").length) {
			var r_slider = $(".reviews_block_slider").slick({
			    slidesToShow: 3,
			    slidesToScroll: 1,
			    arrows: true,
			    dots: true,
			    //autoplay: true,
			    // autoplaySpeed: 2000,
			    slide: ".reviews_block_item",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25
			  });
	}

	if ($(".brands_slider").length) {
			var br_slider = $(".brands_slider").slick({
			    slidesToShow: 6,
			    slidesToScroll: 1,
			    arrows: true,
			    dots: false,
			    //autoplay: true,
			    // autoplaySpeed: 2000,
			    slide: ".brands_item",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25
			  });
	}

// 	if ($(".slider").length) {
// 			var slider = $(".slider").slick({
// 			    slidesToShow: 5,
// 			    slidesToScroll: 1,
// 			    arrows: true,
// 			    dots: false,
// 			    //autoplay: true,
// 			    // autoplaySpeed: 2000,
// 			    slide: ".slider_item",
// 			    respondTo:'slider',
// 			    swipeToSlide: true,
// 			    variableWidth: true,
// 			    touchThreshold: 25
// 			  });
// 	}

	//--


	//sort_dropdown
	$('.sorting_dropdown_wrap label:not(.for_checkbox)').click(function() {
		$(this).closest('.sorting_dropdown_wrap').toggleClass('active');
	});

	$('.sorting_dropdown p').click(function() {
		$('.sorting_dropdown p').removeClass('active');
		$(this).addClass('active');
		$(this).closest('.sorting_dropdown_wrap').children('label').find('img').attr('src',$(this).find('img').attr('src'));
		$(this).closest('.sorting_dropdown_wrap').children('label').find('span').html($(this).find('span').html());
		$(this).closest('.sorting_dropdown_wrap').removeClass('active');
	});
	//--


	//cart_order_block quick order

	$('.cart_order_block .quick_cart_order_button').click(function(e) {
		e.preventDefault();
		$(this).closest('.cart_order_block').toggleClass('active');

	});

	//--

	//cart_extras_button toggler
	$('.cart_extras_button').click(function(e) {
		e.preventDefault();
		$(this).closest('.cart_list_item').find('.cart_extras_block').toggleClass('active');
		$(this).closest('.cart_list_item').find('.cart_extras_content').toggleClass('active');
		/*
		if ($(this).closest('.cart_extras_block').hasClass('active') === false) {
			$(this).html($(this).data('offer'));
		} else {
			$(this).html('Скрыть дополнительные товары');
		}
		*/
	});
	//--


	//wrap nav li a content into span
	$('.header_top_menu > ul > li > a').each(function() {
		$(this).html('<span>' + $(this).html() + '</span>');
	});
	//--

	//callback button slideover
	$('header .callback_button').add('.close_callback').click(function(e) {
		e.preventDefault();

		$('.callback_popup').add('header .callback_button').add('.close_callback').toggleClass('active');
	});
	//-


	//mark has_ul
	$('.header_menu ul > li').add('.header_top_menu ul > li').add('.footer_menu ul > li').each(function() {
		if ($(this).children('ul').length) {$(this).addClass('has_ul');}
		if ($(this).children('.header_top_menu_dropdown').length) {$(this).addClass('has_dropdown');}
		if ($(this).children('.header_menu_dropdown').length) {$(this).addClass('has_dropdown');}
	});
	
	$('.nav_left_bar li').each(function() {
		if ($(this).children('ul').length) {
		    $(this).addClass('has_ul');
		    $('<i class="menu_toggle"></i>').appendTo($(this).children('a'));
		}
	});
	//--
	
	//nav_left_bar menu toggling
	$('.nav_left_bar > li:not(.active) > ul').add('.nav_left_bar > li > ul > li:not(.active) > ul').slideUp(0);
	
	$('.nav_left_bar .menu_toggle').click(function(e) {
	    e.stopPropagation();
	    if ($(this).closest('li').hasClass('has_ul')) {e.preventDefault();}
	    $(this).closest('li').toggleClass('active');
	    $(this).closest('a').siblings('ul').slideToggle();
	});
	//--

	//equal height of elements
	$('.header_top_menu_dropdown_column').add('.tab_column').matchHeight({
            byRow: true,
            property: 'height',
            target: null,
            remove: false
    });

    if ($(window).width() > 768) {
		$('.card_block_content > div').matchHeight({
            byRow: true,
            property: 'height',
            target: null,
            remove: false
    	});
    }


     if ($(window).width() >= 768) {
     setTimeout(function() {
		$('.catalog_page_cat_block .catalog_block_slider_item').matchHeight({
            byRow: true,
            property: 'height',
            target: null,
            remove: false
    	});
     },1500);
    	
    }
	//--

	// content_right_column a.close_ref

	$('.content_right_column a.close_ref').click(function(e) {
		e.preventDefault();
		$(this).closest('.content_right_column .content_right_column_in > div').removeClass('active');
		$('.content_right_column .price_block').addClass('active');

		 sticky_init();
	});
	//--

	// one_click_ref click in card right block
	$('.content_right_column a.one_click_ref').click(function(e) {
		e.preventDefault();
		$(this).closest('.content_right_column .content_right_column_in > div').removeClass('active');
		$('.content_right_column .one_click_form_block').addClass('active');

		 sticky_init();
	});
	//--

	//found_cheaper a click
	$('.found_cheaper a').click(function(e) {
		e.preventDefault();
		$('.found_cheaper_in_content_popup').addClass('active');
	});

	$('.contacts_page_block .order_call_ref').click(function(e) {
		e.preventDefault();
		$('.contacts_in_content_popup').add('.in_content_main_item').addClass('active');
	});

	$('a.in_content_popup_close').click(function(e) {
		e.preventDefault();
		$(this).closest('.in_content_popup').removeClass('active');
		$('.in_content_main_item').removeClass('active');
	});
	//--

	//card big img change onlick

	$('.mini_img a').click(function(e) {
		e.preventDefault();
		$(this).closest('.mini_img').closest('.description').siblings('.big_img').find('a.fancy').attr('href',$(this).attr('href'));
		$(this).closest('.mini_img').closest('.description').siblings('.big_img').find('a.fancy').children('img').attr('src',$(this).attr('href'));

		$('.mini_img a').removeClass('active');
		$(this).addClass('active');
	});

	//--

	//header search on tablets
		$('.header_search input[type="text"]').click(function(e) {
			e.stopPropagation();
			$(this).closest('.header_search').addClass('tablet_active');
		});

		$('body').click(function(e) {
			$('.header_search').removeClass('tablet_active');
		});
	//--

	//sticky plugin
	function sticky_init() {
		if ($(window).width() > 1200) {
			if ($('.sticky_element').length) {
				var theBottomSpacing = $('footer').height()+ 290;

				//$(".sticky_element").sticky({topSpacing:110,bottomSpacing:theBottomSpacing});
			}
		}
	}

	sticky_init();
	//--


	//fav icon click
	/*
	$('a.cat_fav').click(function(e) {
		e.preventDefault();
		$(this).toggleClass('active');
	});
	*/
	//--

	//filter_block toggling on mobile
	$('.filter_panel_toggling_button').add('.filter_close_toggler').click(function(e) {
		e.preventDefault();
		$('.filter_block').toggleClass('active');
		$('body').toggleClass('filter_is_open');
	})
	//--

	//contacts_info_close_button
	$('a.contacts_info_close_button').add('.the_contacts_block .order_call_form_wrap span.close').click(function(e) {
		e.preventDefault();
		$('.the_contacts_block a.contacts_info_close_button').toggleClass('active');
		$('.the_contacts_block .order_call_form_wrap').toggleClass('active');

		if ($('.the_contacts_block a.contacts_info_close_button').hasClass('active')) {
			$('.the_contacts_block a.contacts_info_close_button').html('Закрыть');
		} else {
			$('.the_contacts_block a.contacts_info_close_button').html('Заказать звонок');
		}
	});
	//--

	//mobile menu categories roll over
	if ($('.roll_over_menu').length) {


	  $('.header_menu_mobile_sub_categories_ul').each(function() {
	    $(this).prepend('<li class="go_back_li"><a href="#"><span>Вернуться назад</span></a><span class="x_close"></span></li>');
	  });

	  $('.header_menu_mobile_main_categories_ul li a').add('.mobile_order_call').click(function(e) {
	    if ($(this).closest('li').hasClass('direct_ref') === false) {
	      e.preventDefault();
	      var this_li = $(this);
	      $('.roll_over_menu > .ul_sub_wrap[data-toggle="'+ $(this_li).data('toggle') +'"]').addClass('open');
	      $('.header_menu_mobile_main_categories_ul').addClass('open');
	    }
	  });

	  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul > li > a').click(function(e) {
	    if ($(this).siblings('.ul_sub_wrap').find('ul').length) {e.preventDefault();}
	    if ($(this).closest('li').hasClass('go_back_li') === false) {
	      $(this).closest('.ul_sub_wrap').addClass('second_sub_open');
	      $(this).siblings('.ul_sub_wrap').addClass('open');
	    }
	  });

	  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul .more_toggle').click(function(e) {
	    e.preventDefault();

	      $(this).closest('.sub_wrap_subdivision_item').addClass('show_all');
	      $(this).siblings('ul').addClass('show_all');

	  });

	  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul > li.go_back_li > a').click(function(e) {
	    e.preventDefault();
	    var this_ul = $(this).closest('ul');
	    $('.roll_over_menu > .ul_sub_wrap').removeClass('open');
	    $('.header_menu_mobile_main_categories_ul').removeClass('open');
	  });

	  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul > li > .ul_sub_wrap > ul > li.go_back_li > a').click(function(e) {
	    e.preventDefault();
	    var this_ul = $(this).closest('ul');
	    $('.ul_sub_wrap').removeClass('second_sub_open');
	    $(this).closest('.ul_sub_wrap').removeClass('open');
	  });

	  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul > li a.more_toggle ~ .ul_sub_wrap > ul > li.go_back_li > a').click(function(e) {
	    e.preventDefault();
	    var this_ul = $(this).closest('ul');
	    $('.ul_sub_wrap').removeClass('second_sub_open');
	    $(this).closest('.ul_sub_wrap').removeClass('open');
	  });



	  $('.header_menu_mobile_main_categories_ul .header_menu_catalog_trigger > a').click(function(e) {
	    e.preventDefault();
	    $(this).closest('.header_menu_mobile_main_categories_ul').addClass('show_cat_li');
	  });


	  $('.roll_over_menu .header_menu_mobile_sub_categories_ul span.x_close').click(function(e) {
	    e.preventDefault();
	    $('.roll_over_menu').add('.header_mobile_nav_trigger').removeClass('active');
	  });


	  $('.roll_over_menu .header_menu_mobile_sub_categories_ul .close_all').click(function(e) {
	    e.preventDefault();

	    $('.roll_over_menu > .ul_sub_wrap').removeClass('open');
	    $('.header_menu_mobile_main_categories_ul').removeClass('open');

	    $('.roll_over_menu').add('.header_mobile_nav_trigger').add('.header_nav.ver2').add('header .btn-menu').removeClass('active').removeClass('open');
	  });

	}

	//--


	//set breadcrumbs and other elements width on mobile
	if ($(window).width() < 541) {
	  setTimeout(function() {
	    $('.breadcrumbs_block .inner_section .breadcrumbs').css('padding-right','15px');
	    var bcrumb_w = parseInt($('.breadcrumbs_block .inner_section .breadcrumbs').width());
	    $('.breadcrumbs_block .inner_section').css('width',(bcrumb_w) + "px");
	    $('.breadcrumbs_block').scrollLeft(bcrumb_w+60);

	  },444);


	  setTimeout(function() {
	    $('.card_top_panel .card_top_panel_content .card_top_panel_inner').css('padding-right','1px');
	    var bcrumb_w1 = parseInt($('.card_top_panel_inner').width());
	    $('.card_top_panel_content').css('width',(bcrumb_w1) + "px");
	    //$('.card_top_panel').scrollLeft(bcrumb_w1+60);

	  },444);

	  setTimeout(function() {
	    $('.the_tabs_head_wrap .the_tabs_head_content .the_tabs_head').css('padding-right','1px');
	    var bcrumb_w1 = parseInt($('.the_tabs_head').width());
	    $('.the_tabs_head_content').css('width',(bcrumb_w1) + "px");
	    //$('.the_tabs_head_wrap').scrollLeft(bcrumb_w1+60);

	  },444);

	  setTimeout(function() {
	    $('.brands_glossary_content nav ul').css('padding-right','15px');
	    var bcrumb_w1 = parseInt($('.brands_glossary_content nav ul').width());
	    $('.brands_glossary_content nav').css('width',(bcrumb_w1) + "px");
	    //$('.brands_glossary_content').scrollLeft(bcrumb_w1+60);

	  },444);
	}
	//--

	//sorting block mechanics
	/*
	$('.sorting_block a').click(function(e) {
		e.preventDefault();

		if ($(this).hasClass('active')) {
			if ($(this).hasClass('dual_choise')) {
				$(this).toggleClass('switched');
			}
		}

		$('.sorting_block a').removeClass('active');

		$(this).addClass('active');
	});
	*/
	//--

	//header search on mobile
	if ($(window).width() < 1170) {

		$('.header_search_mobile_toggler').click(function(e) {
		    e.preventDefault();
			e.stopPropagation();

			$(this).toggleClass('active');
			$('.header_search').toggleClass('active').css('width',$(window).width());

		});

		$('body').click(function(e) {
			e.stopPropagation();
			$('.header_search').removeClass('active');
		});

		$('.header_search span.close').click(function(e) {
			e.stopPropagation();
			$('.header_search').removeClass('active');
		});

		$('.header_search input').click(function(e) {
			e.stopPropagation();

		});

	}
	//--


	//elements rearrangement on mobile
	if ($(window).width() < 1200) {
/*
		if ($('.card_block').length) {
			$('.content_right_column').insertAfter($('.card_block_content'));
		}

		if ($('.mobile_filter_section_wrap').length) {
			$('.content_right_column .filter_block').appendTo('.mobile_filter_section_wrap');
		}
*/
	}
	
	if ($(window).width() < 769) {
		
		$('.category_section .popular-category').each(function() {
			$(this).slick({
			    slidesToShow: 5,
			    slidesToScroll: 1,
			    arrows: false,
			    dots: false,
			    //autoplay: true,
			    // autoplaySpeed: 2000,
			    slide: ".category_item",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25
			  });
		});
	};


	if ($(window).width() < 1023) {

		$('.category_section .category_block').each(function() {
			$(this).slick({
			    slidesToShow: 5,
			    slidesToScroll: 1,
			    arrows: true,
			    dots: false,
			    //autoplay: true,
			    // autoplaySpeed: 2000,
			    slide: ".category_item",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25
			  });
		});

// 		$('.catalog_section_five_in_row .catalog_block').each(function() {
// 			$(this).slick({
// 			    slidesToShow: 3,
// 			    slidesToScroll: 1,
// 			    arrows: true,
// 			    dots: false,
// 			    //autoplay: true,
// 			    // autoplaySpeed: 2000,
// 			    slide: ".catalog_block_slider_item",
// 			    respondTo:'slider',
// 			    swipeToSlide: true,
// 			    variableWidth: true,
// 			    touchThreshold: 25
// 			  });
// 		});

	}
	
	if ($(window).width() < 991) {

		$('.catalog_block.wr-consumer').each(function() {
			$(this).slick({
			    slidesToShow: 4,
			    slidesToScroll: 1,
			    arrows: true,
			    dots: true,
			 //   autoplay: true,
			 //   autoplaySpeed: 2000,
			     responsive: [
                    {
                      breakpoint: 950,
                      settings: {
                        slidesToShow: 3,
                        centerMode: true,
                        centerPadding: '40px',
                         arrows: false,
                      }
                    },
                    {
                      breakpoint: 680,
                      settings: {
                        slidesToShow: 2,
                         centerMode: true,
                        centerPadding: '40px',
                        arrows: false,
                      }
                    },
                    {
                      breakpoint: 530,
                      settings: {
                        slidesToShow: 1,
                         centerMode: true,
                        centerPadding: '40px',
                        arrows: false,
                      }
                    }
                  ]
			  });
		});
	}

	if (($(window).width() > 767) && ($(window).width() < 1200)) {

		//$('.card_block .price_block_bottom .cat_fav').prependTo($('.card_block .price_block'));

	}


	if (($(window).width() > 767) && ($(window).width() < 1023)) {
/*
		if ($(".content_left_column .catalog_block.catalog_block_mark2").not('.cart_extras_content .catalog_block_slider').length) {
			$('.content_left_column .catalog_block.catalog_block_mark2').each(function() {
				$(this).slick({
				    slidesToShow: 3,
				    slidesToScroll: 1,
				    arrows: true,
				    dots: false,
				    //autoplay: true,
				    // autoplaySpeed: 2000,
				    slide: ".catalog_block_item",
				    respondTo:'slider',
				    swipeToSlide: true,
				    variableWidth: true,
				    touchThreshold: 25
				  });
			});

		}

*/
	}

	if ($(window).width() < 769) {
		if ($(".content_left_column .catalog_block.catalog_block_mark2").length) {
			$('.content_left_column .catalog_block.catalog_block_mark2').each(function() {
				$(this).slick({
				    slidesToShow: 1,
				    slidesToScroll: 1,
				    arrows: true,
				    dots: false,
				    //autoplay: true,
				    // autoplaySpeed: 2000,
				    slide: ".catalog_block_item",
				    respondTo:'slider',
				    swipeToSlide: true,
				    variableWidth: true,
				    touchThreshold: 25
				  });
			});

		}
		
		if ($(".catalog_section_five_in_row .catalog_block").length) {
    		$('.catalog_section_five_in_row .catalog_block').each(function() {
        		$(this).not('.slick-initialized').slick({
    			    slidesToShow: 4,
    			    slidesToScroll: 1,
    			    arrows: true,
    			    dots: true,
    			 //   autoplay: true,
    			 //   autoplaySpeed: 2000,
				    slide: ".catalog_block_slider_item",
				    respondTo:'slider',
				    swipeToSlide: true,
				    touchThreshold: 25,
				    responsive: [
                    {
                      breakpoint: 950,
                      settings: {
                        slidesToShow: 3,
                        centerMode: true,
                        centerPadding: '40px',
                         arrows: false,
                      }
                    },
                    {
                      breakpoint: 680,
                      settings: {
                        slidesToShow: 2,
                         centerMode: true,
                        centerPadding: '40px',
                        arrows: false,
                      }
                    },
                    {
                      breakpoint: 530,
                      settings: {
                        slidesToShow: 1,
                         centerMode: true,
                        centerPadding: '40px',
                        arrows: false,
                      }
                    }
                  ]
			  });
    		});
		}

		/*
		if ($('.catalog_page_cat_block').length) {
			$('.content_left_column .catalog_page_cat_block').each(function() {
				$(this).slick({
				    slidesToShow: 3,
				    slidesToScroll: 1,
				    arrows: true,
				    dots: false,
				    //autoplay: true,
				    // autoplaySpeed: 2000,
				    slide: ".catalog_block_slider_item",
				    respondTo:'slider',
				    swipeToSlide: true,
				    variableWidth: true,
				    touchThreshold: 25
				  });
			});

		}
		*/

		if ($('.main_page_container .catalog_block').length) {
			$('.main_page_container .catalog_block').each(function() {
				$(this).not('.slick-initialized').slick({
    			    slidesToShow: 4,
    			    slidesToScroll: 1,
    			    arrows: true,
    			    dots: true,
    			 //   autoplay: true,
    			 //   autoplaySpeed: 2000,
				    slide: ".catalog_block_slider_item",
				    respondTo:'slider',
				    swipeToSlide: true,
				    touchThreshold: 25,
				    responsive: [
                    {
                      breakpoint: 950,
                      settings: {
                        slidesToShow: 3,
                        centerMode: true,
                        centerPadding: '40px',
                         arrows: false,
                      }
                    },
                    {
                      breakpoint: 680,
                      settings: {
                        slidesToShow: 2,
                         centerMode: true,
                        centerPadding: '40px',
                        arrows: false,
                      }
                    },
                    {
                      breakpoint: 530,
                      settings: {
                        slidesToShow: 1,
                         centerMode: true,
                        centerPadding: '40px',
                        arrows: false,
                      }
                    }
                  ]
			  });
			});

		}


		if ($(".article_catalog_block").length) {
			$('.article_catalog_block').each(function() {
				$(this).slick({
				    slidesToShow: 1,
				    slidesToScroll: 1,
				    arrows: true,
				    dots: false,
				    //autoplay: true,
				    // autoplaySpeed: 2000,
				    slide: ".catalog_block_item",
				    respondTo:'slider',
				    swipeToSlide: true,
				    variableWidth: true,
				    touchThreshold: 25
				  });
			});

		}


		/*
		if ($(".content_left_column.to_right .catalog_block").not('.cart_extras_content .catalog_block_slider').length) {
			$('.content_left_column.to_right .catalog_block').each(function() {
				$(this).slick({
				    slidesToShow: 1,
				    slidesToScroll: 1,
				    arrows: true,
				    dots: false,
				    //autoplay: true,
				    // autoplaySpeed: 2000,
				    slide: ".catalog_block_item",
				    respondTo:'slider',
				    swipeToSlide: true,
				    variableWidth: true,
				    touchThreshold: 25
				  });
			});

		}
		*/

		$('.header_top_right').appendTo('header .inner_header_content');
		$('.header_search').appendTo('header .inner_header');

		$('.content_right_column').insertAfter('.card_block_content .big_img');

		$('.the_contacts_block_wrap').insertBefore('.contacts_map');

		$('.cart_list_item > .text').each(function() {
			$(this).insertBefore($(this).siblings('.img'));
		});


		$('.content_left_column .catalog_block.catalog_block_mark2.slick-slider').each(function() {
			$('<a href="#" class="button all_button all_button_card">Смотреть все</a>').insertAfter($(this));
		});

	}


	if ($(window).width() < 749) {


	//move .left_filter_block to content
	$('.catalog_section .inner_section .section_title_wrap a.all_button').each(function() {
		$(this).appendTo($(this).closest('.inner_section'));
	});
	//--


	}


	if ($(window).width() < 500) {

		/*
		$('.catalog_block').each(function() {
				$(this).slick({
				    slidesToShow: 3,
				    slidesToScroll: 1,
				    arrows: true,
				    dots: false,
				    //autoplay: true,
				    // autoplaySpeed: 2000,
				    slide: ".catalog_block_slider_item",
				    respondTo:'slider',
				    swipeToSlide: true,
				    variableWidth: true,
				    touchThreshold: 25
				  });
		});
	*/

	}
	//--
	
	
	$('.slick-slider .catalog_block_slider_item').matchHeight({
            byRow: true,
            property: 'height',
            target: null,
            remove: false
    });
	

	//stars mechanics
	$('.stars span').wrap('<div></div>');

		//dynamic stars
		var small_star1 = 17;
		var small_star2 = 34;
		var small_star3 = 51;
		var small_star4 = 68;
		var small_star5 = 85;

		var big_star1 = 21;
		var big_star2 = 42;
		var big_star3 = 63;
		var big_star4 = 84;
		var big_star5 = 105;

		var selected_rating = "";

		function figureOutStars(stars_container,mx1) {
			var calculated_rating = "";

			if ($(stars_container).hasClass('stars_big')) {
				if (mx1 <= big_star5) {calculated_rating = "star5";}
				if (mx1 <= big_star4) {calculated_rating = "star4";}
				if (mx1 <= big_star3) {calculated_rating = "star3";}
				if (mx1 <= big_star2) {calculated_rating = "star2";}
				if (mx1 <= big_star1) {calculated_rating = "star1";}
			} else
				{
					if (mx1 <= small_star5) {calculated_rating = "star5";}
					if (mx1 <= small_star4) {calculated_rating = "star4";}
					if (mx1 <= small_star3) {calculated_rating = "star3";}
					if (mx1 <= small_star2) {calculated_rating = "star2";}
					if (mx1 <= small_star1) {calculated_rating = "star1";}
				}

			return calculated_rating;
		}

		$('.dynamic_stars').click(function(e) {
			var m_offset = $(this).offset();
			var mx = e.pageX - m_offset.left;
			var my = e.pageY - m_offset.top;

			selected_rating = figureOutStars($(this),mx);
			$(this).find('span').html(selected_rating.substr(-1,1))
		});

		$('.dynamic_stars').mousemove(function(e) {
			var m_offset2 = $(this).offset();
			var mx2 = e.pageX - m_offset2.left;
			var my2 = e.pageY - m_offset2.top;

			if (figureOutStars($(this),mx2) != "") {$(this).find('span').removeClass();$(this).find('span').addClass(figureOutStars($(this),mx2));}

		});

		$('.dynamic_stars').mouseout(function(e) {

			$(this).find('span').removeClass();
			if (selected_rating != "") {$(this).find('span').addClass(selected_rating);}

		});
		//--
	//--


	//left_filter mechanics

	if ($(window).width() > 1023) {
		$('.left_filter_content').not('.left_filter_div.active .left_filter_content').slideUp(0);

		$('.left_filter_div p.title').not('.left_filter_div.has_dropdown p.title').click(function(e) {
			$(this).closest('.left_filter_div').toggleClass('active')
			$(this).siblings('.left_filter_content').slideToggle();
		});
	} else if (($(window).width() > 767) && ($(window).width() < 1023)) {
		$('.left_filter_content').slideUp(0);

		$('.left_filter_div p.title').click(function(e) {
			$(this).closest('.left_filter_div').toggleClass('active')
			//$(this).siblings('.left_filter_content').slideToggle();
		});
	} else {
		$('.left_filter_content').not('.left_filter_div.active .left_filter_content').slideUp(0);

		$('.left_filter_div p.title').click(function(e) {
			$(this).closest('.left_filter_div').toggleClass('active')
			//$(this).siblings('.left_filter_content').slideToggle();
		});
	}


	//left_filter block toggling on mobile
	if ($(window).width() < 767) {

		$('.left_filter_block_inner').slideUp();

		$('.left_filter_block p.head').click(function(e) {
			$(this).closest('.left_filter_block').toggleClass('active');
			$('.left_filter_block_inner').slideToggle();
		});

	}
	//--
	//--





	//card images slider mechanics
	$('.card_img_mini_slider ul.slides > li a').click(function(e) {
		e.preventDefault();
		$('.card_img_mini_slider ul.slides > li').removeClass('active');
		$(this).closest('li').addClass('active');

		$('.card_img_big a').attr('href',$(this).attr('href'));
		$('.card_img_big a img').attr('src',$(this).attr('href'));
	});
	//--


	/*
	$('header .header_menu > ul > li.cat_menu').click(function(e) {
		e.preventDefault();
		$(this).toggleClass('active');

		$('.left_menu_wrap').toggleClass('active');

		if ($(this).hasClass('active')) {
			$('header .header_menu > ul > li.cat_menu > a').html('Закрыть каталог');
		} else {
			$('header .header_menu > ul > li.cat_menu > a').html('Каталог продукции');
		}
	});
	 */






	//toggling text height
		var text_toggling_min_height = 108;
		var tech_text_toggling_min_height = text_toggling_min_height;

		$('a.read_more_toggler').each(function() {
			if (isNaN($(this).siblings('.text_toggling_div').data('start-height'))) {tech_text_toggling_min_height = text_toggling_min_height;}
			else {tech_text_toggling_min_height = $(this).siblings('.text_toggling_div').data('start-height');}


			$(this).siblings('.text_toggling_div').data('height',$(this).siblings('.text_toggling_div').height());
			$(this).siblings('.text_toggling_div').css('height',tech_text_toggling_min_height  + "px");
		});

		$('a.read_more_toggler').click(function(e) {
			e.preventDefault();

			if (isNaN($(this).siblings('.text_toggling_div').data('start-height'))) {tech_text_toggling_min_height = text_toggling_min_height;}
			else {tech_text_toggling_min_height = $(this).siblings('.text_toggling_div').data('start-height');}

			$(this).toggleClass('active');
			$(this).siblings('.text_toggling_div').toggleClass('active');

			if ($(this).siblings('.text_toggling_div').hasClass('active')) {
				$(this).siblings('.text_toggling_div').css('height',$(this).siblings('.text_toggling_div').data('height')  + "px");
				$(this).children('span').html('Свернуть весь текст');
			} else {
				$(this).siblings('.text_toggling_div').css('height',tech_text_toggling_min_height  + "px");
				$(this).children('span').html('Развернуть весь текст');
			}
		});
	//--






	//contacts map
	if ($('#map').length) {

				ymaps.ready(init0);

				function init0 () {

			    var map_center01 = parseFloat($('#map').attr('data-map-coords1'));
            	var map_center02 = parseFloat($('#map').attr('data-map-coords2'));

	            var pageMap0 = new ymaps.Map('map',{
	                    center: [map_center01, map_center02],
	                    zoom: 9,
	                    controls:[]
	            });

	            var theMapCluster0 = new ymaps.Clusterer();
	            var imageHref0 = "./assets/templ/img/placemark1.png";

            	$('.map_pin_list button').each(function() {

            		imageHref0 = "./assets/templ/img/placemark1.png";
            		if ($(this).hasClass('active')) {imageHref0 = "./img/placemark_active.png";}

            		var pin_coord01 = parseFloat($(this).attr('data-pin-coords1'));
            		var pin_coord02 = parseFloat($(this).attr('data-pin-coords2'));

	                var placemark01 = new ymaps.Placemark([pin_coord01, pin_coord02],{
	                    hintContent: ""
	                },{
	                    iconLayout:"default#image",
	                    iconImageHref:imageHref0,
	                    iconImageSize:[28,38],
	                    iconImageOffset:[-14,-38]
	                });


	                pageMap0.geoObjects.add(placemark01);

                });


					 pageMap0.controls.add("zoomControl", {
							position: {top: 35, left: 15}
					 });

				}
		}

        
        
        
        if ($('#contacts_map').length) {

				ymaps.ready(init);

				function init () {

			        var map_center1 = parseFloat($('#contacts_map').attr('data-map-coords1'));
            	var map_center2 = parseFloat($('#contacts_map').attr('data-map-coords2'));

	            var pageMap = new ymaps.Map('contacts_map',{
	                    center: [map_center1, map_center2],
	                    zoom: 12,
	                    controls:[]
	            });

	            var theMapCluster = new ymaps.Clusterer();
	            var imageHref = "./assets/templ/img/placemark1.png";

            	$('.map_pin_list button').each(function() {

            		imageHref = "./assets/templ/img/placemark1.png";
            		if ($(this).hasClass('active')) {imageHref = "./img/placemark_active.png";}

            		var pin_coord1 = parseFloat($(this).attr('data-pin-coords1'));
            		var pin_coord2 = parseFloat($(this).attr('data-pin-coords2'));

	                var placemark1 = new ymaps.Placemark([pin_coord1, pin_coord2],{
	                    hintContent: ""
	                },{
	                    iconLayout:"default#image",
	                    iconImageHref:imageHref,
	                    iconImageSize:[28,38],
	                    iconImageOffset:[-14,-38]
	                });


	                pageMap.geoObjects.add(placemark1);

                });


					 pageMap.controls.add("zoomControl", {
							position: {top: 35, left: 15}
					 });

				}
		}

        
        
        
        
	//--




	//window scroll

	var fromTop = 0;

	$(window).scroll(function() {

		fromTop=$(window).scrollTop();

// 		if (fromTop > 150) {$('header').addClass('active');}
// 		if (fromTop < 150) {$('header').removeClass('active');}


		if (fromTop > 1000) {$('a.to_top').addClass('active');}
		if (fromTop < 1000) {$('a.to_top').removeClass('active');}


			//cart block to menu_wrap on scroll
	    if ($(window).width() > 767) {
    	    if (fromTop > 150) {$('.header_top_right #msMiniCart').appendTo('.floating_menu_right_block');}
    		if (fromTop < 150) {$('.floating_menu_right_block #msMiniCart').insertAfter('.header_search_mobile_toggler');}
	    }
	    //--

	});

	//-



	//fancy box video popup
	$('.video_ref').click(function () {
        $.fancybox(
            {
                'type' : 'iframe',
                // hide the related video suggestions and autoplay the video
                'href' : this.href.replace(new RegExp('watch\\?v=', 'i'), 'embed/') + '?rel=0&autoplay=1',
                'overlayShow' : true,
                'centerOnScroll' : true,
                'speedIn' : 100,
                'speedOut' : 50,
                'width' : 640,
                'height' : 480
            }
        );
        return false;
    });
	//--




	//scroll to
		$(".to_top").add('.footer_button').add('.scroll_to_button').add('.button_links a').click(function() {
			$("html, body").animate({
            scrollTop: ($($(this).attr("href")).offset().top) - 0 + "px"
			}, {
				duration: 40
			});
			return false;
		});
	//-



	//range no ui slider
	if ($('#filter_range1').length) {

		var nouislider1 = document.getElementById('filter_range1');

		noUiSlider.create(nouislider1, {
			start: [450, 1250],
			connect: true,
			animate: false,
			range: {
				'min': 0,
				'max': 1600
			}
		});

		nouislider1.noUiSlider.on('update', function ( values, handle ) {
		$($('.range_min')).val(parseInt(nouislider1.noUiSlider.get()[0])+"р.");
		$($('.range_max')).val(parseInt(nouislider1.noUiSlider.get()[1])+"р.");


	});

	}
	
	//the tabs
	$('.the_tabs_item').not('.the_tabs_item.active').slideUp(0);

	$('.the_tabs_head button').click(function(e) {
		$('.the_tabs_item').removeClass('active').slideUp();
		$('.the_tabs_item:nth-child('+(parseInt($(this).index('.the_tabs_head button'))+1)+')').addClass('active').slideDown();

		$('.the_tabs_head button').removeClass('active');
		$(this).addClass('active');
	});
	//-

	//forms
	/*
	$(".frm1").validate({  //проверка форм

	  rules: {

	  		name: {
	   required:true,
	   minlength:2
	   	   },

		    tel: {
	   required:true,
	   minlength:2
	   	   }
	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },

		 submitHandler: function(form) {
		if (($('.the_form_div_accept .ez-checkbox').hasClass('ez-checked'))) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			  $.fancybox({href:"#thanks_popup"});
			 //$('p.thanks_p').addClass('active');

			 //отправка файла на сервер

			$$f({
					formid:'frm11',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});

			return true;

    }
		  else  {
			$(form).find('.the_form_div_accept').find('.ez-checkbox').effect("highlight", {color:"#f00"}, 1000)
		}

  },

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });

*/

	  $(".frm2").validate({  //проверка форм

	  rules: {

	  		name: {
	   required:true,
	   minlength:2
	   	   },

		    tel: {
	   required:true,
	   minlength:2
	   	   }

	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },

		 submitHandler: function(form) {
		if (($('.the_form_div_accept .ez-checkbox').hasClass('ez-checked'))) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			  $.fancybox({href:"#thanks_popup"});
			 //$('p.thanks_p').addClass('active');

			 //отправка файла на сервер
			/*
			$$f({
					formid:'frm22',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});
			*/

		}  else  {
			$(form).find('.the_form_div_accept').find('.ez-checkbox').effect("highlight", {color:"#f00"}, 1000)
		}

  },

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });










	  $(".frm01").validate({  //проверка форм

	  rules: {

	  		 name: {
	   required:true,
	   minlength:2
	   	   },

		    tel: {
	   required:true,
	   minlength:2
	   	   }

	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },
		  /*

		 submitHandler: function(form) {
		//if ($('.the_form_div_accept input[type="checkbox"]').is(':checked')) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			  $.fancybox({href:"#thanks_popup"});

			  $('.popup_rollover_toggler').removeClass('active');
			  $('#callback_popup').removeClass('active');
			 //$('p.thanks_p').addClass('active');

			 //отправка файла на сервер

			$$f({
					formid:'frm011',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});


		//}

  },*/

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });





	  $(".frm02").validate({  //проверка форм

	  rules: {

	  		 name: {
	   required:true,
	   minlength:2
	   	   },




		   phone: {
	   required:true,
	   minlength:2
	   	   }


	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },
  /*
		 submitHandler: function(form) {
		//if ($('.the_form_div_accept input[type="checkbox"]').is(':checked')) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			  $.fancybox({href:"#thanks_popup"});
			 //$('p.thanks_p').addClass('active');

			 //отправка файла на сервер
			$$f({
					formid:'frm022',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});


		//}

  },*/

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });




/*

	 $(".the_cart_frm").validate({  //проверка форм

	  rules: {

	  		 name: {
	   required:true,
	   minlength:2
	   	   },



		   tel: {
	   required:true,
	   minlength:2
	   	   }


	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },

		 submitHandler: function(form) {
		//if ($('.the_form_div_accept input[type="checkbox"]').is(':checked')) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			  //$.fancybox({href:"#thanks_popup"});
			 //$('p.thanks_p').addClass('active');

			 //отправка файла на сервер

			$$f({
					formid:'the_cart_frm1',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});


		//}

  },

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });

*/
/*
	  $(".the_cart_frm1").validate({  //проверка форм

	  rules: {

	  		 name: {
	   required:true,
	   minlength:2
	   	   },



		   tel: {
	   required:true,
	   minlength:2
	   	   }


	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },

		 submitHandler: function(form) {
		//if ($('.the_form_div_accept input[type="checkbox"]').is(':checked')) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			  //$.fancybox({href:"#thanks_popup"});
			 //$('p.thanks_p').addClass('active');

			 //отправка файла на сервер

			$$f({
					formid:'the_cart_frm11',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});


		//}

  },

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });



*/




	  $(".frm_1click").validate({  //проверка форм

	  rules: {

	  		 name: {
	   required:true,
	   minlength:2
	   	   },



		   tel: {
	   required:true,
	   minlength:2
	   	   }


	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },
/*
		 submitHandler: function(form) {
		//if ($('.the_form_div_accept input[type="checkbox"]').is(':checked')) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			 //$.fancybox({href:"#thanks_popup"});
			 //$('p.thanks_p').addClass('active');
			 $('.one_click_form_block').removeClass('active');
			 $('.the_form_thanks').addClass('active');

			 //отправка файла на сервер

			$$f({
					formid:'frm_1click1',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});


		//}

  },*/

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });



	   $(".frm_m_menu1").validate({  //проверка форм

	  rules: {

	   accept: {
	   required:true

	   	   },

	  		 name: {
	   required:true,
	   minlength:2
	   	   },

		   tel: {
	   required:true,
	   minlength:2
	   	   }


	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },

		 submitHandler: function(form) {
		//if ($('.the_form_div_accept input[type="checkbox"]').is(':checked')) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			  //$.fancybox({href:"#thanks_popup"});
			 //$('p.thanks_p').addClass('active');

			$(form).closest('.ul_sub_wrap').addClass('second_sub_open');
        	$(form).closest('.the_form').siblings('.ul_sub_wrap').addClass('open');

			 //отправка файла на сервер
			 /*
			$$f({
					formid:'frm_m_menu11',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});
			*/

		//}

  },

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });



	      $(".frm_order_call").validate({  //проверка форм

	  rules: {

	   accept: {
	   required:true

	   	   },

	  		 name: {
	   required:true,
	   minlength:2
	   	   },

		   phone: {
	   required:true,
	   minlength:2
	   	   }


	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },
  /*
		 submitHandler: function(form) {
		//if ($('.the_form_div_accept input[type="checkbox"]').is(':checked')) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			 $.fancybox({href:"#thanks_popup"});
			 //$('p.thanks_p').addClass('active');

			 //отправка файла на сервер

			$$f({
					formid:'frm_order_call1',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});


		//}
	return true;
  },*/

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });






});


$(document).on('af_complete', function(event, response) {
    var form = response.form;
    if (form.attr('id') == 'frm_order_call1' ) {
        // Скрываем её!
        //form.hide();
        $.fancybox({href:"#thanks_popup"});
    }
    else {
        console.log(response)
    }

    if (form.attr('id') =='frm011') {
    	$(form).closest('.callback_popup').removeClass('active');
        $.fancybox({href:"#thanks_popup"});
    }

    if (form.attr('id') == 'frm022' ) {
        // Скрываем её!
        //form.hide();
        $.fancybox({href:"#thanks_popup"});
    }
    if (form.attr('id') == 'frm_1click1' ) {
    	if(response.success) {
            $('.one_click_form_block').removeClass('active');
            $('.the_form_thanks').addClass('active');
        }
    }


});


// aside-menu
document.addEventListener("DOMContentLoaded", () => {

    let asideMenu = document.querySelector(".aside-menu");
    // let subMenus = document.querySelectorAll(".aside-sub-menu");
    
    
    
    asideMenu.addEventListener("click", function(e) {
        // e.preventDefault();
       
        let linkItem = e.target.closest('li');
        if (!linkItem) return;
        
        let childrens = linkItem.childNodes;
        let elemsItem = Array.prototype.slice.call(childrens);
        
        let stateSubMenu = elemsItem.filter(i => i.className=="aside-sub-menu").length;
        let stateBtnClose = elemsItem.filter(i => i.className=="btn-back").length;
        
        if(stateSubMenu) {
            e.preventDefault();
             
            let list = linkItem.parentNode;
            let subMenu = linkItem.querySelector(".aside-sub-menu");
            
            subMenu.classList.add("show");
            list.classList.add("hidden");
            
            return;
        }
        if(stateBtnClose) {
            e.preventDefault();
             
            let list = linkItem.parentNode;
            let hiddenList = findAncestor(list, "hidden");
            
            list.classList.remove("show");
            hiddenList.classList.remove("hidden");
            
            return;
        }
    });
    
    
     function findAncestor (el, cls) {
        while ((el = el.parentElement) && !el.classList.contains(cls));
        return el;
    }
    
    
    
    
    
    

    // asideMenu.addEventListener("click", function(e) {
    //     e.preventDefault();
        
    //     let link = e.target.closest('a');
    //     if (!link) return;
        
    //     let itemList = link.parentNode;
    //     let subMenu = itemList.querySelector(".aside-sub-menu");
        
    //     subMenu.classList.add("show");
    //     this.classList.add("hidden");
    // });
    
    // for (let i = 0; i < subMenus.length; i++) {
    //     subMenus[i].addEventListener("click", function(e) {
    //         let btnHideSubMenu = document.querySelector(".go_back_li a");
    //         if(e.target && e.target.className === "btn-back") {
    //             let asideMenu = document.querySelector(".aside-menu");
                
    //             this.classList.remove("show");
    //             asideMenu.classList.remove("hidden");
    //         }
            
    //         if(e.target.tagName === "a" && this.classList.contains("show")) {
    //             let itemList = link.parentNode;
    //             let subMenu = itemList.querySelector(".aside-sub-menu");
                
    //             itemList.classList.add("hidden");
    //             subMenu.classList.add("show");
    //         }
    //     });
    // }

    // subMenu.addEventListener("click", function(e) {
    //     let btnHideSubMenu = document.querySelector(".go_back_li a");
    //     if(e.target && e.target.className === "btn-back") {
    //         let asideMenu = document.querySelector(".aside-menu");
            
    //         this.classList.remove("show");
    //         asideMenu.classList.remove("hidden");
    //     }
    // });
    
    
    
    let btnDesktopMenu = document.querySelector('.header-menu button');
    let btnMobMenu = document.querySelector('.mobile_menu_toggler');
    let btnCloseMenu = document.querySelector('.btn-close-menu');
    
    function openMenu(el) {
    	$(el).click(function(e) {
    		e.preventDefault();
    		$('.roll_over_menu').addClass('active');
    		$('body').addClass('mobile_menu_is_open');
    	});
    }

    $(btnCloseMenu).click(function(e) {
    	e.preventDefault();
    	$('.roll_over_menu').removeClass('active');
    	$('body').removeClass('mobile_menu_is_open');
    });
    
// 	$(btnMobMenu).click(function(e) {
// 		e.preventDefault();
// 		debugger
// 		let open = $('body').hasClass('mobile_menu_is_open');
// 		if(!open) {
// 		   $('body').addClass('mobile_menu_is_open');
// 		   $('.roll_over_menu').addClass('active');
// 		} 
// // 		else {
// //     		$('.roll_over_menu').addClass('active');
// //     		$('body').addClass('mobile_menu_is_open');
// // 		}
// 	});
    

    openMenu(btnDesktopMenu);
    //  openMenu(btnMobMenu);
});

$(document).mouseup(function (e) {
    let open = $("body").hasClass('mobile_menu_is_open');
    let btnBurger = $(".mobile_menu_toggler");
    // debugger
    
    if(!open && e.target.classList.contains("mobile_menu_toggler")) {
        $('body').addClass('mobile_menu_is_open');
	   $('.roll_over_menu').addClass('active');
    }
    if(open) {
        let container = $(".mobile_menu");
        // let btnBurger = $(".mobile_menu_toggler");
        let body = $("body");
        if (container.has(e.target).length === 0 ) {
          container.removeClass('active');
          body.removeClass('mobile_menu_is_open');
          $('.aside-sub-menu.show').removeClass('show');
        }
    }
});
$(document).ready(function ($) {
// =====================================================
//    Кнопка на вверх
// =====================================================

$(window).scroll(function () {
	if ($(this).scrollTop() > $(this).height()) {
		$(".on-up").addClass("active");
	} else {
		$(".on-up").removeClass("active");
	}
});

$(".on-up.top").click(function () {
	$("html, body").stop().animate({scrollTop: 0}, "slow", "swing");
});

// =====================================================
//    Social buttons
// =====================================================

var share = document.querySelector('.share-button');
var isOpened = false;
document.querySelector('.open_share').addEventListener('click', function(){
	if(!isOpened){
		share.classList.add('open');
		isOpened = true;
	}
	else{
		share.classList.remove('open');
		isOpened = false;
	}
});

var is_safari = /^((?!chrome|android).)*safari/i.test(navigator.userAgent);

if (is_safari) {
	$('feGaussianBlur').attr('stdDeviation', 0);
}
});