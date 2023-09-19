<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.fssa.wellnessDiet.model.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Diet consultation</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/diet2.css" />
    <link
      rel="stylesheet"
      href="<%=request.getContextPath()%>https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />

  </head>
  <body>
    <header>
      <div class="wrapper">
        <h1 class="logo">WELLNESS<span>DIET</span></h1>
        <nav class="main-nav">
          <ul>
            <li>
              <a href="<%=request.getContextPath()%>/patient_index.html">Home </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/about2.html">About</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/diet2.html">Consultation</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/active.html">Create plans</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/contact2.html">Contact Us</a>
            </li>
          
          </ul>
        </nav>
    </header>

    <div class="head">
      <h1>DIETITIAN'S</h1>
    </div>
    <div class="container">

		<%
	List<Dietitian> dietitian = (List<Dietitian>) request.getAttribute("dietitian");
	for (Dietitian d : dietitian) {%>
		<div id="<%=d.getdietitian_id()%>" onclick="dietUpdate(this.id)"
			class="image">
			<img src="<%=d.getDietitianUrl()%>" height="350" width="350">
			<h3><%=d.getDietitianName()%></h3>
			<p><%=d.getDietitianQualification()%></p>
			<button class="button">
				<a href="/dietitian_detail.jsp?id=<%=d.getdietitian_id()%>">Appointment</a>
			</button>
		</div>

		<%
		}
		%>
	</div>



    <footer class="footer">
      <div class="container4">
        <div class="rap">
          <div class="footer-col">
            <h4>Services</h4>
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
