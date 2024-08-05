<%@page import="com.cdac.dto.User"%>
<%@page import="com.cdac.dto.Property"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="cache_control.jsp" %>

<% 
	User user1 =(User)session.getAttribute("user");
	if(user1 !=null  && user1.getEmailId() !=null){
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
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

a{
	color: yellow;
}

#table div{
	margin: 2vh 0 4vh 0;
	color: tomato;
}
</style>
<link rel="stylesheet" href="table.css" >
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
	<div>
		<h1>Your Results</h1>
	</div>
	<table align="center">
		<tr>
			<th>
				Owner Name
			</th>
			<th>
				Flat Type
			</th>
			<th>
				Rent
			</th>
			<th>
				Deposit
			</th>
			<th>
				Area
			</th>
			<th>
				City
			</th>
			<th>
				Address
			</th>
			<th>
				Pincode
			</th>
			<th>
				Furnishing
			</th>
			<th>
				Bathroom
			</th>
			<th>
				Parking
			</th>
			<th>
				Balcony
			</th>
			<th>
				Mobile No
			</th>
			<th>
				Email Id
			</th>
		</tr>
		<% 
		List<Property> prlist = (List<Property>)request.getAttribute("resultList");
		for(Property prop : prlist){
		%>
		<tr>
			<td>
				<%=prop.getOwnerName()%>
			</td>
			<td>
				<%=prop.getFlatType()%>
			</td>
			<td>
				<%=prop.getRent()%>
			</td>
			<td>
				<%=prop.getDeposit()%>
			</td>
			<td>
				<%=prop.getArea()%>
			</td>
			<td>
				<%=prop.getCity()%>
			</td>
			<td>
				<%=prop.getAddress()%>
			</td>
			<td>
				<%=prop.getPincode()%>
			</td>
			<td>
				<%=prop.getFurnishing()%>
			</td>
			<td>
				<%=prop.getBathroom()%>
			</td>
			<td>
				<%=prop.getParking()%>
			</td>
			<td>
				<%=prop.getBalcony()%>
			</td>
			<td>
				<%=prop.getMobileNo()%>
			</td>
			<td>
				<%=prop.getEmailId()%>
			</td>
			<%-- <td>
				<a href="expense_delete.htm?expenseId=<%=exp.getExpenseId()%>">Delete</a>
			</td>
			<td>
				<a href="expense_update_form.htm?expenseId=<%=exp.getExpenseId()%>">Update</a>
			</td> --%>
		</tr>
		<% } %>
	</table>
	</div>
	</div>
</body>
</html>
<%
	}else
		response.sendRedirect("home.jsp");
%>