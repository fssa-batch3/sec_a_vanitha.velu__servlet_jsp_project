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
                <a href="./active.jsp">Create plans</a>
              </li>
              
              <li>
                <a href="./contact2.jsp">Contact Us</a>
              </li>
                <li>
                  <a href="../patient_login.jsp">Login</a>
              </li>
            </ul>
          </nav>
        </div>`;
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
                <a href="./diet2.jsp">Consultation</a>
              </li>
              <li>
                <a href="./active.jsp">Create plans</a>
              </li>
              <li>
              <a href="./patient_profile.jsp">Profile</a>
            </li>
              <li>
                <a href="./contact2.jsp">Contact Us</a>
              </li>
            </ul>
          </nav>
        </div>`;

function home_header() {
  const user_name = JSON.parse(localStorage.getItem("patient_login"));
  const logheader = document.getElementById("user_header");

  if (user_name == null) {
    logheader.innerHTML = before_login;
  } else if (user_name != null) {
    logheader.innerHTML = after_login;
  }
}
document.addEventListener("DOMContentLoaded", () => {
  home_header();
});
