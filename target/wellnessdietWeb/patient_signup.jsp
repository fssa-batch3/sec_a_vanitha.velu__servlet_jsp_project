<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>signup form</title>
    <link rel="stylesheet" href=" <%=request.getContextPath()%>/assets/css/signup2.css" />
  </head>
  <body>

    <img class="wave" src="./assets/images/wave.png" />
    <div class="container">
      <div class="img">
        <img src="./assets/images/phone.svg" />
      </div>
    <div class="container2">
		<h1>WELCOME</h1>
		<form id="form" action="patient_signup"
			method="post">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required /><br /> <br /> <label
				for="email">Email:</label> <input type="email" id="email"
				name="email" required /><br /> <br /> <label for="password">Password:</label>
			<input type="password" id="password" name="password" required /><br />
			<br /> <label for="password">Confirm-Password:</label> <input
				type="password" id="c-password" name="Confirm-password" required /><br />
			<br />
			<label for="type">Type:</label>
    <select id="type" name="type" required>
        <option value="Dietitian">Dietitian</option>
        <option value="Patient">Patient</option>
    </select><br /><br />
			<button type="submit">signup</button>
		</form>
    </div>
    <script>
     
    </script>
  </body>
</html>
