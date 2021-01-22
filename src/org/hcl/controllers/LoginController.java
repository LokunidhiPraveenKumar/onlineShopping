package org.hcl.controllers;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hcl.model.User;
import org.hcl.services.UserService;
import org.hcl.services.UserServiceImpl;


@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService service=new UserServiceImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd; 
		String userName=request.getParameter("username");
		String password=request.getParameter("password");
		User user=new User();
		user.setUserName(userName);
		user.setPassword(password);
		String msg;
		boolean isValidated=service.validate(user);
		if(isValidated)
		{	HttpSession session=request.getSession();
			Optional<User> user1=service.getUserByUserName(userName);
			session.setAttribute("user",user1.get());
			rd=request.getRequestDispatcher("dashboard.jsp");
			rd.forward(request, response);
		}
		else
		{   msg="Invalid Credentials";
			request.setAttribute("message", msg);
			rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request,response);
		}
	}
}
