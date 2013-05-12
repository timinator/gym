$(document).on("click", '.foo', function(event) {
  $("#user_list div").removeClass("workout-user-clicked");
  $(this).addClass("workout-user-clicked");
});