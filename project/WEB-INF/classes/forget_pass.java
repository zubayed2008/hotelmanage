import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Random;

import model.*;


public class forget_pass extends HttpServlet {

    //password generation
    static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    static Random rnd = new Random();

      String randomString( int len )
      {
         StringBuilder sb = new StringBuilder( len );
         for( int i = 0; i < len; i++ )
         {
          sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
         } 
            
         return sb.toString();
      }

 
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
    	response.setContentType("text/html");
      PrintWriter out = response.getWriter();

      UserInformation user_Information = new UserInformation();

      user_Information.SetUserId(request.getParameter("UName"));
      user_Information.SetUserEmail(request.getParameter("email"));

      String Id;




//database connection
            try 
            {
                Connection connection;
                connection = ConnectionManagerModel.getConnection();
                PreparedStatement ps = connection.prepareStatement("SELECT * FROM user WHERE user_id = ? AND email = ?");

                ps.setString(1, user_Information.GetUserId());
                ps.setString(2, user_Information.GetUserEmail());

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    
                    Id = rs.getString("id");
                    //Integer x = Integer.valueOf(Id);
                    String p = randomString(6);
                    user_Information.SetUserPassword(p);
                    ps = connection.prepareStatement("update user set password = ? where id = ?");

                     ps.setString(2, Id);
                     ps.setString(1, user_Information.GetUserPassword());

                ps.executeUpdate();
                connection.close();

                out.println("User Name: "+ user_Information.GetUserId() + "</br>");
                out.println("User Email: "+ user_Information.GetUserEmail() + "</br>" );
                out.println("New Password: "+ user_Information.GetUserPassword() + "</br>" + "<a href='#'>Home</a>");


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

/*      if ((username.equals(user_session)) && (pass.equals(confirm_pass)) )
      {
      	session.setAttribute("pass",pass);
         response.sendRedirect("http://localhost:8080/Lab4/user_home");

      }

      else if (username.equals(user_session))
      {
        out.println("Give Same Password in Both Place." + "<br>" + "<a href=\"http://localhost:8080/Lab4/forget_pass.html\">Try Again</a>" );

      } 
      else if (pass.equals(confirm_pass))
      {
        out.println("There is no such User." + "<br>" + "<a href=\"http://localhost:8080/Lab4/forget_pass.html\">Try Again</a>" );
      }
      else
      {
        out.println("Give user Name and Password Correctly." + "<br>" + "<a href=\"http://localhost:8080/Lab4/forget_pass.html\">Try Again</a>" );
      }
*/

   