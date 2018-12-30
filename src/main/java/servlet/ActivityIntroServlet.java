package servlet;

import dao.ActivityDAO;
import dao.CommunityDAO;
import dao.impl.ActivityDAOimpl;
import dao.impl.CommunityDAOimpl;
import domain.Activity;
import domain.Community;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ActivityIntroServlet",urlPatterns = "/activityintro.do")
public class ActivityIntroServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ActivityDAO dao=new ActivityDAOimpl();
		CommunityDAO dao1=new CommunityDAOimpl();
		String strid=  request.getParameter("id");
		//System.out.println("id="+strid);
		/* int id=0;
		try {
			id=Integer.parseInt(strid);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}*/
		int id=Integer.parseInt(strid);
		//System.out.println(id);
		try {
			Activity act=dao.getActIntro(id);
			request.setAttribute("actintro",act);
			//request.setAttribute("ActId",id);
			Community com=dao1.getCommIntroByActId(id);
			request.setAttribute("comintro",com);
			request.getRequestDispatcher("/jsp/activityInformation.jsp").forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}
}
