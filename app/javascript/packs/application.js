require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import Typed from 'typed.js'

// typed script for the welcome text on home page
if (document.getElementById("welcome-text") != null) {
  var typed = new Typed('#welcome-text', {
    strings: ["Manage your subscriptions with ease!", "Stop wasting money, sign up to Subscripto!"],
    typeSpeed: 20,
    fadeOut: true,
    loop: true,
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
          labels: [ 'Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
          datasets: [{
              label: 'Subscription Cost (per month)',
              fill: false,
              data: [78, 68, 85, 85, 85, 76, 86, 86, 89, 89, 78, 59.93],
              borderColor: 'rgba(95, 132, 185, 1)',
              pointBorderColor: 'rgba(95, 132, 185, 1)',
              backgroundColor: 'rgba(95, 132, 185, 1)',
              borderWidth: 2
          }]
      },
      options: {
          responsive: true,
          maintainAspectRatio: false,
          scales: {
              xAxes: [{
                gridLines: {
                    display: false,
                  },
                  ticks: {
                      beginAtZero: true,
                  }
              }]
          }
      }
  });

}
