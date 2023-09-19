package com.fssa.wellnessDiet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.wellnessDiet.model.User;
import com.fssa.wellnessDiet.service.UserService;
import com.fssa.wellnessDiet.service.exception.ServiceException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/patient_login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		RequestDispatcher dispatcher = null;

		try {
			UserService.loginUser(email, password);
			HttpSession session = request.getSession();
			session.setAttribute("loggedInEmail", email);
//			response.sendRedirect("pages/patient_index.jsp");

			User user = UserService.findingUserByEmail(email);
			session.setAttribute("User", user);
			

			if (user.getType().equalsIgnoreCase("dietitian")) {
				session.setAttribute("User", user);
				System.out.println(user.toString());
				System.out.println(user.getUserId());
				dispatcher = request.getRequestDispatcher("index2.jsp");
			} else {
				dispatcher = request.getRequestDispatcher("pages/patient_index.jsp");
			}
			dispatcher.forward(request, response);
		} catch (ServiceException e) {
			e.printStackTrace();
			response.sendRedirect("patient_login.jsp?errorMessage=" + e.getMessage());
		}

	}

}