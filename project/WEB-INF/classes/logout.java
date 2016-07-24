import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

import model.*;


public class logout extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (session.getAttribute("username") != null) {
            session.invalidate();
            response.sendRedirect("http://localhost:8080/project/index.jsp");
        } else {
            response.sendRedirect("");
        }

        //session.removeAttribute("userEmail");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

}
