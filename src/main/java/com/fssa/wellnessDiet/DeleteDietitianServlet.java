package com.fssa.wellnessDiet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.wellnessDiet.dao.DietitianDAO;
import com.fssa.wellnessDiet.dao.exception.DAOException;
import com.fssa.wellnessDiet.model.Dietitian;
import com.fssa.wellnessDiet.service.DietitianService;
import com.fssa.wellnessDiet.service.exception.ServiceException;

/**
 * Servlet implementation class DeleteMedicineServlet
 */
@WebServlet("/DeleteDietitianServlet")
public class DeleteDietitianServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteDietitianServlet() {
		super();

	}

//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		int dietitian_id = Integer.parseInt(request.getParameter("dietitian_id"));
//		DietitianService dietitianservice = new DietitianService();
//		try {
//			dietitianservice.deleteDietitian(dietitian_id);   
//  
//			List<Dietitian> list = new DietitianDAO().getAllDietitians();
//			request.setAttribute("dietitian", list);
//
//			response.sendRedirect("dietitianList.jsp");
//		} catch (ServiceException | DAOException e) {
//			String msg = e.getMessage();
//
//		}
//	}

}