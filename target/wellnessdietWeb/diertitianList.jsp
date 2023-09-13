<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DietitianList</title>
</head>
<body>
    <h1>Dietitian List</h1>
    <p>ImageUrl: <%= request.getAttribute("DietitianUrl") %></p>
    <p>Dietitian Name: <%= request.getAttribute("DietitianName") %></p>
    <p>Specialist: <%= request.getAttribute("DietitianQualification") %></p>
    <p>Experience: <%= request.getAttribute("DietitianExperience") %></p>
    <p>Address: <%= request.getAttribute("DietitianAddress") %></p>
</body>
</html>
