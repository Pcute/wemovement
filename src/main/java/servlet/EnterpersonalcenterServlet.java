package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EnterpersonalcenterServlet",urlPatterns = "/enter.do")
public class EnterpersonalcenterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String longin=request.getParameter("type");
		if("student".equals(longin)){
			request.getRequestDispatcher("/jsp/personalCenter.jsp").forward(request,response);
			//直接从session中取数据，不用写servlet
		}
		else if("community".equals(longin)){
			request.getRequestDispatcher("communityintro.do").forward(request,response);
			//社团详细界面动态化，所以需要写servlet
		}
		else if("college".equals(longin)){
			request.getRequestDispatcher("/jsp/collegeInformation.jsp").forward(request,response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
