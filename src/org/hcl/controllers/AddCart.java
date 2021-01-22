package org.hcl.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hcl.services.ProductService;
import org.hcl.services.ProductServiceImpl;

@WebServlet("/addCart")
public class AddCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService service=new ProductServiceImpl();
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Integer pid=Integer.parseInt(request.getParameter("pid"));
		Integer uid=Integer.parseInt(request.getParameter("uid"));
		PrintWriter pw = response.getWriter();
		if(!service.addToCart(pid,uid))
			pw.print("Unable to add this into your Cart");
		RequestDispatcher rd=request.getRequestDispatcher("cart.jsp");
		rd.forward(request, response);	
	}
}