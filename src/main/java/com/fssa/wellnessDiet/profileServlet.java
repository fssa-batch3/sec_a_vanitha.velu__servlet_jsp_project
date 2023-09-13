package com.fssa.wellnessDiet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/saveInfo")
public class profileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String number = request.getParameter("phnumber");
        String qualification = request.getParameter("qualification");
        String specialization = request.getParameter("specialization");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

     
        System.out.println("Name: " + name);
        System.out.println("Number: " + number);
        System.out.println("Qualification: " + qualification);
        System.out.println("Specialization: " + specialization);
        System.out.println("Email: " + email);
        
        request.getRequestDispatcher("/editForm.jsp").forward(request, response);
     
    }
}
