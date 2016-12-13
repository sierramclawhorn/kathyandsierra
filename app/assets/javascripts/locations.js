// INDEX

document.addEventListener("turbolinks:load", function() {
  $("a").mouseenter(function() {
    $(this).find("line").attr("stroke", "maroon");
  });
  $("a").mouseleave(function() {
    $(this).find("line").attr("stroke", "#fff");
  });
});

// SHOW

document.addEventListener("turbolinks:load", function() {
  $(".posts").on("click", function() {
    $(".postText").toggle();
  });
});