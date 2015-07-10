
$(document).ready(function() {
  return $("#new_comment").on("ajax:success", function(e, data, status, xhr) {
    return $("#new_comment");
  }).on("ajax:error", function(e, xhr, status, error) {
    return $("#new_comment").append("<p>ERROR</p>");
  });
});
