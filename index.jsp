<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script type="text/javascript">

function checkFname()
{
	
	var f = document.insert.fname.value;
	var dev = /^[A-Za-z]+$/
	
	
	if(f=="")
	{
		//alert("Enter First Name")
		document.getElementById("fname").innerHTML="Enter First Name";
	}
	else if(!dev.test(f))
	{
		document.getElementById("fname").innerHTML="Enter Only Alphabets";
	}
	else
	{
		document.getElementById("fname").innerHTML="";
	}
	
}

function checkEmail()
{
	var e = document.insert.email.value;
	
	var reg=/^[A-Za-z0-9-_.]+@[A-Za-z]+\.[A-Za-z]{2,4}$/
	
	if(e=="")
	{
		//alert("Enter Email");	
		document.getElementById("email").innerHTML="Enter Email Id";
	}
	else if(!reg.test(e))
	{
		document.getElementById("email").innerHTML="Enter Valid Email-Id";	
	}
	else
	{
		document.getElementById("email").innerHTML=" ";	
	}
	
}


function checkMobile()
{
	var m = document.insert.mobile.value;
	var reg = /^\d{10}$/
	
	if(m=="")
	{
		document.getElementById("mobile").innerHTML="Enter Mobile No.";	
	}
	else if(!reg.test(m))
	{
		document.getElementById("mobile").innerHTML="Enter Only 10 Digits";
	}
	else
	{
		document.getElementById("mobile").innerHTML=" ";
	}
}


function checkPassword()
{
	var p1 = document.insert.password.value;
	
	var reg=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
	
	if(p1=="")
	{
		document.getElementById("password").innerHTML="Enter Password";	
	}
	else if(!reg.test(p1))
	{
		document.getElementById("password").innerHTML="e.g Abc@1234_";		
	}
	else
	{
		document.getElementById("password").innerHTML=" ";
	}

}



function checkCPassword()
{
	
	var p1 = document.insert.password.value;
	var p2 = document.insert.cpassword.value;
	
	
	if(p2=="")
	{
		document.getElementById("cpassword").innerHTML="Enter Confirm Password";	
	}
	else if(p1!=p2)
	{
		document.getElementById("cpassword").innerHTML="Password Does not Match.";	
	}
	else
	{
		document.getElementById("cpassword").innerHTML=" ";
	}
	
}


</script>

</head>
<body>
<h3 align="center">Student Registration Form</h3>
<br><br>
<form name="insert" method="post" action="">

<table align="center">

		<tr>
			<td>First Name </td>
			<td><input type="text" name="fname" onblur="checkFname();"></td>
			<td><span id="fname" style="color:red"></span></td> 
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" required ></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" onblur="checkEmail();" ></td>
			<td><span id="email"></span></td>
		</tr>
		<tr>
			<td>Mobile</td>
			<td><input type="text" name="mobile" required  onblur="checkMobile();"></td>
			<td><span id ="mobile"></span></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" onblur="checkPassword();" ></td>
			<td><span id="password"></span></td>			
		</tr>
		<tr>
			<td>Confirm Password</td>
			<td><input type="password" name="cpassword" required onblur="checkCPassword();"></td>
			<td><span id="cpassword"></span></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td><input type="radio" name="gender" value="Male">Male
			<input type="radio" name="gender" value="Female">Female</td>
		<tr>
		<tr>
			<td>Address</td>
			<td><textarea rows="5" cols="22" name="address"></textarea></td>
		</tr>
		<tr>
			<td><input type="submit" value="Insert" class="btn btn-danger"></td>
		</tr>
		
		

</table>


</form>
</body>
</html>