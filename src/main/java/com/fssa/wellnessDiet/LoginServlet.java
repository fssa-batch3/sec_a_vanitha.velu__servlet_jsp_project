package com.fssa.wellnessDiet;

import java.io.IOException;
import java.io.PrintWriter;

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
@WebServlet("/login")
public class LoginServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		

		UserService userService = new UserService();

		try {
			userService.loginUser(email, password);
			HttpSession session = request.getSession();
			session.setAttribute("loggedInEmail", email);
			response.sendRedirect("index.jsp");
			
		} catch (ServiceException e) {
			e.printStackTrace();
			response.sendRedirect("login.jsp?errorMessage="+e.getMessage());
		}



	
	}

}