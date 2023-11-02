<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.fssa.wellnessdiet.model.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<title>All Dietitians</title>
<style>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
  }

  h1 {
    text-align: center;
    margin-top: 20px;
    color: #007bff;
  }

  table {
    border-collapse: collapse;
    width: 100%;
    margin: 20px auto;
    background-color: white;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }

  th, td {
    border: 1px solid #ccc;
    padding: 8px;
    text-align: left;
  }

  th {
    background-color: #f2f2f2;
  }
</style>

</head>
<body>
	<h1>All Dietitians</h1>
	<%
	List<Dietitian> dietitian = (List<Dietitian>) request.getAttribute("dietitian");
	for (Dietitian d : dietitian) {
	System.out.println(d.getdietitian_id());
	}
	%>
	<table>
		<tr>
		
			<th>DietitianName</th>
			<th>DietitianUrl</th>
			<th>DietitianAddress</th>
			<th>DietitianQualification</th>
			<th>DietitianExperience</th>
						
			
			
		</tr>

		<%
		if(dietitian != null && !dietitian.isEmpty()){
			
		}
		for (Dietitian d : dietitian) {
		%> 
		<tr>
		 
			<td><%=d.getDietitianName()%></td>
			<td><%=d.getDietitianUrl()%></td>
			<td><%=d.getDietitianAddress()%></td>
			<td><%=d.getDietitianQualification()%></td>
			<td><%=d.getDietitianExperience()%></td>
		
		</tr>

		<%
		}

		%>

	</table>
</html>
