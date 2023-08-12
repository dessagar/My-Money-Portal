<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="sendMoney.css" rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
	<%@ include file="Dashboard.jsp"%>


	<div class="container contact-form" style="margin-left: 20%">
		<div class="contact-image">
			<img src="https://image.ibb.co/kUagtU/rocket_contact.png"
				alt="rocket_contact" />
		</div>
		<%
       try{
       		ServletContext sc=request.getServletContext();
       		int flag=(int)sc.getAttribute("error");
       		if(flag==0)
       		{
       			out.print("<div class='alert alert-success col-md-12' role='alert' id='notes'><center><B> <FONT color='red'> Sorry...This User Not Registered Yet on MyMoney Portal.</FONT></B></center></div><B> ");
       		}
       }catch(Exception e){
    	   e.printStackTrace();
       }
       %>
		<form method="post" action="SendMoneyController">

			<h2>Send Money</h2>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<input type="text" name="txtName" class="form-control"
							placeholder="Enter Your Name *" value="" />
					</div>
					<div class="form-group">
						<input type="email" name="txtEmail" class="form-control"
							placeholder="Enter Recevier's Email *" value="" />
					</div>
					<div class="form-group">
						<input type="text" name="txtPhone" class="form-control"
							placeholder="Enter Recevier's Phone Number *" value="" />
					</div>
					<div class="form-group">
						<input type="number" name="txtAmt" class="form-control"
							placeholder="Enter Amount To Send *" value="" />
					</div>
					<div class="form-group">
						<input type="submit" name="btnSubmit" class="btnContact"
							value="Procced To Pay" />
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<textarea name="txtMsg" class="form-control"
							placeholder="Enter Any Comment *"
							style="width: 100%; height: 150px;"></textarea>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>