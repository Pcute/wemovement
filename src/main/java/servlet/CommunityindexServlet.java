package servlet;

import dao.CommunityDAO;
import dao.impl.CommunityDAOimpl;
import domain.Community;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CommunityindexServlet",urlPatterns = "/communityindex.do")
public class CommunityindexServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommunityDAO dao=new CommunityDAOimpl();
		List<Community> commAllList=null;
		List<Community> comm1=null;
		List<Community> comm2=null;
		List<Community> comm3=null;
		List<Community> comm4=null;
		List<Community> comm5=null;
		List<Community> comm6=null;
		commAllList=dao.getAll();
		comm1=dao.getComClass(1);
		comm2=dao.getComClass(2);
		comm3=dao.getComClass(3);
		comm4=dao.getComClass(4);
		comm5=dao.getComClass(5);
		comm6=dao.getComClass(6);
		request.setAttribute("commAllList",commAllList);
		request.setAttribute("comm1",comm1);
		request.setAttribute("comm2",comm2);
		request.setAttribute("comm3",comm3);
		request.setAttribute("comm4",comm4);
		request.setAttribute("comm5",comm5);
		request.setAttribute("comm6",comm6);
		request.getRequestDispatcher("/jsp/community.jsp").forward(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}
}
