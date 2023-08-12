<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyMoney | DashBoard</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
h4 {
	background-color: #a9ccc1;
}
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>


<body>
	<div class="w3-sidebar w3-black w3-bar-block" style="width: 20%">
		<h3 class="w3-bar-item">MyMoney Portal</h3>
		<hr>
		<a href="Employee.jsp" class="w3-bar-item w3-button">HOME</a>
		<hr>
		<p style='color: tomato'>Transactions</p>
		<hr>
		<a href="SendMoney.jsp" class="w3-bar-item w3-button"> SEND MONEY</a> <a
			href="Update.jsp" class="w3-bar-item w3-button"> RECHARGE</a> <a
			href="Delete.jsp" class="w3-bar-item w3-button"> HISTORY</a>  <a
			href="Deposit.jsp" class="w3-bar-item w3-button"> DEPOSIT</a>
		<hr>
		<p style='color: tomato'>About</p>
		<hr>
		<form action="profileController">
		<input type="submit" value="MY PROFILE" class="w3-bar-item w3-button" style="background-color: black; color: white">
		</form>
		 <a
			href="VerifyEmail.jsp" class="w3-bar-item w3-button"> VERIFY
			EMAIL</a> <a href="VerifyMob.jsp" class="w3-bar-item w3-button"> VERIFY
			MOBILE NO</a> <a href="changePass.jsp" class="w3-bar-item w3-button">CHANGE PASSWORD</a>
			<a href="logout.jsp" class="w3-bar-item w3-button">
			LOGOUT</a>
		<hr>
		
		<small>Developed By @MyMoney Portal Team</small><br>
	</div>

	<!-- Page Content -->
	<div style="margin-left: 20%">

		<div class="w3-container w3-black">
			<h1>MyMoney Portal Dashboard</h1>
		</div>

		<div class="w3-container" id="div1">
			<div>
				<%
				try {
					ServletContext st = request.getServletContext();
					
						int regId = (int) st.getAttribute("regId");
						if (regId>=1) {
					out.print(
							"<div class='alert alert-success col-md-12' role='alert' id='notes'><center><B> <FONT color='green'> Login Sucessfully...!!Welcome To MyMoney Portal</FONT></B></center></div><B> ");
						
						}

					

				} catch (Exception e) {
					e.printStackTrace();
				}
				
				%>
			</div>
		</div>

	</div>
</body>
</html>