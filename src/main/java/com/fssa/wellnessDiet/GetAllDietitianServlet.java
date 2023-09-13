package com.fssa.wellnessDiet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.wellnessDiet.model.Dietitian;
import com.fssa.wellnessDiet.service.DietitianService;
import com.fssa.wellnessDiet.service.exception.ServiceException;

	@WebServlet("/GetAllDietitianServlet")
	public class GetAllDietitianServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			DietitianService dietitianService = new DietitianService();
			List<Dietitian> dietitian = null;
			try {
				dietitian = dietitianService.getAllDietitian();
				for(Dietitian d :dietitian) {
				System.out.println(d.getDietitianAddress());
				System.out.println(d.getDietitianName());
				}
				request.setAttribute("dietitian", dietitian);
				RequestDispatcher dispatcher = request.getRequestDispatcher("dietitianList.jsp");
				dispatcher.forward(request, response);
				
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}
	}
		

