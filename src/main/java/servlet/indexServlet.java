package servlet;

import dao.ActivityDAO;
import dao.impl.ActivityDAOimpl;
import domain.Activity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "indexServlet",urlPatterns = "/index.do")
public class indexServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ActivityDAO dao=new ActivityDAOimpl();
		List<Activity> actnew=null;
		List<Activity> actrecomm=null;
		actnew=dao.getNew(5);
		actrecomm=dao.getRecommdation(5);
		request.setAttribute("actnew",actnew);
		request.setAttribute("actrecomm",actrecomm);
		request.getRequestDispatcher("/jsp/homepage.jsp").forward(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
