<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dietitian Information</title>
</head>
<body>
    <h1>Dietitian Information</h1>
    <p>Image Url: <%= request.getAttribute("imageUrl") %></p>
    <p>Dietitian Name: <%= request.getAttribute("dietitianName") %></p>
    <p>Specialist: <%= request.getAttribute("specialist") %></p>
    <p>Experience: <%= request.getAttribute("experience") %></p>
    <p>About: <%= request.getAttribute("about") %></p>
</body>
</html>
