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
  
     
    
  if ($('#images img').length > 1)
    {
      thumbClick("clearInterval(rotate);", "$('#images img:not(:first)').remove();");
    }
  else
    {
      clearInterval(rotate);
      thumbClick();
    }
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

// thumbnail clicking 
function thumbClick(stop, isFirst) {
  
  $('.thumb').click(function(){
    arguments[0];    
     // stop rotation
    arguments[1];
    var largePath = $(this).attr('href');    
    // sets thumbnail picture into #images
    $('#images img').attr({ src: largePath }).removeAttr('style').css({ opacity: 0.0}).load(function() {
      var imgH = $('#images img').height();
      var imgW = $('#images img').width();          
      //#images position
      $('#images').css({ 
        height: function(index, value) {
          return imgH + 'px';
        },
        width: function(index, value) {
          return imgW + 'px';
        },
        left: function(){
          return (imgH > imgW) ? '0px' : '-100px'
        }        
      }); 
    }).animate({ opacity: 1.0}, 1000);
    return false;
  });
}

 

 
