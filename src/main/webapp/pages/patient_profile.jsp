

<%@page import="com.fssa.wellnessdiet.service.*" %>
<%@page import="com.fssa.wellnessdiet.dao.*" %>
<%@page import="com.fssa.wellnessdiet.model.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>profile</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/profile2.css" />
  </head>
  <body>
<% 
	HttpSession session2 = request.getSession(false);
	String email = (String) session2.getAttribute("loggedInEmail");
System.out.println(email);
	UserService service = new UserService();
	User user = service.findingUserByEmail(email);
	System.out.println(user.getUserId());
%>
    <header>
      <div class="wrapper">
        <h1 class="logo">WELLNESS<span>DIET</span></h1>
        <nav class="main-nav">
          <ul>
            <li>
              <a href="<%=request.getContextPath()%>/pages/patient_index.jsp">Home </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/pages/about2.jsp">About</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/pages/diet2.jsp">Consultation</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/pages/active.jsp">Create plans</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/pages/contact2.jsp">Contact Us</a>
            </li>
          
          </ul>
        </nav>
    </header>
    <div class="container">
      <form id="editForm">
        <div class="input">
          <label>Name:</label>
          <input id="name" value="chandru" class="input_edit" type="text" />
        </div>
        <div class="input">
          <label>Number:</label>
          <input id="phnumber" class="input_edit" value="9876543210" type="number" />
        </div>

        <div class="input">
          <label>Email:</label
          ><input id="email" class="input_edit" type="email" value="<%= email %>" />
        </div>
        <div class="input">
          <label>Address:</label
          ><input class="input_edit" id="address" value="10/7,pillayar kovil street, kallakurichi." type="text" />
        </div>
        <div class="btn">
          <button type="submit">Save</button>
          <button class="edit_btn" onclick="edit()">Edit</button>
          <button id="delete">DELETE</button>
        </div>
       
      </form>
      

    </div>

<%  
AppointmentService appointmentService  = new AppointmentService();
System.out.println(user.getUserId());
Appoinment appoit = appointmentService.getAllAppointmentById(user.getEmail());
%>

              <table border="1">
		<thead>
			<tr>
				<th>Patient Name</th>
				<th>Email</th>
				<th>Problem</th>
				<th>Branch</th>
				<th>Date</th>
				<th>Status</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
				<%= appoit.getPatientName() %></td>
				<td class="email"><%= appoit.getEmail() %></td>
				<td><%= appoit.getProblem() %></td>
				<td><%= appoit.getBranch() %></td>
				<td><%= appoit.getDate() %></td>
				<%-- <td><%=A.getStatus()%></td> --%>
				<td>
					<%= appoit.getStatus()%>
				</td>

			</tr>


		</tbody>
	</table>

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
