<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>

<style>
body {
  text-align: center;
  font-family: Arial, sans-serif;
  background: white;
  height: 100vh;
  overflow: hidden;
}

.container2 {
  margin-top: 200px;
}

form {
  display: inline-block;
  text-align: left;
  padding: 20px;
  border: 1px solid #03c988;
  border-radius: 10px;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="c-password"] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid gray;
  border-radius: 10px;
}
input:valid {
  border-color: green;
  /* border: 2px; */
}
input:invalid {
  border: 2px solid red;
}

button {
  width: 100%;
  background-color: #03c988;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 10px;
  cursor: pointer;
}

button:hover {
  background-color: grey;
}

label {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
}

.wave {
  position: fixed;
  bottom: 0;
  left: 0;
  height: 100%;
  z-index: -1;
}

.container {
  width: 100vw;
  height: 100vh;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 7rem;
  padding: 0 2rem;
}

.img {
  display: flex;
  justify-content: flex-end;
  align-items: center;
}
.img img {
  width: 500px;
}

</style>

<body>
	
		<% 
			String errorMessage = request.getParameter("errorMessage");
			if(errorMessage != null){
				out.println("<p>"+errorMessage+"</p>");
			}
		%>
	
    <div class="container2">
      <h1>WELCOME</h1>
      <form id="form" action="LoginServlet" method="post">
        <label for="email">Email:</label>
        <input
          type="email"
          id="email"
          name="email"
          required
        /><br /><br />
        <label for="password">Password:</label>
        <input
          type="password"
          id="password"
          name="password"
          required
        /><br /><br />

        <button type="submit">Login</button>
        <a class="sign_up_btn" href="./signup2.html" type="submit">Signup</a>
      </form>
    </div>

</body>
</html>