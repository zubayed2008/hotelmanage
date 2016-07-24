<!DOCTYPE html>
<html>
<head>
	<title>Sample Login Registration</title>
	<link href="assets/css/bootstrap.css" rel="stylesheet" />
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<script src="assets/js/bootstrap.js" ></script>
	<script src="assets/js/bootstrap.mini.js" ></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="assets/js/npm.js" ></script>
	
<script language="Javascript">

function postRequest(strURL) 
{
	var xmlHttp;
    if (window.XMLHttpRequest) // Mozilla, Safari, ...
    { 
        var xmlHttp = new XMLHttpRequest();
    } 
    else if (window.ActiveXObject) // IE 
    { 
         var xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else
	{
		alert("your browser does not support AJAX");
		return;
	}
    xmlHttp.open('POST',strURL, true);

    xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xmlHttp.onreadystatechange = function() 
    {
        
        if (xmlHttp.readyState == 4) 
        {
            updatepage(xmlHttp.responseText);
        }
    }
    xmlHttp.send(strURL);
}
function updatepage(str)
{
		document.getElementById("result").innerHTML = 	"<font color='black' size='5'>" + str + "</font>";
}
function show1()
{
	var div=document.getElementById("result");
	var rnd = Math.random();
	var url="http://localhost:8080/project/login.jsp?id="+rnd;
	postRequest(url);
	setTimeout(show,10000);
}
function show2()
{
	var div=document.getElementById("result");
	var rnd = Math.random();
	var url="http://localhost:8080/project/registation_form.jsp?id="+rnd;
	postRequest(url);
	setTimeout(show,10000);
}
</script>


</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top navbar-inverse">
		<div class="container">
			<div class="navbar-header">
                       <a href="http://localhost:8080/project/index.jsp" class="navbar-brand">Hotel Management</a>
              </div>
				<ul class="nav nav-tabs">
					<li><a href="#Home" data-toggle="tab">Home</a></li>
					<li><a href="#Help" data-toggle="tab">Help</a></li>
					<li><a href="#Contact" data-toggle="tab">Contact Us</a></li>
				</ul>
		</div>
	</div>
<br><br><br>

<div class="tab-content">
	<div class="tab-pane fade in active" id="Home">
		<p align="center"><font color="#000080">&nbsp;<input value="LOG IN" type="button" onclick='show1()' name="showdate">  <input value="REGISTER" type="button" onclick='show2()' name="showdate"></font></p>
		<div id="result" align="center"></div><br><br>
	</div>
	<div class="tab-pane fade" id="Help">
		<h3>&nbsp &nbsp FAQ</h3>
		<p>&nbsp &nbsp  1. How to check If room available in the hotel?  </p>
		<p>&nbsp &nbsp   Ans: You have to log in to check available room list</p>
		<p>&nbsp &nbsp   2. How to contact to admin? </p>
		<p>&nbsp &nbsp   Ans: You can contact to admin emailing him at <a href="zubayed2008@gmail.com">zubayed2008@gmail.com</a></p>
		<P>&nbsp &nbsp   3. How to be sure if my allocated room are approved or not?</p>
		<p>&nbsp &nbsp   Ans: You have to wait for the admin response to be sure that room is available for your use. admin will approve you and email you back</p>
	</div>
	<div class="tab-pane fade" id="Contact">
		<div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">About Us
                    <small>It's Nice to Meet You!</small>
                </h1>
               We have developed a hotel management system using java enterprise. In this following system we use jsp, ajax, mysql and other things.
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Our Team</h2>
            </div>
            <div class="col-lg-6 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="assets/pictures/zubayed.jpg" alt=""/>
                <h3>Md. Zubayed Islam
                    <small>Software Developer </small>
                </h3>
                <p>Works in JSP, Bootstrap, Html5, MYSQL, Javascript to database connection and Final Database Design</p>
            </div>
        </div>
	</div> 	
</div>

</body>
</html>