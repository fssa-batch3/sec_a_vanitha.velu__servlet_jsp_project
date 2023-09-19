package com.fssa.wellnessDiet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.wellnessDiet.dao.exception.DAOException;
import com.fssa.wellnessDiet.service.exception.ServiceException;
import com.fssa.wellnessDiet.dao.*;
import com.fssa.wellnessDiet.model.*;
import com.fssa.wellnessDiet.service.*;



public class UpdateDietitianServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDietitianServlet() {
        super();
    }
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int dietitian_id = Integer.parseInt(request.getParameter("dietitian_id"));
		 DietitianDAO dietitianDAO = new DietitianDAO();
	        try {
				Dietitian dietitian = dietitianDAO.findDietitianById(dietitian_id);
				request.setAttribute("dietitian",dietitian);
				RequestDispatcher dispatcher = request.getRequestDispatcher("DietitianUpdate.jsp");
				   dispatcher.forward(request, response);
						

			} catch (DAOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	
//		String dietitianName = request.getParameter("DietitianName");
//		String dietitianurl = request.getParameter("DietitianUrl");
//		String dietitianAddress = request.getParameter("DietitianAddress");
//		String dietitianQualification = request.getParameter("DietitianQualification");
//		int dietitianExperience = Integer.parseInt(request.getParameter("DietitianExperience"));
//		int dietitian_id = Integer.parseInt(request.getParameter("dietitian_id"));
//
//		 DietitianService dietitian = new  DietitianService();
//		 Dietitian dietitian1 = new Dietitian();  
//		 dietitian1.setDietitianName(dietitianName);
//		 dietitian1.setDietitianUrl(dietitianurl);
//		 dietitian1.setDietitianAddress(dietitianAddress);
//		 dietitian1.setDietitianUrl(dietitianurl);
//		 dietitian1.setDietitianExperience(dietitianExperience);
//		 try {
//			dietitian1.updateDietitian(dietitian1, dietitian_id);
//			RequestDispatcher dispatcher = request.getRequestDispatcher("dietitianList.jsp");
//
//		} catch (ServiceException e) {
//			e.printStackTrace();
//		}
//		 
//		doGet(request, response);
//	}

}