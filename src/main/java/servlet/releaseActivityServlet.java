package servlet;

import dao.ActivityDAO;
import dao.ClassificationDAO;
import dao.impl.ActivityDAOimpl;
import dao.impl.ClassificationDAOimpl;
import domain.Activity;
import domain.College;
import domain.Committee;
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
		//设置网页属性
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//response.setHeader("Content-type", "text/html;charset=UTF-8");
		response.setContentType("text/html;charset=UTF-8");



		ActivityDAO dao=new ActivityDAOimpl();
		Activity act=new Activity();
		HttpSession session=request.getSession();
		String loginRole= (String) session.getAttribute("loginRole");
		//做测试
		//String loginRole="community";

		UpdateUtil updateUtil=new UpdateUtil(this,request);//调用上传文件方法




		String actClass=updateUtil.processFormField("actClass");
		int actClass1=Integer.parseInt(actClass);//转换成int型
		String actName=updateUtil.processFormField("actName");

		System.out.println("actName"+actName);
		//int iniID=1;//int iniID=community.getCommunityId();
		//String iniType="社团";
		//String iniName="吉他社";//community.getCommunityName();

		int iniID=0;
		String iniType="";
		String iniName="";

		String actTopic=updateUtil.processFormField("actTopic");
		String actIntro=updateUtil.processFormField("actIntro");
		//String actImage=request.getParameter("actImage");
		//取图片,设置新的文件名，并保存的数据库
		String newFileName="" ;
			try {
				newFileName=updateUtil.processUploadedFile("actImage","frontimages");//只是把图片放到frontimages文件夹下
			} catch (Exception e) {
				e.printStackTrace();
			}
			//图片取完了
		int peopleNum= Integer.parseInt(updateUtil.processFormField("peopleNum"));int peoNum=0;
		String actAdress=updateUtil.processFormField("actAdress");
		//Date actSignTime=new Date(updateUtil.processFormField("actSignTime"));
		//Date actActTime=new Date(updateUtil.processFormField("actActTime"));
		String actSignTime=updateUtil.processFormField("actSignTime");
		String actActTime=updateUtil.processFormField("actActTime");
		String actState="进行中";
		String actAudit="未审核";

		if ("community".equals(loginRole)) {
			//Community community=new Community();
			Community community=(Community) session.getAttribute("longer");
			iniID=community.getCommunityId();
			iniType="社团";
			iniName=community.getCommunityName();


			//测试
			//act.setClaId(1);
			/*act.setClaId(actClass1);
			act.setActivityName(actName);
			act.setIniId(iniID);
			act.setIniType(iniType);
			act.setIniName(iniName);
			act.setActivityTopic(actTopic);
			act.setActivityIntro(actIntro);
			act.setActivityPicture(newFileName);
			act.setPeopleNum(peopleNum);
			act.setPeoNum(peoNum);
			act.setAddress(actAdress);
			act.setSignTime(actSignTime);
			act.setActivityTime(actActTime);
			act.setActivityState(actState);
			act.setActivityAudit(actAudit);*/
		}



		if("college".equals(loginRole)){
			//College college=null;
			College college=(College) session.getAttribute("longer");
			iniID=college.getCollegeId();
			iniType="学院";
			iniName=college.getCollegeName();
		}
		if("committee".equals(loginRole)){
			//Committee committee=null;
			Committee committee=(Committee)session.getAttribute("longer");
			iniID=committee.getCommitteeId();
			iniType="团委";
			iniName=committee.getCommitteeName();
		}

		act.setClaId(actClass1);
		act.setActivityName(actName);
		act.setIniId(iniID);
		act.setIniType(iniType);
		act.setIniName(iniName);
		act.setActivityTopic(actTopic);
		act.setActivityIntro(actIntro);
		act.setActivityPicture("frontimages/"+newFileName);//文件相对路径
		act.setPeopleNum(peopleNum);
		act.setPeoNum(peoNum);
		act.setAddress(actAdress);
		act.setSignTime(actSignTime);
		act.setActivityTime(actActTime);
		act.setActivityState(actState);
		act.setActivityAudit(actAudit);
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
