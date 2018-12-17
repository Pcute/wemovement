package servlet;

import dao.StudentDAO;
import dao.impl.StudentDAOimpl;
import domain.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ResetPwdServlet",urlPatterns = "/resetpwd.do")
public class ResetPwdServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		Student student=(Student) session.getAttribute("loginer");
		StudentDAO dao= new StudentDAOimpl();
		//验证原密码是否正确
		String oldped=request.getParameter("oldpwd");
		String newpwd=request.getParameter("newpwd");



		int flag=dao.select(student);
		if(flag==0){
			request.getRequestDispatcher("/jsp/").forward(request,response);
		}
		else{
			try {
				dao.resetPwd(student.getStuId(),newpwd);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/jsp/").forward(request,response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}
}
