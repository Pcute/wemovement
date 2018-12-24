package servlet;

import dao.ActivityDAO;
import dao.RecordDAO;
import dao.impl.ActivityDAOimpl;
import dao.impl.RecordDAOimpl;
import domain.Activity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "enrollServlet",urlPatterns = "/enroll.do")
public class enrollServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginer= (String) request.getSession().getAttribute("longer");
		if ("student".equals(loginer)){
			RecordDAO daoRe=new RecordDAOimpl();//向记录表增加数据
			ActivityDAO daoAc=new ActivityDAOimpl();//修改活动参加人数

		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
