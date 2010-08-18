$(document).ready(function(){

  var cycleWin = $(function() {
          $('#images').cycle();
      });

  $(cycleWin).bind();
  $(cycleWin).unbind();

  $(".thumb").click(function(){	
    var largePath = $(this).attr("href");
    
    $(".content").attr({ src: largePath });
    return false;
  });

});
