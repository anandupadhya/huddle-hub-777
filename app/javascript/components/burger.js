const burgerMenu = document.querySelector('.menu-btn');
let menuOpen = false;
burgerMenu.addEventListener('click', () => {
  if(!menuOpen) {
    burgerMenu.classList.add('open');
    menuOpen = true;
  } else {
    burgerMenu.classList.remove('open');
    menuOpen = false;
  }
});


export { burgerMenu };
