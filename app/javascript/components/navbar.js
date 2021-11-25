console.log("navbar.js loaded")

// grab everything we need
const humbrugerBtn = document.querySelector("button.mobile-menu-button");
const mobileMenu = document.querySelector(".mobile-menu");

// add event listeners
humbrugerBtn.addEventListener("click", () => {
  mobileMenu.classList.toggle("hidden");
});

export { humbrugerBtn };
