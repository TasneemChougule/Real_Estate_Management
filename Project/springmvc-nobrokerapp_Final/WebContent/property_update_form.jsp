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
<title>Update Property Form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="table.css" >
<style>
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
	margin-top: 5vh;
}

#table{
	background-color: rgba(0,0,0,0.5);
	padding: 2vh 5vh 2vh 5vh;
	border-radius: 20px;
	color: white;
	border: 1px solid yellow;
	text-align: center;
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
			<button type="button" class="btn btn-light">
				<a href="my_ads.htm">My Ads</a>
			</button>
		</div>
		<div>
			<button type="button" class="btn btn-warning">
				<a href="logout.htm">Log Out</a>
			</button>
		</div>
	</div>
	
	<div id="tableouter">
	<div id="table">
	
	<spr:form action="property_update.htm" method="post" commandName="property" >
	<table class="table-borderless" style="text-align: left " >
		<tr>
			<td>
				
			</td>
			<td>
				<spr:hidden path="propertyId"/>
			</td>
		</tr>
		
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
				Bathroom:
			</td>
			<td>
				<spr:select path="bathroom">
					<spr:option value="0"></spr:option>
					<spr:option value="1"></spr:option>
					<spr:option value="2"></spr:option>
					<spr:option value="3"></spr:option>
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
				Parking:
			</td>
			<td>
				<spr:select path="parking">
					<spr:option value="Bike"></spr:option>
					<spr:option value="Car"></spr:option>
					<spr:option value="Both"></spr:option>
					<spr:option value="No Parking"></spr:option>
				</spr:select>
			</td>
		</tr>
		<tr>
			<td>
				Balcony:
			</td>
			<td>
				<spr:select path="balcony">
					<spr:option value="0"></spr:option>
					<spr:option value="1"></spr:option>
					<spr:option value="2"></spr:option>
				</spr:select>
			</td>
		</tr>
		<tr>
			<td>
				Rent:
			</td>
			<td>
				<spr:input path="rent"/>
			</td>
		</tr>
		<tr>
			<td>
				Deposit:
			</td>
			<td>
				<spr:input path="deposit"/>
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
				Locality:
			</td>
			<td>
				<spr:input path="area"/>
			</td>
		</tr>
		<tr>
			<td>
				Address:
			</td>
			<td>
				<spr:input path="address"/>
			</td>
		</tr>
		<tr>
			<td>
				Pincode:
			</td>
			<td>
				<spr:input path="pincode"/>
			</td>
		</tr>
		<tr>
			<td>
				Owner Name:
			</td>
			<td>
				<spr:input path="ownerName"/>
			</td>
		</tr>
		<tr>
			<td>
				Mobile No:
			</td>
			<td>
				<spr:input path="mobileNo"/>
			</td>
		</tr>
		
 		<tr>
			<td>
				<a href="my_ads.htm" >Back</a>
			</td>
			<td>
				<input type="submit" value="Update" >
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