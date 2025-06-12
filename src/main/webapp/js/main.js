(function($){
    // Initialize Owl Carousel for home page slider
    var homeSlider = $('.home_page_slider');
    homeSlider.owlCarousel({
        items: 1,
        loop: true,
        dots: false,
        nav: true,
        autoplay: true
    });

    // Add new row to table for destination
    $('#btn_add_new_item').on('click', function(e){
        $("#table_des_list").append($("#data_list_item").html());
    });

    // Remove destination row on clicking
    $("body").on('click', '.rv_destination', function(e){
        $(this).closest('tr').remove();
    });

    // Search ticket request
    $(".rs_search_ticket").on("click", function(e){
        e.preventDefault();
        var date = $(this).attr("data-date");
        var destination = $(this).attr("data-destination");
        var totalSeat = $(this).closest('tr').find('.total_seat_select').val();

        if (!date || !destination || !totalSeat) {
            alert("Please make sure all fields are filled out.");
            return;
        }

        $("#rs_ticket_result").html("<div class='loading'></div>");
        var url = $('.ticket_selecting_form').attr('action');
        var data = {
            actionType: "search",
            date: date,
            totalSeat: totalSeat,
            destination: destination,
        };

        $.post(url, data, function(res) {
            var response = res;
            setTimeout(function() {
                $("#rs_ticket_result").html(response);
            }, 500);
        }).fail(function() {
            $("#rs_ticket_result").html("<div class='error'>Error occurred while processing your request. Please try again.</div>");
        });
    });

    // Confirm ticket request
   $("body").on('click', '.btn_confirm_ticket', function(event) {
    event.preventDefault();
    
    // Get the form element
    var form = $('<form method="get" action="<%= request.getRequestURI() %>"></form>');
    
    // Append the hidden fields
    form.append('<input type="hidden" name="actionType" value="ticketConfirm">');
    form.append('<input type="hidden" name="date" value="' + $(this).attr("data-date") + '">');
    form.append('<input type="hidden" name="totalSeat" value="' + $(this).attr("data-seat") + '">');
    form.append('<input type="hidden" name="destination" value="' + $(this).attr("data-destination") + '">');
    
    // Append the form to the body and submit
    $('body').append(form);
    form.submit();
});


})(jQuery);
