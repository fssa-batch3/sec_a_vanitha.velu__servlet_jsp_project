<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>
    <form id="editForm" action="saveInfo" method="post">
        <div class="input">
            <label for="name">Name:</label>
            <input id="name" class="input_edit" type="text" />
        </div>
        <div class="input">
            <label for="phnumber">Number:</label>
            <input id="phnumber" class="input_edit" value="9876543210" type="number" />
        </div>
        <div class="input">
            <label for="qualification">Qualification:</label>
            <input id="qualification" class="input_edit" value="Dietitian" type="text" />
        </div>
        <div class="input">
            <label for="specialization">Specialization:</label>
            <input id="specialization" class="input_edit" value="Co-Founder" type="text" />
        </div>
        <div class="input">
            <label for="email">Email:</label>
            <input id="email" class="input_edit" type="email" />
        </div>
        <div class="input">
            <label for="password">Password:</label>
            <input id="password" class="input_edit" value="234567" type="password" />
        </div>
        
        <div class="btn">
            <button type="submit">Save</button>
            <button class="edit_btn" onclick="edit()">Edit</button>
            <button id="delete">DELETE</button>
            <button id="logout-btn">Log Out</button>
        </div>
    </form>
</body>
</html>
