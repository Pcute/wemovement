package servlet;

import dao.ActivityDAO;
import dao.RecordDAO;
import dao.impl.ActivityDAOimpl;
import dao.impl.RecordDAOimpl;
import domain.Activity;
import domain.Record;
import jdbc.util.JDBCUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;

@WebServlet(name = "enrollServlet",urlPatterns = "/enroll.do")
public class enrollServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginer= (String) request.getSession().getAttribute("loginRole");
		if ("student".equals(loginer)){
			RecordDAO daoRe=new RecordDAOimpl();//向记录表增加数据
			ActivityDAO daoAc=new ActivityDAOimpl();//修改活动参加人数
			Connection conn=null;
			Record re=new Record();
			//从界面取数据
			int stuId= (int) request.getSession().getAttribute("ID");
			int actId= 0;
			try {
				actId = Integer.parseInt(request.getParameter("id"));
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
			String type="活动";
			Date date= Calendar.getInstance().getTime();
			String signTime=date.toString();
			String recordAudit="未审核";
			String recordResult="未参加";
			String recordStatus="良好";
			//存到数据库
			re.setStuId(stuId);
			re.setActId(actId);
			re.setRecordType(type);
			re.setSignTime(signTime);
			re.setRecordAudit(recordAudit);
			re.setRecordResult(recordResult);
			re.setRecordStatus(recordStatus);
			boolean flag=true;
			try {
				conn= JDBCUtil.getconn();
				conn.setAutoCommit(false);//设置成false，不让自动提交
				daoRe.insert(re,conn);//向学生记录表插一条数据
				daoAc.updateSignNum(actId,conn);//修改活动已报名人数
				conn.commit();//手动提交
				conn.setAutoCommit(true);//设置成true，还原自动提交
			} catch (Exception e) {
				e.printStackTrace();
				try {
					conn.rollback();
					flag=false;
				}catch (SQLException e1){
					e1.printStackTrace();
				}
			}
		//	response.setCharacterEncoding("utf-8");
		//	response.getWriter().println("报名成功！3秒之后会跳转到主页");
		//	response.setHeader("refresh", "3;/activityintro.do?id="+request.getParameter("id"));
			//request.getRequestDispatcher("/activityintro.do?id=\"+request.getParameter(\"id\")").forward(request,response);
			//response.sendRedirect("/activityintro.do?id="+request.getParameter("id"));地址重定向
		if (flag) {
			response.setContentType("text/html; charset=UTF-8");
			response.getWriter().print("<script type=\"text/javascript\">");
			response.getWriter().print("alert(\"报名成功！\");");
			response.getWriter().print("window.location.href=\"/activityintro.do?id=" + request.getParameter("id") + "\"");
			response.getWriter().print("</script>");
		}
		else{
			response.setContentType("text/html; charset=UTF-8");
			response.getWriter().print("<script type=\"text/javascript\">");
			response.getWriter().print("alert(\"报名失败！\");");
			response.getWriter().print("window.location.href=\"/activityintro.do?id=" + request.getParameter("id") + "\"");
			response.getWriter().print("</script>");
		}
		//	response.sendRedirect("/activityintro.do?id="+request.getParameter("id"));
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
