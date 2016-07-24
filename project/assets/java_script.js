function formValidation()  
{   
var UserName = document.registration.Name;  
var UserId = document.registration.Uname;     
var UserGender = document.registration.gender;  
var UserDOB = document.registration.dob;
var UserPhone = document.registration.phone;
var UserEmail = document.registration.email;
var UserPassword = document.registration.pass;
var conf_pass = document.registration.conf_pass;



if(UserName_validation(UserName))  
{  
   if(UserId_validation(UserId))  
   {  
      if(ValidateGender(UserGender))  
     {  
         if(validatieDOB(UserDOB))  
         {  
         	if(validatiephone(UserPhone))
         	{
         		if(validatieEmail(UserEmail))
         		{
         			if(validatiePassword(UserPassword))
         			{
         				if(validatieConfirmPass(conf_pass))
         				{

         				}
         			}
         		}
         	}
         }  
     }   
   }  
return false;  
}
}  

function UserName_validation(UserName)  
{  
	var UserName_len = UserName.value.length;  
	if (UserName_len == 0)  
	{  
		alert("Plesae Give the Full Name");  
		UserName.focus();  
		return false;  
	}  
	return true;  
}  

function UserId_validation(UserId)  
{  
	var UserId_len = UserId.value.length;  
	if (UserId_len == 0)  
	{  
		alert("Plesae Give the User Name");  
		UserId.focus();  
		return false;  
	}  
	return true;  
}  

function ValidateGender(UserGender)
{
	return true;

}

function validatieDOB(UserDOB)
{
	var UserDOB_len = UserDOB.value.length;  
	if (UserDOB_len == 0)  
	{  
		alert("Plesae Give Date Of Birth");  
		UserDOB.focus();  
		return false;  
	}  
	return true;  
}

function validatiePassword(UserPassword)  
{  
	var passid_len = UserPassword.value.length;  
	if (passid_len == 0)  
	{  
		alert("Give your Password" );  
		UserPassword.focus();  
		return false;  
	}  
	return true;  
}  

function validatieConfirmPass(conf_pass)
{
	if(UserPassword != conf_pass)
	{
		alert("Please give same password on confirm password." );  
		conf_pass.focus();  
		return false;
	}
	return true;
}

function validatieEmail(UserEmail)  
{  
	var UserEmail_len = UserEmail.value.length;  
	if (UserEmail_len == 0)  
	{  
		alert("Plesae Give your Email Address");  
		UserEmail.focus();  
		return false;  
	}  
	return true;  
}  

function validatiephone(UserPhone)
{
	var phone_len = UserPhone.value.length;
	if (phone_len == 0|| phone_len < 11 ) 
	{ 
		alert("Please give a valied Phone number");  
		UserPhone.focus();  
		return false;
	}
	return true;
}