import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

import model.*;


public class login extends HttpServlet {
 
  public void doPost(HttpServletRequest request,
                    HttpServletResponse response) throws ServletException, IOException
  {
      // Set response content type
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();

      UserInformation user_Information = new UserInformation();

      user_Information.SetUserId(request.getParameter("UName"));
      user_Information.SetUserPassword(request.getParameter("pass"));
      String ok = "1";

      try {
                Connection connection;
                connection = ConnectionManagerModel.getConnection();
                PreparedStatement ps = connection.prepareStatement("SELECT * FROM user WHERE user_id = ? AND password = ?");

                ps.setString(1, user_Information.GetUserId());
                ps.setString(2, user_Information.GetUserPassword());

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                  user_Information.SetUserName(rs.getString("username"));
                  user_Information.SetUserEmail(rs.getString("email"));
                  user_Information.SetUserGender(rs.getString("gender"));
                    HttpSession session = request.getSession();
                    session.setAttribute("username",user_Information.GetUserId());
                    response.sendRedirect("http://localhost:8080/project/home.jsp");

                    //response.sendRedirect("home");
                } else {
                  out.println("NO");
                    //request.setAttribute("sign-in-error2", "error");
                    //request.getRequestDispatcher("index.jsp").forward(request, response);
                }

            } catch (Exception ex) {

                out.println(ex);
        }
    }
}
 
