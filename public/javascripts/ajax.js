$(document).ready(function(){
  
  // sets #images height & width
  var a = [];
  var b = [];

  $('#images img').each(function(){
      var height = $(this).height();
      var width = $(this).width();
      a.push(height);
      b.push(width)
  });

  $('#images').css({ 
    height: function(index, value) {
      return Math.max.apply(null, a) + 'px';
    },
    width: function(index, value) {
      return Math.max.apply(null, b) + 'px';
    }
  });

  $('#images img:first').addClass('current');
  $('#images img:not(:first)').css({ opacity: 0.0 });
  
  // thumbnail clicking 
  $('.thumb').click(function(){
    clearInterval(rotate);	
    var largePath = $(this).attr('href');
    $('#images img:not(:first)').remove();
    $('#images img').attr({ src: largePath }).removeAttr('style').fadeIn('slow');
    var imgH = $('#images img').height();
    var imgW = $('#images img').width();
    $('#images').css({ 
      height: function(index, value) {
        return imgH + 'px';
      },
      width: function(index, value) {
        return imgW + 'px';
      }
    });
    //$('#images').stop();
    //$('#images').fadeIn('slow');
    return false;
  });
});  


// creates image rotator
var rotate = setInterval('rotateImages()', 2500);

function rotateImages() {
  
  var oCurPhoto = $('#images img.current');
  var oNxtPhoto = oCurPhoto.next();
  if (oNxtPhoto.length == 0)
      oNxtPhoto = $('#images img:first');

  oCurPhoto.removeClass('current').addClass('previous');
  oNxtPhoto.css({ opacity: 0.0 }).addClass('current').animate({ opacity: 1.0 }, 800);
  oCurPhoto.removeClass('previous').animate({ opacity: 0.0 }, 800);
}

 

 
