<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style type="text/css">
#header{
	display: flex;
	justify-content: space-between;
	padding: 0 5vh 0 5vh;
}
h2{
	color: #FE044B;
	font-size: 230%;
}

#header div h2 a{
	color: #FE044B;
}

body{
	background: url("1.jpg");
	background-position: center;
	background-repeat: none;
}
#login{
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100wh;
	height: 80vh;
}
#form{
	padding: 3vh;
	background-color: rgba(0,0,0,0.5);
	border: 1px solid black;
	border-radius: 20px;
}
td{
	color: white;
	font-size: 130%; 
}
a{
	color: yellow;
	font-style: italic;
	text-decoration: underline;	
}

a:hover {
	color: white;
}

#title{
	text-align: center;
	font-size: 250%;
	font-family: serif;
	color: gold;
}
</style>
</head>
<body>

	<div id="header">
		<div>
			<h2>
				<a href="login_choice.jsp" >NoBroker.com</a>
			</h2>
		</div>
	</div>
	<div id="login">
		<div id="form">
		<div id="title">
			<b>REGISTER</b>
		</div>
<spr:form action="reg.htm" method="post" commandName="user" >
	<table class= "table table-borderless" align="center" >
		<tr>
			<td>
				FirstName:
			</td>
			<td>
				<spr:input type="text" class="form-control" required="required" placeholder="First Name" path="firstName"/>
			</td>
		</tr>
		<tr>
			<td>
				LastName:
			</td>
			<td>
				<spr:input type="text" class="form-control" required="required" placeholder="Last Name" path="lastName"/>
			</td>
		</tr>
		<tr>
			<td>
				MobileNo:
			</td>
			<td>
				<spr:input type="text" name="mobile" class="form-control" required="required" placeholder="Mobile Number" path="mobileNo"/>
			</td>
		</tr>
		<tr>
			<td>
				EmailId:
			</td>
			<td>
				  <spr:input type="email" path="emailId" class="form-control" name="email" placeholder="Email Address" required="email"/>
			</td>
		</tr>
		<tr>
			<td>
				Password:
			</td>
			<td>
				<spr:input path="password" name="txtPassword" type="password" id="txtPassword" title="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number"
                    class="form-control" placeholder="Enter Password" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" />
				
			</td>
		</tr>
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Register" >
			</td>
		</tr>
	</table>
	</spr:form>
	</div>
	</div>
</body>
</html>