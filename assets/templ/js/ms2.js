$(document).ready(function() {

  $('.qty_div').on('click', '.input_count_action', function(e) {

    var $input = $(this).closest("div").find('input');
    var count = parseInt($input.val());

    if ($(this).hasClass("plus")) {
      count = count + 1;
    } else if ($(this).hasClass("minus")) {
      count = count - 1;
    }

    $input.val(count);
    $input.change();

    return false;
  });

  $('div.count').click(function(e) {
    var v = $(this).parent().find('input#product_price').val(),
      k = $(this).parent().find('input[name="key"]').val();

    if (($(this).hasClass('minus') || $(this).hasClass('plus')) && v > 0) {

      $.post("", {
        ms2_action: 'cart/change',
        key: k,
        count: v
      }, function(response) {

        if (typeof response.success !== "undefined") {

          if (response.success) {
            miniShop2.Order.getcost();
            miniShop2.Cart.status(response.data);
          }
        }
      }, "json");

    }
  });

	miniShop2.Callbacks.Cart.change.before = function() {
		var $field = $(miniShop2.sendData.$form[0]).find(miniShop2.Cart.countInput);
		var count = +$field.val();
		if (count < 1) {
			$field.val('1');
			miniShop2.Message.error('Ошибка! Нельзя ставить кол-во меньше 1!');
			return false;
		}
		return true;
	}

  $(document).on('click', '#deliveries', function(){
            var i = $('#deliveries input:checked').val();
            if(i == 1){
                $('#address_deliveries').hide();
            }else{
                $('#address_deliveries').show();
            }
        });

});
