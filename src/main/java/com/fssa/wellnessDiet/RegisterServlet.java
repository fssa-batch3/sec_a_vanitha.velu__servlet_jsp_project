package com.fssa.wellnessDiet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("username");

		User user = new User(name, email, password);

		UserService users = new UserService();

		System.out.println(user);
//			 new UserService().registerUser(user);
		try {
			if (users.registerUser(user)) {
				response.sendRedirect("login.jsp");

			}
		} catch (ServiceException e) {
		
			e.printStackTrace();
		} catch (IOException e) {
		
			e.printStackTrace();
		}

	}

}
