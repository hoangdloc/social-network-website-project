$(document).ready(function () {
  //Button for profile post
  $("#submit_profile_post").click(function () {
    $.ajax({
      type: "POST",
      url: "includes/handlers/ajax_submit_profile_post.php",
      data: $("form.profile_post").serialize(),
      success: function (msg) {
        $("#post_form").modal("hide");
        location.reload();
      },
      error: function () {
        alert("Failure");
      },
    });
  });
});
