<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NoBroker</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style >
body{
	background: url("1.jpg");
	background-position: center;
	background-repeat: none;
}
a{
	text-decoration: none;
}
button {
	margin-right: 5%;
}
.abc{
	display:flex;
	align-items: center;
	justify-content: center;
}
h1{
	margin: 17vh 0 10vh 0;
	text-align: center;
	font-size: 400%;
	font-family: serif;
	font-weight: bolder;
	color: yellow;
}
#desc{
	display: flex;
	justify-content: center;
	align-items: center;
}

#desc div{
	background: rgba(100,100,100,0.7);
	border: 3px dotted blue;
	border-radius: 20px;
	margin-top: 10vh;
	padding: 3vh 3vh 0 3vh;
}

pre{
	color: silver;
}

</style>

</head>
<body>
	<h1>Welcome to NoBroker</h1>
	<div class="abc">
		<button type="button" class="btn btn-light"><a href="prep_log_form.htm" >Login</a></button>
		<button type="button" class="btn btn-light"><a href="prep_reg_form.htm">Register</a></button>
	</div>
<div id="desc">
		<div>
			<h4>
			<pre>
NoBroker.com is a Mumbai based real estate search portal. 
We connect property owners & tenants and buyers and sellers directly.
We do not charge any brokerage from either parties and work on a freemium model. 
We are currently operational in 4 cities namely, Mumbai, Bangalore, Pune, Delhi.
			</pre>
			</h4>
		</div>
	</div>

	

</body>
</html>