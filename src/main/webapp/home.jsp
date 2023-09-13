<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>

<style>

/* Style for the links */
a {
    text-decoration: none; /* Remove underline */
    color: #333; /* Text color */
    font-weight: bold; /* Bold text */
    padding: 10px 20px; /* Add padding around the link text */
    margin: 10px; /* Add margin between links */
    border: 1px solid #333; /* Add a border around the links */
    background-color: #f5f5f5; /* Background color for the links */
    border-radius: 5px; /* Rounded corners */
    display: inline-block; /* Display links in a row */
    transition: background-color 0.3s ease; /* Smooth hover effect */
}

/* Hover effect */
a:hover {
    background-color: #333; /* Change background color on hover */
    color: #fff; /* Change text color on hover */
}

</style>
<body>
<h1>Welcome To WellnessDiet</h1>

<%
	String loggedInEmail = (String) session.getAttribute("loggedInEmail");
	
	if(loggedInEmail == null) {
		response.sendRedirect("login.jsp");
	}
	
%>

<p>Logged In user: <%=loggedInEmail%> </p>
<a href="GetAllUserServlet">GetAllUsers</a></br>
<a href="GetAllDietitianServlet">GetAllDietitians</a></br>
<a href="LogoutServlet">logout</a>
</body>
</html>