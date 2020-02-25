$(document).ready(function ($) {
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

        $('#' + response.form + '_form').reset();

    };

    mvtForms2.callbacks.error = function(response) {
        $("body").overhang({
        type: "error",
        message: response.data.message
        });
        console.log(response);
    };
});
