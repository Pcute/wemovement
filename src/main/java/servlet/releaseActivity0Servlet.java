package servlet;

import dao.ClassificationDAO;
import dao.impl.ClassificationDAOimpl;
import domain.Classification;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "releaseActivity0Servlet",urlPatterns = "/releaseactivity0.do")
public class releaseActivity0Servlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClassificationDAO dao=new ClassificationDAOimpl();
		List<Classification> list=new ArrayList<>();
		try {
			list=dao.getAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("actClass",list);
		request.getRequestDispatcher("/jsp/releaseactivity.jsp").forward(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
