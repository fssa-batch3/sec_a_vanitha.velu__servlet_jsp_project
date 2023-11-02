package com.fssa.wellnessDiet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.wellnessdiet.model.Dietitian;
import com.fssa.wellnessdiet.service.DietitianService;
import com.fssa.wellnessdiet.service.exception.ServiceException;



/**
 * Servlet implementation class EditDietitianServlet
 */
@WebServlet("/EditDietitianServlet")
public class EditDietitianServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			int dietitian_id = Integer.parseInt(request.getParameter("dietitian_id"));
			HttpSession session = request.getSession(); 
			session.setAttribute("dietitian_id",dietitian_id);
			
			Dietitian dietitian = new DietitianService().findDietitianById(dietitian_id);      
			request.setAttribute("dietitian_id",dietitian_id); 
			request.setAttribute("dietitian", dietitian);
			RequestDispatcher req = request.getRequestDispatcher("dietitianEdit.jsp?id=" + dietitian_id);
			req.forward(request, response);

		} catch (NumberFormatException | ServiceException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		Dietitian dietitian = new Dietitian();
		int dietitian_id = Integer.parseInt(request.getParameter("dietitian_id"));
		String name = request.getParameter("dietitianName");
		int experience = Integer.parseInt(request.getParameter("dietitianExperience"));
		String imageUrl = request.getParameter("imageUrl");
		String qualification = request.getParameter("dietitianQualification");
		String address = request.getParameter("dietitianAddress");
	
		dietitian.setDietitianName(name);
		dietitian.setDietitianExperience(experience);  
		dietitian.setDietitianUrl(imageUrl);
		dietitian.setDietitianAddress(address);
		dietitian.setDietitianQualification(qualification); 
		dietitian.setdietitian_id(dietitian_id);  


		
		try {
			DietitianService.updateDietitian(dietitian); 

			System.out.println(dietitian);
			response.sendRedirect("ListDietitianServlet");
		} catch (ServiceException e) {
		
			e.printStackTrace();
		}
	}
}