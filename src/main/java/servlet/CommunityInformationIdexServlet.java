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
import java.util.List;

@WebServlet(name = "CommunityInformationIdexServlet",urlPatterns = "/communityinformationindex.do")
public class CommunityInformationIdexServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommunityDAO dao=new CommunityDAOimpl();
		ActivityDAO dao1=new ActivityDAOimpl();
		//int id=(int)request.getSession().getAttribute("ID") ;
		//System.out.println(id);

		//其实communityCenter.do与communityInformation.do可以合并，通过a属性传过来的参数即可实现
		String strid=request.getParameter("id");
		int id=Integer.parseInt(strid);
		try {
			Community community=dao.getCommIntro(id);
			List<Activity> Newactivities =dao1.getNewAct(id);
			List<Activity> Oldactivities =dao1.getOldAct(id);
			request.setAttribute("communityintro",community);
			System.out.println(community.getCommunityName());
			request.setAttribute("newActivity",Newactivities);
			request.setAttribute("oldActivity",Oldactivities);
			request.getRequestDispatcher("/jsp/communityInformation.jsp").forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
