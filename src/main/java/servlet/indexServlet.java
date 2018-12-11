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
		List<Activity> actnewList=null;
		List<Activity> actrecommList=null;
		actnewList=dao.getNew(5);
		actrecommList=dao.getRecommdation(5);
		request.setAttribute("actnewList",actnewList);
		request.setAttribute("actrecommList",actrecommList);
		request.getRequestDispatcher("/jsp/homepage.jsp").forward(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
