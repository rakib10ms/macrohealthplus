$(document).ready(function(){
    // check admin current password is match or not
    $('#current_password').keyup(function(){
        var current_password = $('#current_password').val();
        $.ajax({
            type:'post',
            url:'/admin/admin_update_password',
            data:{current_password:current_password},
            success:function(resp){
                // alert(resp);
                if (resp=="false") {
                    $("#chkcurrent_password").html("<font color=red>Current password is incorrect!</font>")
                }else if (resp=="true") {
                    $("#chkcurrent_password").html("<font color=green>Current password is correct!")
                }
            },error:function(){
                alert("Error");
            }
        });
    });
});