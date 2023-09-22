<%@page import="com.fssa.wellnessDiet.model.Dietitian"%>

<link rel="stylesheet" href="../assets/css/style.css" /> 
				<%
String loggedInEmail = (String) session.getAttribute("loggedInEmail");
if (loggedInEmail == null) {
%>
				
 <header id="header">
		<div class="wrapper">
          <h1 class="logo">WELLNESS<span>DIET</span></h1>
          <nav class="main-nav">
            <ul>
              <li>
                <a href="<%= request.getContextPath() %>/index2.jsp">Home </a>
              </li>
              <li>
                <a href="<%= request.getContextPath() %>/pages/about2.jsp">About</a>
              </li>
              
              <li>
                <a href="<%= request.getContextPath() %>/pages/contact2.jsp">Contact Us</a>
              </li>
              <li>
                  <a href="<%= request.getContextPath() %>/patient_login.jsp">Login</a>
              </li>

            </ul>
          </nav>
          </div>      	
   </header>
				<%
				}
				%>
				
				
				<header id="header">
				<div class="wrapper">
          <h1 class="logo">WELLNESS<span>DIET</span></h1>
          <nav class="main-nav">
            <ul>
              <li>
                <a href="<%= request.getContextPath() %>/index2.jsp">Home </a>
              </li>
              <li>
                <a href="<%= request.getContextPath() %>/pages/about2.jsp">About</a>
              </li>

              <li> 
              <a href="<%= request.getContextPath() %>/GetAllAppointmentServlet">appointment list</a> 
            </li>
              <li>
              <a href="<%= request.getContextPath() %>/pages/active.jsp">Create plans</a>
            </li>
              <li>
              <a href="<%= request.getContextPath() %>/pages/form.jsp">Add</a>
              </li>
            
              <li>
              <a href="<%= request.getContextPath() %>/pages/profile2.jsp">Profile</a>
            </li>
              <li>
                <a href="<%= request.getContextPath() %>/pages/contact2.jsp">Contact Us</a>
              </li>
               <li>
                <a href="patient_login.jsp" onclick = "logout_link()">log out</a>
              </li>

            </ul>
          </nav>
       </div>
       	
   </header>
   
   <%
   
   %>
