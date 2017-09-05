$(document).on('turbolinks:load', function() {

  $("#btn_user_view").click(function() {
    $("#user_view").css("display","block");
    $("#admin_view").css("display","none");
  });

  $("#btn_admin_view").click(function() {
    $("#user_view").css("display","none");
    $("#admin_view").css("display","block");
  });
});