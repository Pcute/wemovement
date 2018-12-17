package servlet;

import dao.ActivityDAO;
import dao.impl.ActivityDAOimpl;
import domain.Activity;
import domain.College;
import domain.Community;
import update.util.UpdateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "releaseActivityServlet",urlPatterns = "/releaseactivity.do")
public class releaseActivityServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ActivityDAO dao=new ActivityDAOimpl();
		Activity act=new Activity();
		//等王朝晖的登陆session
		HttpSession session=request.getSession();
		Community community=(Community) session.getAttribute("loginer");
		College college=(College) session.getAttribute("loginer");
		Community community1=(Community) session.getAttribute("loginer");




		//等温奇伟界面
		int actClass=Integer.parseInt(request.getParameter(""));




		String actName=request.getParameter("actName");
		//ini_id
		int iniid=community.getCommunityId();
		//ini_type
		String iniType="社团";
		//ini_name
		String iniName=community.getCommunityName();



		String actTopic=request.getParameter("actTopic");
		String actIntro=request.getParameter("actIntro");
		//String actImage=request.getParameter("actImage");




		int peopleNum=Integer.parseInt(request.getParameter("peopleNum"));
		int peoNum=0;
		String actAdress=request.getParameter("actAdress");
		Date actSignTime= new Date(request.getParameter("actSignTime"));
		Date actActTime= new Date(request.getParameter("actActTime"));
		//activity_state
		String actState="进行中";
		//activity_audit
		String actAudit="未审核";


		act.setClaId(actClass);
		act.setActivityName(actName);
		act.setIniId(iniid);
		act.setIniType(iniType);
		act.setIniName(iniName);
		act.setActivityTopic(actTopic);
		act.setActivityIntro(actIntro);
		//act.setActivityPicture(actImage);
		act.setPeopleNum(peopleNum);
		act.setPeoNum(peoNum);
		act.setAddress(actAdress);
		act.setSignTime(actSignTime);
		act.setActivityTime(actActTime);
		act.setActivityState(actState);
		act.setActivityAudit(actAudit);



		UpdateUtil updateUtil=new UpdateUtil(this,request);
		String newFileName="" ;
		try {
			newFileName=updateUtil.processUploadedFile("img","frontimages");
		} catch (Exception e) {
			e.printStackTrace();
		}
		//设置新的文件名,并保存到数据库
		act.setActivityPicture(newFileName);



		try {
			dao.insertNewAct(act);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/jsp/releaseOK.jsp").forward(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}
}
