<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>**</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
<
style> /* Center the loader */ #loader {
	position: absolute;
	left: 50%;
	top: 50%;
	z-index: 1;
	width: 120px;
	height: 120px;
	margin: -76px 0 0 -76px;
	border: 16px solid #f3f3f3;
	border-radius: 50%;
	border-top: 16px solid #3498db;
	-webkit-animation: spin 2s linear infinite;
	animation: spin 2s linear infinite;
}

@
-webkit-keyframes spin { 0% {
	-webkit-transform: rotate(0deg);
}

100
%
{
-webkit-transform
:
rotate(
360deg
);
}
}
@
keyframes spin { 0% {
	transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
360deg
);
}
}

/* Add animation to "page content" */
.animate-bottom {
	position: relative;
	-webkit-animation-name: animatebottom;
	-webkit-animation-duration: 1s;
	animation-name: animatebottom;
	animation-duration: 1s
}

@
-webkit-keyframes animatebottom {from { bottom:-100px;
	opacity: 0
}

to {
	bottom: 0px;
	opacity: 1
}

}
@
keyframes animatebottom {from { bottom:-100px;
	opacity: 0
}

to {
	bottom: 0;
	opacity: 1
}

}
#myDiv {
	display: none;
	text-align: center;
}
</style>
</head>
<%@ include file="Dashboard.jsp"%>
<body onload="myFunction()" style="margin: 0;">

	<div id="loader"  style="margin-left: 20%"></div>

	<div style="display: none;" id="myDiv" class="animate-bottom">
		<div class="alert alert-success col-md-12" role="alert" id="notes">
			<h1 style="color: green">Transaction Successfull...!!</h1>
			<p style="color: green">Congratulation..!! Your Transaction
				successfully Done.</p>
		</div>
	</div>

	<script>
		var myVar;

		function myFunction() {
			myVar = setTimeout(showPage, 3000);
		}

		function showPage() {
			document.getElementById("loader").style.display = "none";
			document.getElementById("myDiv").style.display = "block";
		}
	</script>

</body>
</html>
