package servlet;

import dao.StudentDAO;
import dao.impl.StudentDAOimpl;
import domain.Student;
import update.util.UpdateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UpdateStudentServlet",urlPatterns = "/updatestudent")
public class UpdateStudentServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		//Student student=new Student();
		//从session中取用户名
		HttpSession session=request.getSession();
		Student stu=(Student) session.getAttribute("loginer");
		//将用户上传的图片保存到服务器
		UpdateUtil updateUtil=new UpdateUtil(this,request);
		String newFileName="" ;
		try {
			newFileName=updateUtil.processUploadedFile("img","person");
		} catch (Exception e) {
			e.printStackTrace();
		}
		//设置新的文件名,并保存到数据库
		String stusex=request.getParameter("sex");
		String hobby=request.getParameter("hobby");
		String tele=request.getParameter("tele");

		stu.setStuSex(stusex);
		stu.setHobby(hobby);
		stu.setTele(tele);
		stu.setPicture(newFileName);
		StudentDAO dao=new StudentDAOimpl();
		try {
			dao.update(stu);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/jsp/updateOK.jsp").forward(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
