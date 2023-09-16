<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>login</title>
<link rel="stylesheet"
	href=" <%=request.getContextPath()%>/assets/css/login2.css" />
</head>
<body>

	<%
	String errorMessage = request.getParameter("errorMessage");
	if (errorMessage != null) {
		out.println("<p>" + errorMessage + "</p>");
	}
	%>
	<img class="wave" src="./assets/images/wave.png" />
	<div class="container">
		<div class="img">
			<img src="./assets/images/phone.svg" />
		</div>
		<div class="container2">
			<h1>WELCOME</h1>
			<form id="form" action="patient_login" method="post">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" required /><br /> <br /> <label for="password">Password:</label>
				<input type="password" id="password" name="password" required /><br />
				<br />

				<button type="submit">Login</button>
				<a class="sign_up_btn" href="./patient_signup.jsp" type="submit">Signup</a>
			</form>
		</div>


	</div>

</body>
</html>
