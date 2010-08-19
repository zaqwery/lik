$(document).ready(function(){

  $('#images').cycle();

  $(".thumb").click(function(){	
    var largePath = $(this).attr("href");
    $('.content:not(:first)').remove();
    $(".content").attr({ src: largePath }).removeAttr('style');
    $('#images').cycle('destroy');
    $('#images').fadeIn('slow');
    return false;
  });
  

});
