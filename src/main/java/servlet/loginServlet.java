package servlet;

import dao.CommunityDAO;
import dao.StudentDAO;
import dao.CollegeDAO;
import dao.impl.CollegeDAOimpl;
import dao.impl.CommunityDAOimpl;
import dao.impl.StudentDAOimpl;
import domain.College;
import domain.Community;
import domain.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "loginServlet",urlPatterns = "/login.do")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Student student =null;
        Community community=null;
        College college=null;
        String userNo = request.getParameter("uNo");
        String userName="";
        String userPwd = request.getParameter("uPwd");

        StudentDAO studentDAO=new StudentDAOimpl();
        CommunityDAO communityDAO=new CommunityDAOimpl();
        CollegeDAO collegeDAO=new CollegeDAOimpl();

        student=studentDAO.loginSelect(userNo,userPwd);
        community=communityDAO.loginSelect(userNo,userPwd);
        college=collegeDAO.loginSelect(userNo,userPwd);
        //System.out.println(college);
        int flag = 0;


        try {
            //三种账号若其中一种账号存在即：flag=1,2,3 不存在则flag=0
            if(student!=null) flag=1;  //学生
            if(community!=null) flag=2;//社团
            if(college!=null) flag=3;//学院
           // System.out.println(flag);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(flag>0) {
            // request.setAttribute("userName", userNo);
            //HttpSession session = request.getSession();
            //session.setAttribute("userName", userNo);
            if (flag == 1) {
                HttpSession session = request.getSession();
                userName=userName+student.getStuName();
                session.setAttribute("loginName",userName);
                session.setAttribute("longer", student);
                session.setAttribute("loginRole","student");
                session.setAttribute("ID",student.getStuId());
                response.sendRedirect(request.getContextPath() + "index.do");
            }
            if (flag == 2) {
                HttpSession session = request.getSession();
                userName=community.getCommunityName();
                session.setAttribute("loginName",userName);
                session.setAttribute("longer", community);
                session.setAttribute("loginRole","community");
                session.setAttribute("ID",community.getCommunityId());
                response.sendRedirect(request.getContextPath() + "index.do");
            }
            if (flag == 3) {
                HttpSession session = request.getSession();
                userName=college.getCollegeName();
                session.setAttribute("loginName",userName);
                session.setAttribute("longer", college);
                session.setAttribute("loginRole","college");
                session.setAttribute("ID",college.getCollegeId());
                response.sendRedirect(request.getContextPath() + "index.do");
            }
        }
        else{

            //这是什么意思
           // request.setAttribute("userName", userNo);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/login.jsp");
            dispatcher.forward(request, response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
