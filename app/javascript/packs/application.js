require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import Typed from 'typed.js'

// typed script for the welcome text on home page
if (document.getElementById("welcome-text") != null) {
  var typed = new Typed('#welcome-text', {
    strings: ["Manage your subscriptions with ease!", "Stop wasting money, sign up to Subscripto!", "Did you know: 13% of Americans currently spend over 300 dollars on subscriptions per year!"],
    typeSpeed: 20,
    fadeOut: true,
    loop: true,
    shuffle: true,
    showCursor: false,
  });
};


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

if (underlineMenuItems.length > 0) {
  // underlineMenuItems[0].classList.add("active");
  underlineMenuItems.forEach(item => {
    item.addEventListener("click", () => {
      underlineMenuItems.forEach(item => item.classList.remove("active"));
      item.classList.add("active");
    });
  });
}
//end of js code for navbar on homepage

import Chart from 'chart.js';

const chart = document.getElementById('myChart')

if (chart) {
  let ctx = chart.getContext('2d');
  ctx.height = 420;
  let myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: [ 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb'],
          datasets: [{
              label: 'Subscription Cost (per month)',
              data: [78, 68, 85, 85, 85, 76, 86, 86, 89, 89, 78, 95, 110],
              backgroundColor: [
                  'rgba(255, 99, 132, 0.2)',
                  'rgba(54, 162, 235, 0.2)',
                  'rgba(255, 206, 86, 0.2)',
                  'rgba(75, 192, 192, 0.2)',
                  'rgba(153, 102, 255, 0.2)',
                  'rgba(255, 159, 64, 0.2)'
              ],
              borderColor: [
                  'rgba(255, 99, 132, 1)',
                  'rgba(54, 162, 235, 1)',
                  'rgba(255, 206, 86, 1)',
                  'rgba(75, 192, 192, 1)',
                  'rgba(153, 102, 255, 1)',
                  'rgba(255, 159, 64, 1)'
              ],
              borderWidth: 1
          }]
      },
      options: {
          responsive: true,
          maintainAspectRatio: false,
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero: true,
                  }
              }]
          }
      }
  });

}




// typed script for the welcome text on home page
if (document.getElementById('welcome-text') != null) {
  var typed = new Typed('#welcome-text', {
    strings: ["Manage your subscriptions with ease!", "Stop wasting money, sign up to Subscripto!", "Did you know: 13% of Americans currently spend over 300 dollars on subscriptions per year!"],
    typeSpeed: 20,
    fadeOut: true,
    loop: true,
    shuffle: true,
    showCursor: false,
  });
}