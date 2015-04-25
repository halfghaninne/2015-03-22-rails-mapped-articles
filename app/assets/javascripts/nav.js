window.addEventListener("load", function(){
  
  if (document.getElementById("mobile_nav_show_menu")) {
    document.getElementById("mobile_nav_show_menu").addEventListener("click", function(){
      var mobileNav = document.getElementById("mobile_show_menu");
      
      if (mobileNav.style.display == "none") { 
        mobileNav.style.display = "block";
      } else {
        mobileNav.style.display = "none";
      }
      
      mobileNav.classList.toggle("mobile_menu_is_shown");
      mobileNav.classList.toggle("is-mobile-nav-shown");
      
    });
  }
});

window.addEventListener("load", function(){
  if (document.getElementById("mobile_nav_menu")) {
    document.getElementById("mobile_nav_menu").addEventListener("click", function(){
      var mobileMainNav = document.getElementById("mobile_main_menu");
      
      if (mobileMainNav.style.display == "none") {
        mobileMainNav.style.display = "block";
      } else {
        mobileMainNav.style.display = "none";
      }
      
      mobileMainNav.classList.toggle("mobile_menu_is_shown");
      mobileMainNav.classList.toggle("is-mobile-nav-shown")
    });
  }
});