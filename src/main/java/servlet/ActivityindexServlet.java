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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ActivityindexServlet",urlPatterns = "/activityindex.do")
public class ActivityindexServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ActivityDAO dao=new ActivityDAOimpl();
		List<Activity> actlist1=null;
		List<Activity> actlist2=null;
		List<Activity> actlist3=null;
		List<Activity> actlist4=null;
		List<Activity> actlist5=null;
		List<Activity> actlist6=null;
		List<Activity> actlist7=null;
		actlist1=dao.getClass(1);
		actlist2=dao.getClass(2);
		actlist3=dao.getClass(3);
		actlist4=dao.getClass(4);
		actlist5=dao.getClass(5);
		actlist6=dao.getClass(6);
		actlist7=dao.getClass(7);
		request.setAttribute("actlist1",actlist1);
		request.setAttribute("actlist2",actlist2);
		request.setAttribute("actlist3",actlist3);
		request.setAttribute("actlist4",actlist4);
		request.setAttribute("actlist5",actlist5);
		request.setAttribute("actlist6",actlist6);
		request.setAttribute("actlist7",actlist7);
		request.getRequestDispatcher("/jsp/activity.jsp").forward(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}
}
