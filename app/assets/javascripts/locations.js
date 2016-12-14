// INDEX

document.addEventListener("turbolinks:load", function() {
  $("a").mouseenter(function() {
    $(this).find(".skyline").attr("stroke", "maroon");
  });
  $("a").mouseleave(function() {
    $(this).find(".skyline").attr("stroke", "#fff");
  });
});

// SHOW

document.addEventListener("turbolinks:load", function() {
  $(".posts").on("click", function() {
    $(".postText").toggle();
  });
});