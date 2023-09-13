const user_name = JSON.parse(localStorage.getItem("login"));

const before_login = `
<div class="wrapper">
          <h1 class="logo">WELLNESS<span>DIET</span></h1>
          <nav class="main-nav">
            <ul>
              <li>
                <a href="./index.html">Home </a>
              </li>
              <li>
                <a href="./about2.html">About</a>
              </li>
              
              <li>
                <a href="./contact2.html">Contact Us</a>
              </li>
              <li class="nav_dropdown">
                <a class="drop_btn" href="javascript:void(0)"><div class="nav_dropbtn">Login</div></a>
                <div class="dropdown-content">
                  <a href="./login2.html">Dietitian</a>
                  <a href="./patient_login.html">Patient</a>
                </div>
              </li>

            </ul>
          </nav>`;
const after_login = `
<div class="wrapper">
          <h1 class="logo">WELLNESS<span>DIET</span></h1>
          <nav class="main-nav">
            <ul>
              <li>
                <a href="./index.html">Home </a>
              </li>
              <li>
                <a href="./about2.html">About</a>
              </li>

              <li>
              <a href="./appoinment_list.html">appointment list</a>
            </li>
              <li>
              <a href="./active.html">Create plans</a>
            </li>
              
            
              <li>
              <a href="./profile2.html">Profile</a>
            </li>
              <li>
                <a href="./contact2.html">Contact Us</a>
              </li>
              

            </ul>
          </nav>`;

function home_header() {
  const logheader = document.getElementById("header");

  if (!user_name) {
    logheader.innerHTML = before_login;
  } else {
    logheader.innerHTML = after_login;
  }
}

document.addEventListener("DOMContentLoaded", () => {
  home_header();
});
