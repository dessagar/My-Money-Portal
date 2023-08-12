<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Educational registration form</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
<
link rel ="stylesheet " href ="https: //use.fontawesome.com /releases /v5.4.1
	/css /all.css " integrity ="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz
	" crossorigin ="anonymous "> <link href ="https: //fonts.googleapis.com
	/css ?family =Roboto:300, 400, 500, 700 " rel ="stylesheet "> <style>html,
	body {
	min-height: 100%;
}

body, div, form, input, select, p {
	padding: 0;
	margin: 0;
	outline: none;
	font-family: Roboto, Arial, sans-serif;
	font-size: 16px;
	color: #eee;
}

body {
	background: url("bank1.jpg") no-repeat center;
	background-size: cover;
}

h1, h2 {
	text-transform: capitalize;
	font-weight: 400;
}

h2 {
	margin: 0 0 0 8px;
}

.main-block {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100%;
	padding: 25px;
	background: rgba(0, 0, 0, 0.5);
}

.left-part, form {
	padding: 25px;
}

.left-part {
	text-align: center;
}

.fa-graduation-cap {
	font-size: 72px;
}

form {
	background: rgba(0, 0, 0, 0.7);
}

.title {
	display: flex;
	align-items: center;
	margin-bottom: 20px;
}

.info {
	display: flex;
	flex-direction: column;
}

input, select {
	padding: 5px;
	margin-bottom: 30px;
	background: transparent;
	border: none;
	border-bottom: 1px solid #eee;
}

input::placeholder {
	color: #eee;
}

option:focus {
	border: none;
}

option {
	background: black;
	border: none;
}

.checkbox input {
	margin: 0 10px 0 0;
	vertical-align: middle;
}

.checkbox a {
	color: #26a9e0;
}

.checkbox a:hover {
	color: #85d6de;
}

.btn-item, button {
	padding: 10px 5px;
	margin-top: 20px;
	border-radius: 5px;
	border: none;
	background: #26a9e0;
	text-decoration: none;
	font-size: 15px;
	font-weight: 400;
	color: #fff;
}

.btn-item {
	display: inline-block;
	margin: 20px 5px 0;
}

button {
	width: 100%;
}

button:hover, .btn-item:hover {
	background: #85d6de;
}

@media ( min-width : 568px) {
	html, body {
		height: 100%;
	}
	.main-block {
		flex-direction: row;
		height: calc(100% - 50px);
	}
	.left-part, form {
		flex: 1;
		height: auto;
	}
}
</style>
</head>
<body>
	<%@ include file="Dashboard.jsp"%>
	<div class="main-block" style="margin-left: 20%">
		<%
       try{
       		ServletContext sc=request.getServletContext();
       		int flag=(int)sc.getAttribute("dValue");
       		if(flag==0)
       		{
       			out.print("<div class='alert alert-success col-md-12' role='alert' id='notes'><center><B> <FONT color='red'> Invalid password/Mobile no...Please try again later.</FONT></B></center></div><B> ");
       		}
       }catch(Exception e){
    	   e.printStackTrace();
       }
       %>
		<div class="left-part">
			<i class="fas fa-money"></i>
			<h1 style="color: tomato">Add Money In Your Wallet</h1>
			<p style="color: white">MyMoney Portal is a platfrom where you
				can perform transactions in secure way.</p>
			<div class="btn-group">
				<a class="btn-item" href="SendMoney.jsp">Send Money
					</a> <a class="btn-item" href="#">Recharge
					</a>
			</div>
		</div>
		<form action="DepositController" method="post">
			<div class="title">
				<i class="fas fa-pencil-alt"></i>
				<h2>Add Money</h2>
			</div>
			<div class="info">

				<input type="text" name="email" placeholder="Email"> <input
					type="number" name="phone" placeholder="Phone number"> <input
					type="number" name="amt" placeholder="Amount To Deposit"> <input
					type="password" name="pass" placeholder="Password">

			</div>
			<div class="checkbox">
				<input type="checkbox" name="checkbox"><span>I agree
					to the <a href="#">Privacy Poalicy for MyMoney.</a>
				</span>
			</div>
			<button>
				<input type="submit" value="Add Money" />
			</button>

		</form>
	</div>
</body>
</html>