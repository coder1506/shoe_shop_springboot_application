$(document).ready(function(){
	var amout = 1;
	$('.current-amount').text(amout);
	 $('.plus').click(function(){
	 	amout++;
	 	$('.current-amount').text(amout);
	 })
	 $('.minus').click(function(){
	 	if(amout == 1) return;
	 	amout--;
	 	$('.current-amount').text(amout);
	 })
	 var check  = 0;
	 $("#sidebarToggle").click(function(){
         if(check == 0) {
         	$("#sidenavAccordion").slideToggle("slow",function(){
         		$('body').addClass('sb-sidenav-toggled');
         	});
         	check = 1;
         }
         else {
         	$('body').removeClass('sb-sidenav-toggled');
         	$("#sidenavAccordion").slideToggle("slow");
         	check = 0;
         }
    });
     // responsive menu
      $(".responsive-menu>button").click(function(){
        $('.content-rp-menu').attr('style','animation:moveRightToLeft 1s forwards;display:block !important;position:fixed !important');
        setTimeout(function(){
            $('.rp-menu-exit').attr('style','display:block !important');
        });
      });
      $(".rp-menu-exit").click(function(){
        $('.content-rp-menu').attr('style','animation:moveLeftToRight 1s forwards !important;display:none !important;');
        $('.rp-menu-exit').removeAttr('style');
      })
      $('.content-rp-menu .sp-icon').click(function(){
         $('.content-rp-menu .sub-menu-sp').slideToggle("slow");
      });
      $('.content-rp-menu .lc-icon').click(function(){
         $('.content-rp-menu .sub-menu-lc').slideToggle("slow");
      });
       $('.responsive-footer .sp-icon').click(function(){
         $('.responsive-footer .sub-menu-sp').slideToggle("slow");
      });
      $('.responsive-footer .lc-icon').click(function(){
         $('.responsive-footer .sub-menu-lc').slideToggle("slow");
      });
      $('.responsive-footer .m1').click(function(){
         $('.responsive-footer .sub-m1').slideToggle("slow");
      });
      $('.responsive-footer .m2').click(function(){
         $('.responsive-footer .sub-m2').slideToggle("slow");
      });
      // responsive menu
     // messege
     var checkmg = true;
     $('.message-text').attr('style','display:block;');
     setTimeout(function(){
        $('.message-text').removeAttr('style');
        checkmg = false;
    },3000)
     $('.message-box').on('click',function(){
        checkmg = true;
     })
     $('.message').click(function(){
        if(checkmg == true) {
            $('.message-text').attr('style','display:none;');
            checkmg = false;
            return;
        }
        else
        $('.message-box').fadeToggle(200);
     })
})
function myFunction() {
    //menu up to 500px
  if (document.body.scrollTop > 500 || document.documentElement.scrollTop > 500) {
    $('.header').attr('style','position: fixed;width: 100%;height:80px;transition: 0.3s;top:-8px;border:0;background-color: rgba(255,255,255,1);z-index:10;box-shadow:2px 2px #eeeeee;');
    $('.search').attr('style','display:none');
    $('.header-content').attr('style','width:100%;padding-top:0');
    $('.header-menu').attr('style','display:none;');
    $('.menu-upto500').attr('style','display:block;padding-top:0;width:53%');
    $('.color-hover').attr('style','color:black');
    $('.logo').attr('style','width: 32%;padding-left:3%;text-align:left');
    // $('.header-dam').attr('style','position: fixed;width: 100%;transition: 0.3s;top:-8px;border:0;background-color: rgba(255,255,255,0.2);');
    // $('.search>input::placeholder').attr('style','color: #292929');
    $('.small-circle-cart').attr('style','background-color:#292929;color:white'); 
    $('.account-cart').attr('style','padding-top:15px'); 

 }
 else{
 	$('.header').removeAttr('style');
    $('.search').removeAttr('style');
    $('.header-content').removeAttr('style');
    $('.header-menu').removeAttr('style');
    $('.menu-upto500').removeAttr('style');
    $('.color-hover').removeAttr('style');
    $('.small-circle-cart').removeAttr('style');
    $('.logo').removeAttr('style');
    $('.account-cart').removeAttr('style');
 	// $('.header-dam').removeAttr('style');
 	//  $('.search>input::placeholder').removeAttr('style');
 }
}
window.onscroll = function() {myFunction()};