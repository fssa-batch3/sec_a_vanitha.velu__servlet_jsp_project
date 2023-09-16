<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="../assets/css/admin.css">
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
  />
</head>
<body>
    <header>
        <div class="wrapper">
          <h1 class="logo">WELLNESS<span>DIET</span></h1>
          <nav class="main-nav">
            <ul>
              <li>
                <a href="../index.html">Home </a>
              </li>
              <li>
                <a href="./about2.html">About</a>
              </li>
              <li>
                <a href="./contact2.html">Contact Us</a>
              </li>
              <button id="logout-btn">Log Out</button>
            </ul>
          </nav>
      </header>
<div class="container">
      <div class="box">
       <a href="./form.jsp"> <h3>ADD DOCTORS</h3></a>
      </div>

      <div class="box2">
      <a href="./appoinment_list.jsp">  <h3>View appoinment List's</h3></a>
      </div>
    </div>
    <footer class="footer">
        <div class="container4">
          <div class="rap">
            <div class="footer-col">
              <h4>SERVICES</h4>
              <ul>
                <li><a href="#">Diet counselling</a></li>
                <li><a href="#">Diet Food</a></li>
                <li><a href="#">Diet chart</a></li>
                <li><a href="#">Vitual consulation</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4>Get help</h4>
              <ul>
                <li><a href="#">Chat</a></li>
                <li><a href="#">Consulting</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4>Follow us</h4>
              <div class="social-links">
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-youtube-play"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-whatsapp"></i></a>
              </div>
            </div>
          </div>
        </div>
      </footer>

      <script>
let logout = document.getElementById("logout-btn");
logout.addEventListener("click", function (e) {
  localStorage.removeItem("patient_login");
  window.location.href="../index.jsp";
})
      </script>
</body>
</html>