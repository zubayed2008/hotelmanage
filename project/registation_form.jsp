<html>
	<head>
	<link href="assets/css/bootstrap.css" rel="stylesheet" />
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<script src="assets/java_script.js"></script>
	<script src="assets/js/bootstrap.js" ></script>
	<script src="assets/js/bootstrap.mini.js" ></script>
	<script src="assets/js/npm.js" ></script> 
	</head>
	<body onload="document.registration.Name.focus();">
		<form name='registration' action="reg_form" onSubmit="return formValidation();" method="post">
			<fieldset>
				<legend>Registration form</legend>
			<table>
				<tr>
					<td><b>Name  </b></td>
					<td><input type="text" name="Name"></td>
				</tr>
				<tr>
					<td><b>User Name  </b></td>
					<td><input type = "text" name="Uname"></td>
				</tr>
				<tr>
					<td><b>Gender </b></td>
					<td><input type="radio" name = "gender" value="m">Male
							<input type = "radio" name = "gender" value="f">Female</td>
				</tr>
				<tr>
					<td><b>DOB  </b></td>
					<td><input type="date" name="dob"></td>
				</tr>
				<tr>
					<td><b>Phone  </b></td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td><b>Email Id  </b></td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td><b>Password  </b></td>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td><b>Confirm Password  </b></td>
					<td><input type="password" name"conf_pass"></td>
				</tr>
				<tr>
					<td></td>
					<td><br><input type="submit" class="btn btn-primary" value="Sign Up"></td>
				</tr>
			</table>
		</fieldset>
		</form>
	</body>
<script src="assets/js/bootstrap.js" ></script>
<script src="assets/js/bootstrap.mini.js" ></script>
<script src="assets/js/npm.js" ></script>
</html>