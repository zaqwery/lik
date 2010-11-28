$(document).ready(function(){
  
  // sets #images height & width
  window.onload = function (){
    var a = [];
    var b = [];

    $('#images img').each(function(){
        var height = $(this).height();
        var width = $(this).width();
        a.push(height);
        b.push(width);
    });

    $('#images').css({ 
      height: Math.max.apply(null, a) + 'px'
      ,
      width: Math.max.apply(null, b) + 'px'   
    });    
  }

  $('#images img:first').addClass('current');
  $('#images img:not(:first)').css({ opacity: 0.0 });
 
  ($('#images img').length == 1) ? stopInterval() : null
  $('.thumb').click(function(event){
    ($('#images img').length > 1) ? stopInterval()+isFirst() : null
    var largePath = $(this).attr('href');    
    // sets thumbnail picture into #images
    $('#images img').css({ opacity: 0.0}).attr({ src: largePath }).load(function() {
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
    }).animate({ opacity: 1.0}, 400);
    event.preventDefault();
  });
});  


// creates image rotator
var rotate = setInterval('rotateImages()', 2500);

function imagesDiv(){
  
}

function rotateImages() {
  
  var oCurPhoto = $('#images img.current');
  var oNxtPhoto = oCurPhoto.next();
  if (oNxtPhoto.length == 0)
      oNxtPhoto = $('#images img:first');

  oCurPhoto.removeClass('current').addClass('previous');
  oNxtPhoto.css({ opacity: 0.0 }).addClass('current').animate({ opacity: 1.0 }, 800);
  oCurPhoto.removeClass('previous').animate({ opacity: 0.0 }, 800);
}

var stopInterval = function() {clearInterval(rotate);}
var isFirst = function() {$('#images img:not(:first)').remove();}

// thumbnail clicking 



 

 
