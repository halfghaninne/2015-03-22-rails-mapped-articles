window.addEventListener("load", function(){
  
  if (document.getElementById("mobile_nav_show_menu")) {
    document.getElementById("mobile_nav_show_menu").addEventListener("click", function(){
      var mobileNav = document.getElementById("mobile_show_menu");
      var pageContainer = document.getElementById("page_container");
      
      mobileNav.classList.toggle("mobile_show_menu_is_shown");
      mobileNav.classList.toggle("is-mobile-nav-shown");
      
      pageContainer.classList.toggle("is-mobile-nav-shown");
      
      
      // if (document.getElementById("mobile_show_menu").style.display == "none") {
//         document.getElementById("mobile_show_menu").style.display = "block";
//       } else {
//         document.getElementById("mobile_show_menu").style.display = "none";
//       }
    });
  }
  
  
});