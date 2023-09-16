package com.fssa.wellnessDiet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.wellnessDiet.model.User;
import com.fssa.wellnessDiet.service.UserService;
import com.fssa.wellnessDiet.service.exception.ServiceException;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/patient_signup")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("username");
		String type = request.getParameter("type");

		System.out.println(1);
		User user = new User(name, email, password,type, 0);

		UserService users = new UserService();

		try {
			
			if (!users.registerUser(user)) {
				throw new ServiceException("user is not valid");
			}else {
				response.sendRedirect("patient_login.jsp");
			}
		} catch (ServiceException | IOException e) {
			e.printStackTrace();
		}

	}

}
