<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
.jumbotron.text-center {
	height: 20em;
}

input.form-control.col-md-6 {
	width: 50%;
	margin-right: 1em;
	display: inline;
}

div#notes {
	margin-top: 2%;
	width: 98%;
	margin-left: 1%;
}

@media ( min-width : 991px) {
	.col-md-9.col-sm-12 {
		margin-left: 12%;
	}
}
</style>
</head>
<body>
	<%@ include file="Dashboard.jsp"%>
		<div class="container" style="margin-left: 20%">
		<!-- Instructions -->
		<div class="row">
			<div class="alert alert-success col-md-12" role="alert" id="notes">
				<h4>Verify Your Email Here</h4>
				<ul>
					<h5>Enter Email Verification Code which we have sent you.</h5>
					<h5 style=" color: red">It Contains maximum 6 numbers.</h5>
				</ul>
			</div>
		</div>
		<!-- Verification Entry Jumbotron -->
		<div class="row">
			<h3>Email Verification</h3>
			<div class="col-md-12">
				<div class="jumbotron text-center">
					
				<%
				ServletContext st = request.getServletContext();
				try {
					int value = (int) st.getAttribute("data");
					if (value == 1) {
						out.print("<div class='alert alert-success col-md-12' role='alert' id='notes'><center><B> <FONT color='green'> Email Verified Sucessfully...!!</FONT></B></center></div><B>  ");
					} else {
						out.print("<div class='alert alert-success col-md-12' role='alert' id='notes'><center><B> <FONT color='red'> Error : Email Not Verified..!</FONT></B></center></div><B> ");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
				%>
			
					<form method="post" action="EmailVerifyController2" role="form">
						<div class="col-md-9 col-sm-12">
							<div class="form-group form-group-lg">
								<input type="number" placeholder="Enter Email Verification Code"
									class="form-control col-md-6 col-sm-6 col-sm-offset-2"
									name="code" required> <br>
								<br>
								<input class="btn btn-primary btn-lg col-md-2 col-sm-2"
									type="submit" value="Send">
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
		
</body>
</html>