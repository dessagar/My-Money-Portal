<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.form-gap {
	padding-top: 70px;
}
</style>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>
<body>
	<%@ include file="HomeSub.jsp"%>

	<%
				ServletContext st = request.getServletContext();
				try {
					int value = (int) st.getAttribute("value");
					if (value == 1) {
						out.print("<div class='alert alert-success col-md-12' role='alert' id='notes'><center><B> <FONT color='green'> We Have Already Sent an Email,Check it.And Login on Portal Through those credentials.</FONT></B></center></div>");
					} else {
						out.print("<div class='alert alert-success col-md-12' role='alert' id=notes'><center><B> <FONT color='red'>Error : Invalid Email-Id/Not Registered yet....!!</FONT></B></center></div>");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
				%>

	<div class="form-gap"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="text-center">
							<h3>
								<i class="fa fa-lock fa-4x"></i>
							</h3>
							<h2 class="text-center">Forgot Password?</h2>
							<p>We are Hepling for you here.!!</p>
							<div class="panel-body">

								<form id="register-form" action="ForgotPasswordController"
									role="form" autocomplete="off" class="form" method="post">

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-envelope color-blue"></i></span> <input
												id="email" name="email" placeholder="email address"
												class="form-control" type="email">
										</div>
									</div>
									<div class="form-group">
										<input name="recover-submit"
											class="btn btn-lg btn-primary btn-block"
											value="Find Password" type="submit">
									</div>

									<input type="hidden" class="hide" name="token" id="token"
										value="">
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>