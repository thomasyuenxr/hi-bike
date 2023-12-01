var menu = document.getElementById("hamburger_menu");
      var nav = document.getElementById("nav");
      menu.onclick = function () {
        nav.classList.toggle("show");
      };