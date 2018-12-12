package servlet;

import dao.StudentDAO;
import dao.impl.StudentDAOimpl;
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
        Student student = new Student();
        String userName = request.getParameter("uName");
        String userPwd = request.getParameter("uPwd");

        student.setStuNo(userName);
        student.setStuPwd(userPwd);

        StudentDAO studentDAO=new StudentDAOimpl();
        int flag = 0;
        try {
            flag = studentDAO.select(student);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (flag ==1) {
            request.setAttribute("userName", userName);
            HttpSession session = request.getSession();
            session.setAttribute("userName", userName);
            response.sendRedirect(request.getContextPath() + "/jsp/homepage.jsp");
        } else {
            request.setAttribute("userName", userName);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/login.jsp");
            dispatcher.forward(request, response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
