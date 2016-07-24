import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

import model.*;


public class room extends HttpServlet {
 
  public void doPost(HttpServletRequest request,
                    HttpServletResponse response) throws ServletException, IOException
  {
      // Set response content type
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();

      String name,number;

      name = request.getParameter("rname");
      number = request.getParameter("rnumber");
      String ok = "1";

      try {
                Connection connection;
                connection = ConnectionManagerModel.getConnection();
                PreparedStatement ps = connection.prepareStatement("UPDATE room SET Available= '0' where Name = ? and Number =?");
				ps.setString(1,name);
				ps.setString(2,number);
				ps.executeUpdate();
				connection.close();

            } catch (Exception ex) {

                out.println(ex);
        }
		response.sendRedirect("http://localhost:8080/project/home.jsp");
    }
}