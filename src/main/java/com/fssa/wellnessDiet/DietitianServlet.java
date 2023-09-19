package com.fssa.wellnessDiet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.wellnessDiet.model.Dietitian;
import com.fssa.wellnessDiet.model.User;
import com.fssa.wellnessDiet.service.DietitianService;
import com.fssa.wellnessDiet.service.exception.ServiceException;

@WebServlet("/DietitianServlet")
public class DietitianServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve form data
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("User");
		String imageUrl = request.getParameter("DietitianUrl");
		String detitianName = request.getParameter("DietitianName");
		String qualification = request.getParameter("DietitianQualification");
		int experience = Integer.parseInt(request.getParameter("DietitianExperience"));
		String address = request.getParameter("DietitianAddress");
		int userId = user.getUserId();
		

		Dietitian dietitian = new Dietitian(imageUrl, detitianName, qualification, address, experience, userId);

		DietitianService dietitian1 = new DietitianService();

		System.out.println(dietitian1);

		try {
			if (dietitian1.addDietitian(dietitian)) {
				System.out.println("dietitian created successfully");

				response.sendRedirect(request.getContextPath() + "/GetAllDietitianServlet");

			}
		} catch (ServiceException e) {

			e.printStackTrace();
		}

	}

}
