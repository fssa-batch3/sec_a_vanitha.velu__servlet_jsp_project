<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width>, initial-scale=1.0" />
    <title>about us</title>
    <link rel="stylesheet" href="../assets/css/about2.css">
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
              <a href="<%= request.getContextPath() %>/index.html">Home </a>
            </li>
            <li>
              <a href="<%= request.getContextPath() %>/about2.jsp">About</a>
            </li>
            
            <li>
              <a href="<%= request.getContextPath() %>/active.html">Create plans</a>
            </li>
            <li>
              <a href="<%= request.getContextPath() %>/contact2.html">Contact Us</a>
            </li>
         
          </ul>
        </nav>
    </header>

    
    <section class="about">
      <h1>About Us</h1>
      <p style="font-weight: bold">wellnessDiet is a Diet management platform!!!</p>
      <div class="about-info">
        <div class="about-img">
          <img src = 
  "https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?size=626&ext=jpg&ga=GA1.2.1698990817.1694057850&semt=sph" alt="Geeksforgeeks">
        </div>
        <div>
    <p>At wellnessDiet, we believe that a balanced and nutritious diet is the cornerstone of a healthy lifestyle. Our mission is to provide you with personalized diet plans tailored to your unique needs and goals.

      Our team of experienced nutritionists and dietitians are dedicated to helping you achieve your health and fitness aspirations. We understand that one size doesn't fit all, which is why we emphasize a customized approach to dieting.
    </p>
          <button>Read More...</button>
        </div>
      </div>
    </section>
    <section class="team">
      <h1>Meet Our Team</h1>
      <div class="team-cards">
        <!-- Cards here -->
        <!-- Card 1 -->
        <div class="card">
          <div class="card-img">
            <img src=
  "https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg?size=626&ext=jpg&ga=GA1.2.1698990817.1694057850&semt=sph" alt="User 1">
          </div>
          <div class="card-info">
            <h2 class="card-name">Utchikannan</h2>
            <p class="card-role">CEO and Founder</p>
            <p class="card-email">utchi@gmail.com</p>
            <p><button class="button">Contact</button></p>
          </div>
        </div>
        <!-- Card 2 -->
        <div class="card">
          <div class="card-img">
            <img src=
  "https://img.freepik.com/free-photo/doctor-offering-medical-teleconsultation_23-2149328972.jpg?size=626&ext=jpg&ga=GA1.2.1698990817.1694057850&semt=sph" alt="User 2">
          </div>
          <div class="card-info">
            <h2 class="card-name">Miller</h2>
            <p class="card-role">Co-Founder</p>
            <p class="card-email">Miller@gmail.com</p>
            <p><button class="button">Contact</button></p>
          </div>
        </div>
        <!-- Card 3 -->
        <div class="card">
          <div class="card-img">
            <img src=
  "https://img.freepik.com/free-photo/portrait-doctor_144627-39387.jpg?size=626&ext=jpg&ga=GA1.2.1698990817.1694057850&semt=sph" alt="User 3">
          </div>
          <div class="card-info">
            <h2 class="card-name">Joe</h2>
            <p class="card-role">Co-Founder</p>
            <p class="card-email">Joe@example.com</p>
            <p><button class="button">Contact</button></p>
          </div>
        </div>

        <div class="card">
          <div class="card-img">
            <img src=
  "https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?size=626&ext=jpg&ga=GA1.2.1698990817.1694057850&semt=sph" alt="User 3">
          </div>
          <div class="card-info">
            <h2 class="card-name">Joe</h2>
            <p class="card-role">Co-Founder</p>
            <p class="card-email">Joe@example.com</p>
            <p><button class="button">Contact</button></p>
          </div>
        </div>

        <div class="card">
          <div class="card-img">
            <img src=
  "https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg?size=626&ext=jpg&ga=GA1.2.1698990817.1694057850&semt=sph" alt="User 3">
          </div>
          <div class="card-info">
            <h2 class="card-name">Joe</h2>
            <p class="card-role">Co-Founder</p>
            <p class="card-email">Joe@example.com</p>
            <p><button class="button">Contact</button></p>
          </div>
        </div>


        <div class="card">
          <div class="card-img">
            <img src=
  "https://img.freepik.com/free-photo/young-woman-doctor-her-office_144627-15486.jpg?size=626&ext=jpg&ga=GA1.2.1698990817.1694057850&semt=sph" alt="User 3">
          </div>
          <div class="card-info">
            <h2 class="card-name">Joe</h2>
            <p class="card-role">Co-Founder</p>
            <p class="card-email">Joe@example.com</p>
            <p><button class="button">Contact</button></p>
          </div>
        </div>

        <div class="card">
          <div class="card-img">
            <img src=
  "https://img.freepik.com/free-photo/doctors-day-handsome-brunette-cute-guy-medical-gown-with-crossed-hands_140725-162942.jpg?size=626&ext=jpg&ga=GA1.2.1698990817.1694057850&semt=sph" alt="User 3">
          </div>
          <div class="card-info">
            <h2 class="card-name">Joe</h2>
            <p class="card-role">Co-Founder</p>
            <p class="card-email">Joe@example.com</p>
            <p><button class="button">Contact</button></p>
          </div>
        </div>

        <div class="card">
          <div class="card-img">
            <img src=
  "https://img.freepik.com/free-photo/smiling-doctor-with-strethoscope-isolated-grey_651396-974.jpg?size=626&ext=jpg&ga=GA1.2.1698990817.1694057850&semt=sph" alt="User 3">
          </div>
          <div class="card-info">
            <h2 class="card-name">Joe</h2>
            <p class="card-role">Co-Founder</p>
            <p class="card-email">Joe@example.com</p>
            <p><button class="button">Contact</button></p>
          </div>
        </div>
      </div>
    </section>

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

  </body>
</html>
