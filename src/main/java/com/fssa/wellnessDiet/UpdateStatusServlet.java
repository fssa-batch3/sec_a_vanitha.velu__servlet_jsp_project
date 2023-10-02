package com.fssa.wellnessDiet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class changeStatus
 */
@WebServlet("/UpdateStatusServlet")
public class UpdateStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStatusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the "id" and "status" parameters from the request.
        int id = Integer.parseInt(request.getParameter("id"));
        String newStatus = request.getParameter("status");

        String sql = "UPDATE appointments SET Status = ? WHERE id = ?";
        try (Connection connection = ConnectionUtil.getConnection();
   	         PreparedStatement pmt = connection.prepareStatement(sql)) {
            // Update the status in the appointments table.
           
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, newStatus);
            preparedStatement.setInt(2, id);

            int rowsAffected = preparedStatement.executeUpdate();
            
            if (rowsAffected > 0) {
                response.sendRedirect("AppointmentList.jsp");
            } else {
                // No rows were updated.
                response.getWriter().println("No appointment found with the specified ID.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error updating status: " + e.getMessage());
        }
    }
}