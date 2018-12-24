package servlet;

import dao.CommunityDAO;
import dao.impl.CommunityDAOimpl;
import domain.Community;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "registServlet" ,urlPatterns = "/regist.do")
public class registServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Community community=new Community();
        String cno=request.getParameter("cno");
        String cname = request.getParameter("cname");
        String cpwd = request.getParameter("cpwd");
        String email=request.getParameter("email");


        CommunityDAO communityDAO=new CommunityDAOimpl();

        int flag = 0;
        try {
            community=communityDAO.loginSelect(cno,cpwd);
            if(community!=null) flag=0;
            else flag =  communityDAO.insert(community);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (flag >0) {
            request.setAttribute("cno", cno);
            request.setAttribute("cname", cname);
            HttpSession session = request.getSession();
            session.setAttribute("cno", cno);
            session.setAttribute("cname",cname);
            session.setAttribute("user",community);
            response.sendRedirect(request.getContextPath() + "index.do");
        } else {
            request.setAttribute("cno", cno);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/regist.jsp");
            dispatcher.forward(request, response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
