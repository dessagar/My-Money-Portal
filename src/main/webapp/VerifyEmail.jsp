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
	height: 23em;
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
				<h4>Email Verify</h4>
				<ul>
					<li>You will recieve a verification code on your mail after
						you registered. Enter that code below.</li>
					<li>If somehow, you did not recieve the verification email
						then <a href="#">resend the verification email</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- Verification Entry Jumbotron -->
		<div class="row">
			<h3>Email Verification</h3>
			<div class="col-md-12">
				<div class="jumbotron text-center">
					
					<form method="post" action="EmailVerifyController1" role="form">
						<div class="col-md-9 col-sm-12">
							<div class="form-group form-group-lg">
								<input type="email" placeholder="Enter Email-Id"
									class="form-control col-md-6 col-sm-6 col-sm-offset-2"
									name="email" required> <br>
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