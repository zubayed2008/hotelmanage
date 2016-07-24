import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

import model.*;


public class reg_form extends HttpServlet {
 
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
      // Set response content type
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();

      UserInformation user_Information = new UserInformation();

      user_Information.SetUserId(request.getParameter("Uname"));
      user_Information.SetUserName(request.getParameter("Name"));
      user_Information.SetUserEmail(request.getParameter("email"));
      user_Information.SetUserPassword(request.getParameter("pass"));
      user_Information.SetUserGender(request.getParameter("gender"));

      Connection connection;
      connection = ConnectionManagerModel.getConnection();

      try {
                PreparedStatement ps = connection.prepareStatement("INSERT INTO user (user_id, password, username, gender, email) VALUES (?,?,?,?,?)");

                ps.setString(1, user_Information.GetUserId());
                ps.setString(2, user_Information.GetUserPassword());
                ps.setString(3, user_Information.GetUserName());
                ps.setString(4, user_Information.GetUserGender());
                ps.setString(5, user_Information.GetUserEmail());

                

                ps.execute();
                response.sendRedirect("http://localhost:8080/project/login.jsp");

                //request.setAttribute("sign-up-success", "success");
                //request.getRequestDispatcher("index.jsp").forward(request, response);

            } catch (Exception ex) {

                out.println(ex);
            }

      //response.sendRedirect("http://localhost:8080/Lab4/login.html");
  }
}
