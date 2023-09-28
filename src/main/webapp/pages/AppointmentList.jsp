<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.fssa.wellnessDiet.model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment List</title>
</head>
<body>
	<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 20px;
}

h1 {
	text-align: center;
	color: #333;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	border: 1px solid #ccc;
	background-color: #fff;
}

thead {
	background-color: #03c988;
	color: #fff;
}

th, td {
	padding: 10px;
	border: 1px solid #ccc;
	text-align: left;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #ccc;
}
</style>
	<h1>Appointment List</h1>

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
			<%
			@SuppressWarnings("unchecked")
			List<Appoinment> appointment = (List<Appoinment>) request.getAttribute("appointment");
			System.out.print(appointment);

			if (appointment != null) {
				for (Appoinment A : appointment) {
					/* System.out.println(A.getpatient_name()); */
			%>
			<tr>
				<td><%=A.getPatientName()%></td>
				<td class="email"><%=A.getEmail()%></td>
				<td><%=A.getProblem()%></td>
				<td><%=A.getBranch()%></td>
				<td><%=A.getDate()%></td>
				<%-- <td><%=A.getStatus()%></td> --%>
				<td>
					<form action="updateStatus" method="post">
						<input type="hidden" name="appointmentId" value="<%=A.getId()%>">
						<select class="status" name="status">

							<option value="Pending">Confirm</option> 
							<option value="Completed">Cancel</option>
						</select>
						<button class="submit" type="submit">Update</button>
					</form>
				</td>

			</tr>

			<%
			}
			} else {
			out.println("Appointment List is Empty!");
			}
			%>

		</tbody>
	</table>
	<script>
	 function acceptDiet(email) {
        let click_id = JSON.parse(localStorage.getItem("clicked_id"));
        Email.send({
          SecureToken: "96317604-6aba-41c6-be4b-50fd94e5a7c6",
          To: email,
          From: "vaniv7397@gmail.com",
          Subject: "Your appoinment is Booked!",
          Body: "Hii your appoinment is Booked please come to the hospital we are waiting for you.",
        }).then((message) =>
          alert("Confirmation mail have been sent to your email")
        );
      }
	 document.querySelector("submit").addEventListener("click",(e)=>{
		 const status = document.querySelector(".status");
		 const email = document.querySelector("email").value;
		 if(status.value === "Pending"){
			 acceptDiet(email);
		 }	 
	 })
	
    </script>

</body>
</html>
