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

import com.fssa.wellnessdiet.model.Appoinment;
import com.fssa.wellnessdiet.service.*;
import com.fssa.wellnessdiet.service.exception.ServiceException;
@WebServlet("/GetAllAppointmentServlet")
public class GetAllAppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AppointmentService appointmentService = new AppointmentService();
        List<Appoinment> appointments = null;
        try {
            appointments = AppointmentService.getAllAppointment();
            request.setAttribute("appointments", appointments);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/AppointmentList.jsp");
            dispatcher.forward(request, response);
        } catch (ServiceException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}
