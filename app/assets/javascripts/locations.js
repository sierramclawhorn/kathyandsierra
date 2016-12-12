$(document).ready(function() {
    $("a").mouseenter(function() {
        $(this).find("line").attr("stroke", "maroon");
     });
    $("a").mouseleave(function() {
        $(this).find("line").attr("stroke", "#fff");
     });
});