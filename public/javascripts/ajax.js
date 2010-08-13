$(document).ready(function(){

  $("#main a").click(function(){	
    var largePath = $(this).attr("href");
    $(".content").attr({ src: largePath });
    return false;
  });

});
