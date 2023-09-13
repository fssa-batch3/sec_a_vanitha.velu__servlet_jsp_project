<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
	<h1>JSTL demo</h1>
	<c:set value="Ram" var="name" />

	<c:if test="${name != null}"> <!-- Best practice to avoid page crash -->
		<h3>
			<c:out value="${name}"></c:out>
		</h3>
	</c:if>


<% request.setAttribute("name", "Krishna"); %>
	<% session.setAttribute("age", "18"); %>
	
	<c:out value="Page scope: ${name}" /> <br>
	<c:out value="Request Scope: ${requestScope.name}" /> <br>
	<c:out value="Session scope: ${age}"/>
</body>
</html>