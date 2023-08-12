<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyMoney | SignUp</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style1.css">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h3>Welcome To MyMoney Portal</h3>
				<p>You are 30 seconds away from performing transactions on
					MyMoney!</p>
				<a href="Login.jsp"><input type="submit" name="" value="Login" /></a><br />
				<a href="Home.jsp"><input type="submit" name="" value="Home" /></a><br />
			</div>
			<div class="col-md-9 register-right">

				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">Create Account on MyMoney Portal</h3>
						<form action="RegController">
							<div class="row register-form">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="First Name *" value="" name="fname" required="required"/>
									</div>
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Last Name *" value="" name="lname" required="required"/>
									</div>
									<div class="form-group">
										<select class="form-control" name="city">
											<option  selected disabled>Please select City</option>
											<option>Pune</option>
											<option>Mumbai</option>
											<option>Solapur</option>
											<option>Nashik</option>
											<option>Nagpur</option>
											<option>Osmanabad</option>
											<option>Sangli</option>
											<option>Latur</option>
											<option>Kolhapur</option>
											<option>Nanded</option>
										</select>
									</div>
									<div class="form-group">
										<select class="form-control" name="state">
											<option  selected disabled>Please select State</option>
											<option>Goa</option>
											<option>Maharashtra</option>
											<option>Karnatka</option>
											<option>Punjab</option>
											<option>Kerla</option>
											<option>Assam</option>
											<option>Tamilnadu</option>
											<option>UttarPradesh</option>
										</select>
									</div>
									<div class="form-group">
										<div class="maxl">
											<label class="radio inline"> <input type="radio"
												name="gender" value="male" checked> <span>
													Male </span>
											</label> <label class="radio inline"> <input type="radio"
												name="gender" value="female"> <span>Female </span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="email" class="form-control"
											placeholder="Your Email-Id *" value="" name="email" required="required"/>
									</div>
									<div class="form-group">
										<input type="text" minlength="10" maxlength="10"
											class="form-control"
											placeholder="Your Mobile No *" value="" name="mobno" required="required"/>
									</div>
									<div class="form-group">
										<select class="form-control" name="occupation">
											<option  selected disabled>Please select your Occupation</option>
											<option>Teacher</option>
											<option>Farmer</option>
											<option>Businessman</option>
											<option>Doctor</option>
											<option>Developer</option>
											<option>Manager</option>
											<option>Driver</option>
											<option>Architect</option>
										</select>
									</div>
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Enter Initial Account Balance *" value="" name="accbal" required="required"/>
									</div>
									<input type="submit" class="btnRegister" value="Register" />
								</div>

							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>



</body>
</html>