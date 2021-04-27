import Data.Thread;
import Model.Check;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Controller extends HttpServlet {
    Check check = new Check();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("check", check);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String registrButton = request.getParameter("registrButton");
        String logout = request.getParameter("logout");
        String like = request.getParameter("like");
        String delete = request.getParameter("delete");
        String add = request.getParameter("add");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String comment = request.getParameter("comment");
        String addComment = request.getParameter("addComment");
        String edit = request.getParameter("edit");
        String descriptionEdit = request.getParameter("descriptionEdit");
        String titleEdit = request.getParameter("titleEdit");
        String enterAsGuest = request.getParameter("enterGuest");

        if (registrButton != null) {
            if (username != null && password != null && !username.equals("") && !password.equals("")) {
                if (check.checkUser(username, password)) {
                    enterToMainPage(request, response);
                } else {
                    failLogin(request, response);
                }
                session.setAttribute("check", check);
                return;
            }
            failLogin(request, response);
            return;
        }
        if (enterAsGuest != null) {
            if (check.checkUser("", "")) {
                enterToMainPage(request, response);
            }
            session.setAttribute("check", check);
            return;
        }
        if (logout != null) {
            failLogin(request, response);
            return;
        }
        if (like != null) {
            check.increaseLike(Integer.parseInt(like));
            enterToMainPage(request, response);
            return;
        }
        if (delete != null) {
            check.deleteThread(Integer.parseInt(delete));
            enterToMainPage(request, response);
            return;
        }
        if (add != null) {
            check.add(title, description);
            enterToMainPage(request, response);
            return;
        }
        if (addComment != null) {
            check.addComment((Thread) session.getAttribute("thread"), comment);
            response.sendRedirect("/OP_CourseWork_war_exploded/Thread.jsp?i=" + session.getAttribute("i"));
            return;
        }

        if (edit != null) {
            Thread thread = (Thread) session.getAttribute("thread");
            check.editThread(Integer.parseInt((String) session.getAttribute("i")), titleEdit, descriptionEdit, thread.getLikes(), thread.getComment());
            response.sendRedirect("/OP_CourseWork_war_exploded/Thread.jsp?i=" + session.getAttribute("i"));
            return;
        }
        response.sendRedirect("/OP_CourseWork_war_exploded/controller");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/Registration.jsp").forward(request, response);
    }

    protected void enterToMainPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/OP_CourseWork_war_exploded/MainPage.jsp");
    }

    protected void failLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/OP_CourseWork_war_exploded/Registration.jsp");
    }
}
