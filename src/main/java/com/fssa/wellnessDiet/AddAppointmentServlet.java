package com.fssa.wellnessDiet;

import java.io.IOException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.wellnessdiet.model.Appoinment;
import com.fssa.wellnessdiet.service.AppointmentService;
import com.fssa.wellnessdiet.dao.exception.DAOException;

@WebServlet("/AddAppointmentServlet")
public class AddAppointmentServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String patientName = request.getParameter("patientName");
		String email = request.getParameter("email");
		String problem = request.getParameter("problem");
		String branch = request.getParameter("branch");
		String dateTime = request.getParameter("dateTime");
		String status = request.getParameter("status");

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date utilDate = null;
		try {
			utilDate = dateFormat.parse(dateTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		// Convert java.util.Date to java.sql.Date
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

		// adding
		Appoinment appoinment = new Appoinment(patientName, email, problem, branch, sqlDate, status); 

		AppointmentService appointmentService = new AppointmentService();

		System.out.println(appoinment);

		try {
			
			appointmentService.addAppointment(appoinment);
			System.out.println("appointment created successfully");

			response.sendRedirect(request.getContextPath() + "/pages/AppointmentBooked.jsp");

		} catch (DAOException e) {
			e.printStackTrace();
		}
	}
}
