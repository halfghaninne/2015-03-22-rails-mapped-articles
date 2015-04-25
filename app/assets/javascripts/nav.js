window.addEventListener("load", function(){
  
  if (document.getElementById("mobile_nav_show_menu")) {
    document.getElementById("mobile_nav_show_menu").addEventListener("click", function(){
      var mobileNav = document.getElementById("mobile_show_menu");
      
      if (mobileNav.style.display == "none") { 
        mobileNav.style.display = "block";
      } else {
        mobileNav.style.display = "none";
      }
      
      mobileNav.classList.toggle("mobile_show_menu_is_shown");
      mobileNav.classList.toggle("is-mobile-nav-shown");
      
    });
  }
  
  
});