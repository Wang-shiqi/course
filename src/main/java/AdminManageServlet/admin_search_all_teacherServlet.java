package AdminManageServlet;

import Dao.AdministratorDAO;
import bean.Student;
import bean.Teacher;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/admin_search_all_teacherServlet.do")
public class admin_search_all_teacherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();//获取session
        AdministratorDAO adminDao=new AdministratorDAO();
        ArrayList<Teacher> teachers=adminDao.getAllTeachers();
        session.setAttribute("TeachersList",teachers);
        request.setAttribute("type",1);
        RequestDispatcher rd = request.getRequestDispatcher("AdminManageTeachers.jsp");
        rd.forward(request, response);
    }
}
