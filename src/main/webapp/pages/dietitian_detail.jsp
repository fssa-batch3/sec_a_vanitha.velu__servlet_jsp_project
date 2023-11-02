

<%@page import="com.fssa.wellnessdiet.service.*" %>
<%@page import="com.fssa.wellnessdiet.dao.*" %>
<%@page import="com.fssa.wellnessdiet.model.*" %>

<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dietitian Image Change</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/dietitian_detail.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
      integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
  <% int id = Integer.parseInt(request.getParameter("id"));
          
          DietitianService service = new DietitianService();
          Dietitian dietitian = service.findDietitianById(id);
        	  
          
          %>
    <div class="main-wrapper">
      <div class="container">
        <div class="product-div">
          <div class="product-div-left">
            <div class="img-container">
              <img id="dietitian" src="<%= dietitian.getDietitianUrl() %>" />
            </div>
          </div>
          
          <div class="product-div-right">
            <span id="dietitian_name" class="product-name"> <%= dietitian.getDietitianName() %></span>
            <span id="experience"><%= dietitian.getDietitianExperience() %></span>
            <span id="timing"><%= dietitian.getDietitianAddress() %></span>

            <p id="about" class="product-description"></p>
            <div class="btn-groups">
             
         <button class="add-cart-btn">
            <a href="<%=request.getContextPath()%>/pages/form2.jsp">Book Appointment</a>
        </button>
         
            </div>
          </div>
        </div>
      </div>
    </div>

   
  </body>
</html>
