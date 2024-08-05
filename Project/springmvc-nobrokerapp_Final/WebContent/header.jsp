<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
#header{
	display: flex;
	justify-content: space-between;
	padding: 0 5vh 0 5vh;
}
h2{
	color: pink;
	font-size: 230%;
}
body{
	background: black;
}
button{
	margin: 1vh 0 1vh 0;
}
</style>
</head>
<body>
	<div id="header">
		<div>
			<h2>
				NoBroker.com
			</h2>
		</div>
		<div>
			<button type="button" class="btn btn-warning">
				<a href="logout.htm">Log Out</a>
			</button>
		</div>
	</div>
</body>
</html>

