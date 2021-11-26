console.log("navbar.js loaded")

const navbar = () => {
  // grab everything we need
  const hambrugerBtn = document.querySelector("button.mobile-menu-button");
  // const mobileMenu = document.querySelector(".mobile-menu");

  // add event listeners
  hambrugerBtn.addEventListener("click", () => {
    const mobileMenu = document.querySelector(".mobile-menu");
    mobileMenu.classList.toggle("hidden");
  });
}

export { navbar };
