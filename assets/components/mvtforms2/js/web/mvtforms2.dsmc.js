$(document).ready(function ($) {
    $('.mvtForm2 [type="submit"], .mvtForm2 .the_form_item_submit button').click(function() {
        $(this).closest('form').addClass('circle-loader-active');
        $(this).closest('form').find('.circle-loader').addClass('active');
    });

    mvtForms2.callbacks.success = function(response) {
        $("body").overhang({
        type: "success",
        message: response.data.answer
        });

        yaCounter56381620.reachGoal(response.form);

        if(response.form == 'oneclick') {
            $('.the_form.the_form_thanks').addClass('active');
            $('.the_form.one_click_form_block').removeClass('active');
        }

        $('#' + response.form + '_form').addClass('form_success');
        $('#' + response.form + '_form').removeClass('circle-loader-active');
        $('#' + response.form + '_form').find('.circle-loader').removeClass('active');

        $('#' + response.form + '_form').reset();

    };

    mvtForms2.callbacks.error = function(response) {
        $("body").overhang({
        type: "error",
        message: response.data.message
        });
        console.log(response);
 
        $('#' + response.form + '_form').addClass('form_error');
        $('#' + response.form + '_form').removeClass('circle-loader-active');
        $('#' + response.form + '_form').find('.circle-loader').removeClass('active');

    };
});
