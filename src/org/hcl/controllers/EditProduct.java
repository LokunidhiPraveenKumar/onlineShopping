package org.hcl.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hcl.model.Product;
import org.hcl.services.ProductService;
import org.hcl.services.ProductServiceImpl;

@WebServlet("/editProduct")
public class EditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		request.setAttribute("msg", "editProduct");
		RequestDispatcher rd=request.getRequestDispatcher("updateProduct.jsp");
		rd.forward(request, response);
	}

	@Override

	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		// System.out.println(req.getParameter("pid"));
		Integer pid = Integer.parseInt(req.getParameter("pid"));
		String pname = req.getParameter("pname");
		String imageurl = req.getParameter("imageurl");
		String description = req.getParameter("description");
		Double price = Double.parseDouble(req.getParameter("price"));
		ProductService service = new ProductServiceImpl();
		boolean b = service.updateProduct(new Product(pid, pname, imageurl, description, price));
		if (!b)
			out.print("Not Updated");
		RequestDispatcher rd = req.getRequestDispatcher("products");
		rd.forward(req, response);
	}

}
