// INDEX

document.addEventListener("turbolinks:load", function() {
  $("a").mouseenter(function() {
    $(this).find(".skyline").attr("stroke", "teal");
  });
  $("a").mouseleave(function() {
    $(this).find(".skyline").attr("stroke", "#fff");
  });
});

// SHOW

document.addEventListener("turbolinks:load", function() {
	$('.postWrap').on('click', function(){
    $(this).next('.postText').slideToggle("slow");
  });
});


