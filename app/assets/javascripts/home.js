$(document).on("click", '.foo', function(event) {
  $("#user_list div").removeClass("workout-user-clicked");
  $(this).addClass("workout-user-clicked");
  userid = $(this).attr('data-userid');
  $('#workout_invitee').val(userid);
});

$(document).on("change", '#start_time', function(event) {
  date = $("#hidden_date").val();
  $('#date').val(date);
});