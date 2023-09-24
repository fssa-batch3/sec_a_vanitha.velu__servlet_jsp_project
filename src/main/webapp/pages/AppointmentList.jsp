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
				<td><%=A.getEmail()%></td>
				<td><%=A.getProblem()%></td>
				<td><%=A.getBranch()%></td>
				<td><%=A.getDate()%></td>
				<%-- <td><%=A.getStatus()%></td> --%>
				<td>
					<form action="updateStatus" method="post">
						<input type="hidden" name="appointmentId" value="<%=A.getId()%>">
						<select name="status">

							<option value="Pending">Confirm</option> 
							<option value="Completed">Cancel</option>
						</select>
						<button type="submit">Update</button>
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

</body>
</html>
