/*
$(document).ready(function () {
    $('.closefirstmodal').click(function () {
        $('#Warning').modal('show');
    });

   $('.confirmclosed').click(function () {
        $('#Warning').modal('hide');
        $('#Modal').modal('hide');
    });
});
*/
$(function () {
    $(document).on('click',".save_submit",function(e) {
        var form_id = $("#form_id").val();
        $('input[name=is_btn_save]').val(1);
        var is_btn_save = $('input[name=is_btn_save]').val();
        //console.log(is_btn_save);
        $.post($("#"+form_id).attr("action"), $("#"+form_id).serialize(), function( data ) {
            if(data == 1){
                location.reload();
            }
            $("#Modal").modal("show");
            $("#Modal").find("#modalContent").html(data);
        });
    });
    $(document).on('click',".openModal",function(e) {
        var csrf_token = $('input[name=csrfmiddlewaretoken]').val();
        $.post($(this).attr("data-link"), {'csrfmiddlewaretoken': csrf_token } ,function( data ) {
            $("#Modal").modal("show");
            $("#Modal").find("#modalContent").html(data);
        });
    });

    $(document).on('click',".Delete",function(e) {
        if (confirm("Вы хотите удалить?")) {
            var csrf_token = $('input[name=csrfmiddlewaretoken]').val();
            $.post($(this).attr("data-link"), {'csrfmiddlewaretoken': csrf_token } ,function( data ) {
                location.reload();
            });
        }
    });
});