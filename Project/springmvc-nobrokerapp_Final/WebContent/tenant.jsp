<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %> 
    <%@ include file="cache_control.jsp" %>

<% 
	User user1 =(User)session.getAttribute("user");
	if(user1 !=null  && user1.getEmailId() !=null){
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tenant </title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="table.css" >
<style >
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

#header div h2 a{
	color: #FE044B;
}

button{
	margin: 1vh 0 1vh 0;
}

#tableouter{
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100wh;
	height: 80vh;
}

#table{
	background-color: rgba(0,0,0,0.5);
	padding: 2vh 5vh 2vh 5vh;
	border-radius: 20px;
	color: white;
	border: 1px solid yellow;
	text-align: center;
}

td{
	color: white;
	font-size: 130%; 
}

table td a{
	color: yellow;
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
		<div>
			<button type="button" class="btn btn-warning">
				<a href="logout.htm">Log Out</a>
			</button>
		</div>
	</div>
	
	<div id="tableouter">
	<div id="table">
	
	<spr:form action="result_pg.htm" method="post" commandName="property" >
	<table class="table table-borderless" style="text-align: left " >
		<tr>
			<td>
				Flat Type:
			</td>
			<td>
				<spr:select path="flatType">
					<spr:option value="1RK"></spr:option>
					<spr:option value="1BHK"></spr:option>
					<spr:option value="2BHK"></spr:option>
					<spr:option value="3BHK"></spr:option>
				</spr:select>
			</td>
		</tr>
		
		<tr>
			<td>
				Furnishing:
			</td>
			<td>
				<spr:select path="furnishing">
					<spr:option value="Fully Furnished"></spr:option>
					<spr:option value="Semi Furnished"></spr:option>
					<spr:option value="Unfurnished"></spr:option>
				</spr:select>
			</td>
		</tr>
		

		<tr>
			<td>
				Max Rent:
			</td>
			<td>
				<spr:input path="rent"/>
			</td>
		</tr>
		<tr>
			<td>
				City:
			</td>
			<td>
				<spr:select path="city">
					<spr:option value="Mumbai"></spr:option>
					<spr:option value="Pune"></spr:option>
					<spr:option value="Delhi"></spr:option>
					<spr:option value="Bangalore"></spr:option>
				</spr:select>
			</td>
		</tr>
		
		
		<tr>
			<td>
				<a href="login_choice.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Search" >
			</td>
		</tr>
	</table>
	</spr:form>
	</div>
	</div>
</body>
</html>
<%
	}else
		response.sendRedirect("home.jsp");
%>