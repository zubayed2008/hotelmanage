<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
	//session = request.getSession(false);
	if(session.getAttribute("username")==null) {
   		// it's Not valid
   		response.sendRedirect("http://localhost:8080/project/index.jsp");
   	}
   	else
   	{
%>
<html>
<head>
	<title>Welcome</title>
  <link href="assets/css/bootstrap.css" rel="stylesheet" />
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <script src="assets/js/bootstrap.js" ></script>
  <script src="assets/js/bootstrap.mini.js" ></script>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="assets/js/npm.js" ></script>
</head>
<body>

  <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/jsp_project"
     user="root"  password=""/>
  <sql:query dataSource="${snapshot}" var="result">
    SELECT Name,Number from room where Available=1;
  </sql:query>

  <div class="navbar navbar-default navbar-fixed-top navbar-inverse">
    <div class="container">
      <div class="navbar-header">
                       <a href="http://localhost:8080/project/home.jsp" class="navbar-brand">Hotel Management</a>
              </div>
        <ul class="nav nav-tabs">
          <li><a href="#Home" data-toggle="tab">Welcome <%
    //String user = (String)session.getAttribute("username");
    out.println(session.getAttribute("username"));
  %>
</a></li>
          <li><a href="#Room" data-toggle="tab">Rooms</a></li>
          <li><a href="#Service" data-toggle="tab">Services</a></li>
          <li><a href="#Logout"  data-toggle="tab">Log out</a></li>
        </ul>
    </div>
  </div>
<br><br><br>


<div class="tab-content">
  <div class="tab-pane fade in active" id="Home">
    <p><b> &nbsp We provide the best rooms in this country </b></p>
      <div class="container">
         <div class="row">
          <div class="col-md-6">
            <p> <span class="glyphicon glyphicon-bitcoin"></span><b> Superior Suite</b> </p>
            <img style="width:400px;height:400px:overflow:none;" src="assets/pictures/3.jpg" class="image-responsive">
          </div>
          <div class="col-md-6">
            <p> <span class="glyphicon glyphicon-bitcoin"></span><b> Executive Suite </b></p>
            <img style="width:400px;height:400px:overflow:none;" src="assets/pictures/2.jpg" class="image-responsive">
          </div>
         </div>
         <br>
         <div class="row">
          <div class="col-md-6">
            <p> <span class="glyphicon glyphicon-usd"></span><b> Family Suite </b> </p>
            <img style="width:400px;height:400px:overflow:none;" src="assets/pictures/4.jpg" class="image-responsive">
          </div>
          <div class="col-md-6">
            <p> <span class="glyphicon glyphicon-globe"></span> <b> Junior Suite </b> </p>
            <img style="width:400px;height:400px:overflow:none;" src="assets/pictures/1.jpg" class="image-responsive">
          </div>
         </div>
      </div>
  </div>
  <div class="tab-pane fade" id="Room">
    <p><b> Here is the list of available rooms in the hotel </b></p>
    <table class="table">
      <tr> 
        <th>Room Name</th>
        <th>Room Number</th>
      </tr>
    <c:forEach var="row" items="${result.rows}">
      <tr>
         <td><c:out value="${row.Name}"/></td>
         <td><c:out value="${row.Number}"/></td>
      </tr>
    </c:forEach>
    </table>
  </div>
  <div class="tab-pane fade" id="Service">
      <form action="room" method="post">
          <fieldset>
            <legend>Book a Room</legend>
            <table>
              <tr>
            <td><b> &nbsp &nbsp Room name: </b></td>
            <td><input type="text" name="rname"></td>
            </tr>
            <tr>
            <td><b> &nbsp Room Number : </b></td>
            <td><input type="text" name="rnumber"></td>
          </tr>
          <tr>
            <td></td><td><input type="submit" class="btn btn-primary" value="Assign Room"></td>
          </tr>
          </table>
            
          </fieldset>
  </form>

  </div>
  <div class="tab-pane fade" id="Logout">
    <p style="color:red;font-size:200%"> &nbsp &nbsp Are you sure want to log out?</p>
    <p>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<input value="Yes" type="button" onclick='logout()'></div></p>
  </div>  
</div>


</body>
<script>
	function logout()
        {
            window.location.href="logout";
        }
</script>
</html>
<%
	}
%>
