package com.fssa.wellnessDiet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.wellnessDiet.model.Appoinment;
import com.fssa.wellnessDiet.service.*;
import com.fssa.wellnessDiet.service.exception.ServiceException;



@WebServlet("/GetAllAppointmentServlet") 
public class GetAllAppointmentServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L;

	protected void  doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 
		AppointmentService appointmentService = new AppointmentService();
		List<Appoinment> appointment = null; 
		try {
			 
			appointment = AppointmentService.getAllAppointment(); 
			request.setAttribute("appointment", appointment);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/AppointmentList.jsp");
			dispatcher.forward(request, response);
	
			
		} catch (ServiceException e) { 
			System.out.println(e.getMessage()); 
		}
	}
}
	

