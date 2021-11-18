$(document).ready(function () {
  //On click signup, hide login and show registration form
  $("#signup").click(function () {
    $("#first").slideUp("fast", function () {
      $("#second").slideDown("fast");
    });
  });

  //On click signup, hide registration and show login form
  $("#signin").click(function () {
    $("#second").slideUp("fast", function () {
      $("#first").slideDown("fast");
    });
  });
});
