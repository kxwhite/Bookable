const initNavbarActive = () => {
  // Get the container element
  const navbarTabs = document.querySelector('.navbar-nav-tabs');
  // Get all items with class="nav-link"
  const navLinks = navbarTabs.querySelectorAll('.nav-link');
  // Loop through the links and add the active class to the current/clicked link
  for (let i = 0; i < navLinks.length; i++) {
    navLinks[i].addEventListener("click", function () {
      console.log("Hello");
      let current = document.querySelector('.active');
      console.log(`original: ${document.querySelector('.active')}`);
      // If there's no active class
      if (current) {
        current.classList.remove("active");
        console.log(`should have changed: ${document.querySelector('.active')}`);
      }

      // Add the active class to the current/clicked item
      this.classList.add("active");
      console.log(this)
    });
  };
};

export { initNavbarActive };
