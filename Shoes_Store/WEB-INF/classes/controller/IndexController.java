package controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dal.BrandDAO;
import model.Brand;

@WebServlet("/index")
public class IndexController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private BrandDAO brandDAO;

	public IndexController() {
		super();
		brandDAO = new BrandDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		listBrands(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void listBrands(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		List<Brand> brands = brandDAO.list();
		request.setAttribute("list_brands", brands);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}