require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import Typed from 'typed.js'

//start of js code for signup page
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

if (signUpButton) {
  signUpButton.addEventListener('click', () => {
    container.classList.add("right-panel-active");
  });
}

if (signInButton) {
  signInButton.addEventListener('click', () => {
    container.classList.remove("right-panel-active");
  });
}
//end of js code for signup page


//start of js code for navbar on homepage
let underlineMenuItems = document.querySelectorAll(".underline-menu li");
console.log(underlineMenuItems)
// underlineMenuItems[0].classList.add("active");
underlineMenuItems.forEach(item => {
  item.addEventListener("click", () => {
    underlineMenuItems.forEach(item => item.classList.remove("active"));
    item.classList.add("active");
  });
});
//end of js code for navbar on homepage

//typed script for the welcome text on home page

var typed = new Typed('#welcome-text', {
  strings: ["Manage your subscriptions with ease!", "Stop wasting money, sign up to Subscripto!", "Did you know: 13% of Americans currently spend over 300 dollars on subscriptions per year!"],
  typeSpeed: 20,
  fadeOut: true,
  loop: true,
  shuffle: true,
  showCursor: false,
});


