package com.fssa.wellnessDiet;

import java.io.IOException;
import com.fssa.wellnessDiet.service.*;
import com.fssa.wellnessDiet.dao.*;
import com.fssa.wellnessDiet.model.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.wellnessDiet.model.User;
import com.fssa.wellnessDiet.service.UserService;
import com.fssa.wellnessDiet.service.exception.ServiceException;

@WebServlet("/DietitianServlet")
public class DietitianServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        // Retrieve form data
        String imageUrl = request.getParameter("DietitianUrl");
        String detitianName = request.getParameter("DietitianName"); 
        String qualification = request.getParameter("DietitianQualification");
        int experience = Integer.parseInt(request.getParameter("DietitianExperience"));
        String address = request.getParameter("DietitianAddress");

        
        Dietitian dietitian = new Dietitian( imageUrl,detitianName, qualification, address,experience);

		DietitianService dietitian1 = new DietitianService();  

		System.out.println(dietitian1);

		try {
			if (dietitian1.addDietitian(dietitian)) {
				System.out.println("dietitian created successfully"); 
				
				response.sendRedirect("GetAllDietitianServlet");

			}
		} catch (ServiceException e) {

			e.printStackTrace();
		} 

	}

    }

