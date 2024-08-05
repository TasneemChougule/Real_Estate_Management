<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
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
	
	<form action="forgot_password.htm" method="post" >
	<table align="center" >
		<tr>
			<td>
				Enter Your Registered Mail ID:
			</td>
			<td>
				<input type="text" name="userName">
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Submit" >
			</td>
		</tr>
	</table>
	</form>
</body>
</html>