function myFunction() {
    //menu up to 400px
  if (document.body.scrollTop > 700|| document.documentElement.scrollTop > 700) {
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