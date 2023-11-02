package com.fssa.wellnessDiet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.wellnessdiet.model.User;
import com.fssa.wellnessdiet.service.UserService;
import com.fssa.wellnessdiet.service.exception.ServiceException;

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

		System.out.println(email);
		System.out.println(password);

		System.out.println(name);

		System.out.println(type);

		User user = new User(name, email, password,type);

		UserService users = new UserService();
		System.out.println(user.toString());
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
