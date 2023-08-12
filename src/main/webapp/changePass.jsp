<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
<
style>body {
	background: #eee;
}

.separator {
	border-right: 1px solid #dfdfe0;
}

.icon-btn-save {
	padding-top: 0;
	padding-bottom: 0;
}

.input-group {
	margin-bottom: 10px;
}

.btn-save-label {
	position: relative;
	left: -12px;
	display: inline-block;
	padding: 6px 12px;
	background: rgba(0, 0, 0, 0.15);
	border-radius: 3px 0 0 3px;
}
</style>
</head>
<body>
	<%@ include file="Dashboard.jsp"%>
	<div class="container bootstrap snippets bootdey" style="margin-left: 20%">
		
			
				
				<%try{
				ServletContext st = request.getServletContext();
				int i=(int)st.getAttribute("messg");
				if(i>0){
					out.print("<div class='alert alert-success col-md-12' role='alert' id='notes'><ul><h5>Password Updated SuccessFully..</h5><h6 style=' color: red'>We have also sent an email .</h6></ul></div>");
				}
				else{
					out.print("<div class='alert alert-success col-md-12' role='alert' id='notes'><ul><h6 style=' color: red'>Error : Unable To Update Passowrd.</h6></ul></div>");
				}
				
				}catch(Exception e)
				{
					e.printStackTrace();
				}
				
				%>
			</div>
			<div style="margin-left: 20%">
		<form action="ChangePasswordController" method="post">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-2">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">
								<span class="glyphicon glyphicon-th"></span> Change password
							</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<div
									class="col-xs-6 col-sm-6 col-md-6 separator social-login-box">
									<br> <img alt="" class="img-thumbnail"
										src="https://bootdey.com/img/Content/avatar/avatar1.png">
								</div>
								<div style="margin-top: 80px"
									class="col-xs-6 col-sm-6 col-md-6 login-box">
									<div class="form-group">
										<div class="input-group">
											<div class="input-group-addon">
												<span class="glyphicon glyphicon-lock"></span>
											</div>
											<input class="form-control" type="password"
												placeholder="Current Password" name="oldpass">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<div class="input-group-addon">
												<span class="glyphicon glyphicon-log-in"></span>
											</div>
											<input class="form-control" type="password"
												placeholder="New Password" name="newpass">
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6"></div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<input class="btn icon-btn-save btn-success" type="submit"
										value="Save" />

								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>