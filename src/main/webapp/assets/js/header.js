const user_name = JSON.parse(localStorage.getItem("login"));

const before_login = `
<div class="wrapper">
          <h1 class="logo">WELLNESS<span>DIET</span></h1>
          <nav class="main-nav">
            <ul>
              <li>
                <a href="./index.jsp">Home </a>
              </li>
              <li>
                <a href="./about2.jsp">About</a>
              </li>
              
              <li>
                <a href="./contact2.jsp">Contact Us</a>
              </li>
              <li>
                  <a href="../patient_login.jsp">Login</a>
              </li>

            </ul>
          </nav>`;
const after_login = `
<div class="wrapper">
          <h1 class="logo">WELLNESS<span>DIET</span></h1>
          <nav class="main-nav">
            <ul>
              <li>
                <a href="./index.jsp">Home </a>
              </li>
              <li>
                <a href="./about2.jsp">About</a>
              </li>

              <li>
              <a href="./appoinment_list.jsp">appointment list</a>
            </li>
              <li>
              <a href="./active.jsp">Create plans</a>
            </li>
              
            
              <li>
              <a href="./profile2.jsp">Profile</a>
            </li>
              <li>
                <a href="./contact2.jsp">Contact Us</a>
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
