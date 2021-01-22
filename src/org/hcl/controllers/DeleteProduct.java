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

@WebServlet("/delete")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		ProductService service = new ProductServiceImpl();
		Integer pid = Integer.parseInt(request.getParameter("pid"));
		if (!service.deleteProduct(pid))
			out.print("<h1>Not deleted<h1>");
		RequestDispatcher rd = request.getRequestDispatcher("products");
		rd.forward(request, response);
	}
}