var CLASSES = [
  "toy-store-blue",
  "blushing-salmon",
  "golden"
]

Reveal.addEventListener("ready", function( event ) {
  jQuery("section em").each(function(idx){
    $(this).addClass(CLASSES[idx % CLASSES.length]).addClass("not-really-em");
  });
});
