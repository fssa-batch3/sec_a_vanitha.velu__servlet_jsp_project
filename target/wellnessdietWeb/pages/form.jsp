<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.wellnessDiet.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#form {
	max-width: 400px;
	margin: 0 auto;
}

.main {
	background-color: white;
	width: 400px;
	border-radius: 10px;
	margin-left: 500px;
	margin-top: 200px;
}

.inputBox {
	position: relative;
	margin-bottom: 20px;
}

.inputBox input[type="text"] {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: black;
	border: none;
	border-bottom: 1px solid #ccc;
	outline: none;
	background: transparent;
}

.inputBox span {
	position: absolute;
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	color: #666;
	transition: 0.5s;
	pointer-events: none;
}

.inputBox input[type="text"]:focus+span, .inputBox input[type="text"]:valid+span
	{
	transform: translateY(-20px);
	font-size: 12px;
	color: white;
}

.btn5 {
	display: block;
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	font-weight: bold;
	color: #fff;
	background: #2479b5;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	outline: none;
	transition: 0.3s ease;
}

.btn5:hover {
	background: #2479b5;
}
</style>
<body>
	<%
	User user = (User) session.getAttribute("user");
	%>
	<form id="form" action="<%=request.getContextPath()%>/DietitianServlet"
		method="post">
	   
		<div class="inputBox">
			<input id="image" type="text" name="DietitianUrl" required="required" />
			<span>Image Url</span>
		</div>

		<div class="inputBox">
			<input id="docname" type="text" name="DietitianName"
				required="required" /> <span>Doctor Name</span>
		</div>
		<div class="inputBox">
			<input id="Special" type="text" name="DietitianQualification"
				required="required" /> <span>specialist</span>
		</div>
		<div class="inputBox">
			<input id="experience" type="text" name="DietitianExperience"
				required="required" /> <span>Experience</span>
		</div>
		<div class="inputBox">
			<input id="about" type="text" name="DietitianAddress"
				required="required" /> <span>Address</span>
		</div>
		<button type="submit" class="btn5">Create</button>

	</form>

</body>
</html>