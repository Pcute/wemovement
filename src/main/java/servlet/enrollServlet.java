package servlet;

import dao.ActivityDAO;
import dao.RecordDAO;
import dao.impl.ActivityDAOimpl;
import dao.impl.RecordDAOimpl;
import domain.Activity;
import domain.Record;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

@WebServlet(name = "enrollServlet",urlPatterns = "/enroll.do")
public class enrollServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginer= (String) request.getSession().getAttribute("loginRole");
		if ("student".equals(loginer)){
			RecordDAO daoRe=new RecordDAOimpl();//向记录表增加数据
			ActivityDAO daoAc=new ActivityDAOimpl();//修改活动参加人数
			Record re=new Record();
			//从界面取数据
			int stuId= (int) request.getSession().getAttribute("ID");
			//int actId= Integer.parseInt(request.getParameter("id"));
			int actId=1;
			String type="活动";
			Date date= Calendar.getInstance().getTime();
			String signTime=date.toString();
			String recordAudit="未审核";
			String recordResult="已参加";
			String recordStatus="良好";
			//存到数据库
			re.setStuId(stuId);
			re.setActId(actId);
			re.setRecordType(type);
			re.setSignTime(signTime);
			re.setRecordAudit(recordAudit);
			re.setRecordResult(recordResult);
			re.setRecordStatus(recordStatus);

			try {
				daoRe.insert(re);

			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				daoAc.updateSignNum(actId);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/").forward(request,response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
