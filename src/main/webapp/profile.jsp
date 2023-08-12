
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="profile.css" rel="stylesheet">
</head>
<body>
	<%@ include file="Dashboard.jsp"%>
	<c:if test="${requestScope.message !=null }">
	NOTE : ${message}	
</c:if>
	<c:if
		test="${requestScope.profile!=null and not empty requestScope.profile }">
		<c:forEach items="${requestScope.profile}" var="e">

			<div class="container emp-profile" style="margin-left: 20%">
				<form method="post">
					<div class="row">
						<div class="col-md-4">
							<div class="profile-img">
								<img
									src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog"
									alt="" />
								<div class="file btn btn-lg btn-primary">
									Change Photo <input type="file" name="file" />
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="profile-head">
								<b><h5>${e.regId}</h5></b>
								<b><h6>${e.mobno}</h6></b>

								<ul class="nav nav-tabs" id="myTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="home-tab" data-toggle="tab" href="#home" role="tab"
										aria-controls="home" aria-selected="true">About</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-2">
							<input type="submit" class="profile-edit-btn" name="btnAddMore"
								value="Edit Profile" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="profile-work">
								<p>WORK LINK</p>
								<a href="">Website Link</a><br /> <a href="">Bootsnipp
									Profile</a><br /> <a href="">Bootply Profile</a>
								<p>SKILLS</p>
								<a href="">Web Designer</a><br /> <a href="">Web Developer</a><br />
								<a href="">WordPress</a><br /> <a href="">WooCommerce</a><br />
								<a href="">PHP, .Net</a><br />
							</div>
						</div>
						<div class="col-md-8">
							<div class="tab-content profile-tab" id="myTabContent">
								<div class="tab-pane fade show active" id="home" role="tabpanel"
									aria-labelledby="home-tab">
									<div class="row">
										<div class="col-md-6">
											<label>User Id</label>
										</div>
										<div class="col-md-6">
											<p>${e.regId}</p>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<label>Name</label>
										</div>
										<div class="col-md-6">
											<p>${e.fname}&nbsp&nbsp${e.lname}</p>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<label>Email</label>
										</div>
										<div class="col-md-6">
											<p>${e.email}</p>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<label>Phone</label>
										</div>
										<div class="col-md-6">
											<p>${e.occupation}</p>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<label>Gender</label>
										</div>
										<div class="col-md-6">
											<p>${e.gender}</p>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<label>Profession</label>
										</div>
										<div class="col-md-6">
											<p>${e.mobno}</p>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<label>City</label>
										</div>
										<div class="col-md-6">
											<p>${e.city}</p>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<label>State</label>
										</div>
										<div class="col-md-6">
											<p>${e.state}</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>

		</c:forEach>
	</c:if>
	<c:if
		test="${requestScope.profile==null and
  empty requestScope.profile }">
		<h2 style="margin-left: 20%">hello</h2>
	</c:if>
</body>
</html>