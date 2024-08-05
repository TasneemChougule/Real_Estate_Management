<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>No Broker</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style >
body{
	background: url("1.jpg");
	background-position: center;
	background-repeat: none;
}
h1{
	font-size: 200%;
	color: blue;
	margin-bottom: 5vh;
	
}
#info{
	margin: 30vh 0 0 0;
	display:flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}
</style>
</head>
<body>
	<div id= "info">
		<h1>
			<%=request.getAttribute("msg")%>!!!
		</h1>
		<button type="button" class="btn btn-light">
			 <a href="prep_log_form.htm" >Sign In</a>
		</button>
	</div>
	<%-- <table align="center" >
		<tr>
			<td> <%=request.getAttribute("msg")%></td>
		</tr>
		<tr>
			<td> <a href="prep_log_form.htm" >Sign In</a> </td>
		</tr>
	</table> --%>
</body>
</html>