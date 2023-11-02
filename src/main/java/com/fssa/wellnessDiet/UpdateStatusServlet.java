package com.fssa.wellnessDiet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.fssa.wellnessdiet.dao.*;
import com.fssa.wellnessdiet.dao.exception.DAOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/updateStatus")
public class UpdateStatusServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateStatusServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("appointmentId"));
        String newStatus = request.getParameter("status");
        System.out.println(id);
        System.out.println(newStatus);

        AppoinmentDAO appoinmentDAO = new AppoinmentDAO();

        String sql = "UPDATE appointments SET Status = ? WHERE id = ?";
        try (Connection connection = appoinmentDAO.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, newStatus);
            preparedStatement.setInt(2, id);

            int rowsAffected = preparedStatement.executeUpdate();
            System.out.println(rowsAffected);
            if (rowsAffected > 0) {
                response.sendRedirect("index2.jsp");
            } else {
                response.getWriter().println("No appointment found with the specified ID.");
            }
        } catch (SQLException | DAOException e) {
            e.printStackTrace();
            response.getWriter().println("Error updating status: " + e.getMessage());
        }
    }
}
