$(document).ready(function(){
  
  $(window).scroll(function(){
    var scroH=$(document).scrollTop();
    if(scroH>680){
      $(".istop").css("background-color","rgba(70, 142, 255, 0.5)");
    }else{
      $(".istop").css("background-color","");
    }
  })
 
$(".menu").click(function () { 
  
    if($(".istop_breadcrumb").css("display")=="block"){
      $(".istop_breadcrumb").css("display","none");
    }else{
      $(".istop_breadcrumb").css("display","block");
      $(".istop_breadcrumb").addClass("animated rotateInDownRight");
    }
  })
  $(".sidebar_top").click(function () { 
  
    if($(".msg").css("display")=="block"){
      $(".msg").css("display","none");
    }else{
      $(".msg").css("display","block");
    }
  })
  $(".sidebar_footer").click(function () { 
    $("body,html").animate({scrollTop:0},1000)
  })
  $(document).bind("click", function (e) {
    if($(e.target).closest(".sidebar_top").length>0){
     
  }else{
    $(".msg").hide();
  }
  }); 

});



