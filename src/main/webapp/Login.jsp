<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyMoney | Login Page</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
h4{
background-color: #dc9fa4;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>


<body class="main-bg">
<%! ResultSet rs=null; %>
	<%@ include file="HomeSub.jsp"%>
	<div>
		<%
		try{
			ServletContext st = request.getServletContext();
			int regId=(int)st.getAttribute("regId");
				if(regId==0){
			out.print("<div class='alert alert-success col-md-12' role='alert' id='notes'><center><B> <FONT color='green'> Invalid Username or Password.Please try again later.</FONT></B></center></div>");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</div>
	<div class="login-container text-c animated flipInX">
		<div>
			<h1 class="logo-badge text-whitesmoke">
				<span class="fa fa-user-circle"></span>
			</h1>
		</div>
		<h3 class="text-whitesmoke">MyMoney Portal</h3>
		<p class="text-whitesmoke">Sign In</p>
		<div class="container-content">
			<form class="margin-t" action="LoginController">
				<div class="form-group">
					<input type="email" class="form-control" placeholder="Email"
						required="required" name="email">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="Password"
						required="required" name="pass">
				</div>
				<button type="submit" class="form-button button-l margin-b">Sign
					In</button>

				<a class="text-darkyellow" href="forgotPass.jsp">Forgot your password?</a><br>
				<p class="text-whitesmoke text-center">Do not have an account?</p>
				<a class="text-darkyellow" href="Register.jsp">Sign Up</a>
			</form>

		</div>
	</div>
</body>


</html>