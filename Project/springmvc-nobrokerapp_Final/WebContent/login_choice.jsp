<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="cache_control.jsp" %>
<%-- <%@ include file="header.jsp" %>
 --%>
 <% 
	User user1 =(User)session.getAttribute("user");
	if(user1 !=null  && user1.getEmailId() !=null){
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login choice</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style type="text/css">
body{
	background: url("1.jpg");
	background-position: center;
	background-repeat: none;
}
#header{
	display: flex;
	justify-content: space-between;
	padding: 0 5vh 0 5vh;
}
h2{
	color: #FE044B;
	font-size: 230%;
}
button{
	margin: 1vh 0 1vh 0;
}
#login_choice{
	width:100wh;
	height: 80vh;
	display:flex;
	flex-direction:column;
	align-items: center;
	justify-content: center;
}
h1{
	font-family: serif;
	font-weight: bold;
	color: yellow;
}
</style>
</head>
<body >
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
	
	
	<div id ="login_choice">
	<h1>Login as</h1>
	<div>
	<button type="button" class="btn btn-light" style="margin: 5vh"><a href="prep_owner_choice.htm">Owner</a></button>
	<button type="button" class="btn btn-light" style="margin: 5vh"><a href="prep_tenant.htm">Tenant</a></button>
	</div>
	</div>
</body>

</html>
<%
	}else
		response.sendRedirect("home.jsp");
%>