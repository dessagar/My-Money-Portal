<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet" href="confirm_recharge.css">
<style type="confirm_recharge.js"></style>
</head>
<body>
	<%@ include file="Dashboard.jsp"%>
	<div class="page" style="margin-left: 20%">
		<div class="container">
			<div class="left">
				<div class="login">Confirm Transaction</div>
				<div class="eula">By Confirm The Transaction your transaction
					will be successfully done.</div>
			</div>
			<div class="right">
				<svg viewBox="0 0 320 300">
        <defs>
          <linearGradient inkscape:collect="always" id="linearGradient"
						x1="13" y1="193.49992" x2="307" y2="193.49992"
						gradientUnits="userSpaceOnUse">
            <stop style="stop-color:#ff00ff;" offset="0" id="stop876" />
            <stop style="stop-color:#ff0000;" offset="1" id="stop878" />
          </linearGradient>
        </defs>
        <path
						d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
      </svg>
				<%
				try {
					ServletContext sc = request.getServletContext();
					int flag = (int) sc.getAttribute("sValue");
					if (flag == 0) {
						out.print(
						"<div class='alert alert-success col-md-12' role='alert' id='notes'><center><B> <FONT color='red'> Invalid Password...Try Again Later.</FONT></B></center></div><B> ");
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				%>
				<form action="SendMoneyConfirmController" method="post">

					<div class="form">

						<label for="password">Password</label> <input type="password"
							id="password" name="pass"> <input type="submit"
							id="submit" value="Confirm">
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>