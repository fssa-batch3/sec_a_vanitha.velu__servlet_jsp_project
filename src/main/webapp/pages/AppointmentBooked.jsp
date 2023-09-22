<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Appointment Booking Success</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <style>
      body {
        font-family: Arial, sans-serif;
        text-align: center;
      }

      .success-message {
        color: green;
        font-size: 24px;
        margin-bottom: 350px;
      }

      .tick-icon {
        font-size: 48px;
        color: green;
        margin-bottom: 10px;
      }

      .go-back-button {
        padding: 10px 20px;
        font-size: 18px;
        background-color: #03c988;
        color: #fff;
        text-decoration: none;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }

      .go-back-button:hover {
        background-color: #5be4b6;
      }

      .rap {
        display: flex;
        flex-wrap: wrap;
      }
      ul {
        list-style: none;
      }
      .footer {
        background-color: #03c988;
        padding: 70px 0;
        margin-top: 80px;
      }
      .footer-col {
        width: 25%;
        padding: 0 15px;
      }
      .footer-col h4 {
        font-size: 18px;
        color: black;
        text-transform: capitalize;
        margin-bottom: 35px;
        font-weight: 500;
        position: relative;
      }
      .footer-col h4::before {
        content: "";
        position: absolute;
        left: 0;
        bottom: -10px;
        background-color: rgb(145, 29, 29);
        height: 2px;
        box-sizing: border-box;
        width: 50px;
      }
      .footer-col ul li:not(:last-child) {
        margin-bottom: 10px;
      }
      .footer-col ul li a {
        font-size: 16px;
        text-transform: capitalize;
        color: black;
        text-decoration: none;
        font-weight: 300;
        color: black;
        display: block;
        transition: all 0.3s ease;
      }
      .footer-col ul li a:hover {
        color: whitesmoke;
        padding-left: 8px;
      }
      .footer-col .social-links a {
        display: inline-block;
        height: 40px;
        width: 40px;
        background-color: rgb(86, 86, 86);
        margin: 0 10px 10px 0;
        text-align: center;
        line-height: 40px;
        border-radius: 50%;
        color: whitesmoke;
        transition: all 0.5s ease;
      }
      .footer-col .social-links a:hover {
        color: aliceblue;
        background-color: rgb(74, 71, 71);
      }

      a {
        text-decoration: none;
      }

      .wrapper {
        width: 95%;
        max-width: 1000px;
        margin: 0 auto;
      }

      header {
        background: #03c988;
        color: #ebebd3;
        position: relative;
        padding: 1em 0;
      }

      header::after {
        content: "";
        clear: both;
        display: block;
      }

      .logo {
        float: left;
        font-size: 1rem;
        margin: 0;
        text-transform: uppercase;
        font-weight: 900;
      }

      .logo span {
        font-weight: 400;
      }

      .main-nav {
        position: absolute;
        top: 100%;
        right: 0;
        left: 0;
        background: #03c988;
        height: 0;
        overflow: hidden;
      }

      .main-nav-open {
        height: auto;
      }

      .main-nav ul {
        margin: 0;
        padding: 0;
        list-style: none;
      }

      .main-nav li {
        border-bottom: 1px solid #575766;
      }

      .main-nav li:last-child {
        border-bottom: none;
      }

      .main-nav a {
        color: white;
        display: block;
        padding: 1em 1em;
        text-decoration: none;
        text-transform: uppercase;
      }

      .main-nav a:hover,
      .main-nav a:focus {
        background: #e4b363;
        color: #464655;
      }

      .nav-icon {
        display: inline-block;
        font-size: 1.3em;
        margin-right: 0.5em;
        text-align: center;
        width: 1.1em;
        color: rgba(255, 255, 255, 0.45);
      }

      .menu-toggle {
        padding: 1em;
        position: absolute;
        top: 0.5em;
        right: 0.2em;
        cursor: pointer;
      }
    </style>
  </head>
  <body>
  
   <jsp:include page="patient_header.jsp"></jsp:include>
    <div class="success-message">
      <span class="tick-icon">&#10004;</span>
      Appointment Booked Successfully!
    </div>
    <a href="../pages/patient_idex.jsp" class="go-back-button">Go Back to Home</a>

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
