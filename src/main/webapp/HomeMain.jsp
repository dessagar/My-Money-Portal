<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>MyMoney | Home</title>
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--title-icon--------->
<link rel="shortcut icon" href="images/icon.png">
<link rel="stylesheet" type="text/css" href="home.css" />
<!--using FontAwesome---------------->
<script src="https://kit.fontawesome.com/c8e4d183c2.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<!--main------------------------>
	<section id="main">
		<!--navigation-------------------------------->
		<nav>
			<!--logo--->
			<a href="#" class="logo">MyMoney</a>
			<!--menu--------->
			<div class="toggle"></div>
			<ul class="menu">
				<li class="active"><a href="#main">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#services">Team</a></li>
				<li><a href="#portfolio">Gallery</a></li>
				<li><a href="#contact-form">Contact</a></li>
				<li><a href="Login.jsp">SignIn</a></li>
				<li><a href="Register.jsp">SignUp</a></li>
			</ul>
			<!--language-->

		</nav>
		<!--name--------------------------->
		<div class="name">
			<!--hello------->
			<p style="color: tomato; font-size: 20px;">MyMoney Portal</p>
			<!--name--->
			<h1>
				Take care of you and yours at home, and we can take care of you <font
					color="#17d1ac">Online.</font>
			</h1>
			<!--details--------------->
			<p class="details">MyMoney Portal is an Indian digital payments and
				financial services company. Using MyMoney Portal,
				users can send and receive money, recharge mobile, DTH, data cards,
				make utility payments, pay at shops, invest in tax saving funds,
				liquid Funds, buy insurance and mutual funds and gold.<br><h4 style="color: tomato;">Hurry Up ,Sign Up Now !!!</h4></p>
			<!--cv button-------------------->
			<a href="Register.jsp" class="cv-btn">SIGN UP</a>


		</div>
		<!--down arrow-------------->
		<div class="black-line"></div>
		<!--social---------------->
		<div class="social">
			<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
				class="fab fa-twitter"></i></a> <a href="#"><i
				class="fab fa-instagram"></i></a> <a href="#"><i
				class="fab fa-youtube"></i></a>
		</div>

	</section>
	<!--about----------------------->
	<section id="about">
		<!--text---------------------->
		<div class="about-text">
			<h1>About Us</h1>
			<h2>WELCOME TO MyMoney PORTAL</h2>
			<p>MyMoney Portal is a platform inn which we can perform
				transactions like recharge,send mony,add money so on.</p>
			<button>View More Details</button>
		</div>
		<!--about-model----------------->
		<div class="about-model">
			<img src="m4.jpg" alt="model" />
		</div>


	</section>
	<!--services-------------------->
	<section id="services">
		<!--heading-------------->
		<div class="s-heading">
			<h1>Our Team</h1>
			<p>Here Is The Team Of MyMoney Portal.</p>
		</div>
		<!--services-box-container--------->
		<div class="b-container">
			<!--box-1---------------->
			<div class="s-box">
				<!--img------------->
				<div class="s-b-img">
					<!--type----------->
					<div class="s-type">Programmer</div>
					<!--name------->
					<img src="pranav.jpeg">
				</div>
				<!--text----------------->
				<div class="s-b-text">
					<a href="#">Pranav Kulkarni<br>Student at Government
						Polytechinc Pune<br>Maharashtra,India
					</a>
				</div>
			</div>
			<!--box-2---------------->
			<div class="s-box">
				<!--img------------->
				<div class="s-b-img">
					<!--type----------->
					<div class="s-type">Programmer</div>
					<!--name------->
					<img src="akash1.jpg">
				</div>
				<!--text----------------->
				<div class="s-b-text">
					<a href="#">Akash Deshmukh<br>Student at Government
						Polytechinc Pune<br>Maharashtra,India
					</a>
				</div>
			</div>
			<!--box-3---------------->
			<div class="s-box">
				<!--img------------->
				<div class="s-b-img">
					<!--type----------->
					<div class="s-type">Programmer</div>
					<!--name------->
					<img src="sagar.jpg">
				</div>
				<!--text----------------->
				<div class="s-b-text">
					<a href="#">Sagar Deshmukh<br>Student at Government
						Polytechinc Pune<br>Maharashtra,India
					</a>
				</div>
			</div>
		</div>
	</section>

	<!--portfolio------------------->
	<section id="portfolio">
		<!--heading----------->
		<h1 class="p-headind">Gallery</h1>
		<!--portfolio-container------------>
		<div class="p-container">
			<!--portfolio-box-1-------->
			<div class="p-box">
				<!--text--------->
				<div class="overlay-text">
					<h1>Recharge</h1>
					<p></p>
				</div>
				<!--bg-img------------->
				<img src="g.jpg">

			</div>
			<!--portfolio-box-2-------->
			<div class="p-box">
				<!--text--------->
				<div class="overlay-text">
					<h1>Deposit</h1>
					<p></p>
				</div>
				<!--bg-img------------->
				<img src="g2.png">
			</div>
			<!--portfolio-box-3-------->
			<div class="p-box">
				<!--text--------->
				<div class="overlay-text">
					<h1>SendMony</h1>
					<p></p>
				</div>
				<!--bg-img------------->
				<img src="g3.png">
			</div>
			<!--portfolio-box-4-------->
			<div class="p-box">
				<!--text--------->
				<div class="overlay-text">
					<h1>AddMoney</h1>
					<p></p>
				</div>
				<!--bg-img------------->
				<img src="g4.jpg">
			</div>
			<!--portfolio-box-5-------->
			<div class="p-box">
				<!--text--------->
				<div class="overlay-text">
					<h1>History</h1>
					<p></p>
				</div>
				<!--bg-img------------->
				<img src="g5.jpg">
			</div>
			<!--portfolio-box-6-------->
			<div class="p-box">
				<!--text--------->
				<div class="overlay-text">
					<h1>Any Transaction</h1>
					<p></p>
				</div>
				<!--bg-img------------->
				<img src="g6.jpg">
			</div>

		</div>
	</section>
	<!--Contact-btn------------------>
	
	<!--contact-form------------------->
	<section id="contact-form">
		<form action="ContactUsController" method="post">
			<!--left--------------------------------------->
			<div class="contact-left">
				<h1 class="c-l-heading">
					<font style="border-bottom: 3px solid #1ED98B;">Writ</font>e us
				</h1>
				<!--name-------->
				<div class="f-name">
					<font>Name</font> <input type="text" name="name" placeholder="Full Name" />
				</div>
				<!--email-------->
				<div class="f-email">
					<font>Email</font> <input type="email" name="email"
						placeholder="Example@gmail.com" />
				</div>
			</div>
			<!--right------------------------------------------->
			<div class="contact-right">
				<!--message-------->
				<div class="message">
					<font>Message</font>
					<textarea name="message" rows="5" cols="20"
						placeholder="Write Message..." name="messg"></textarea>
				</div>
				<!--submit-btn------------>
				<button><input type="submit" value="Submit"/></button>
			</div>

		</form>

	</section>

	<script type="text/javascript" src="JQuery3.3.1.js"></script>
	<script type="text/javascript">
	
		  /*Responsive Navigation*/
	  $(document).ready(function(){
	 $('.toggle').click(function(){
		 $('.toggle').toggleClass('active')
		 
		 $('nav ul').toggleClass('active-menu')
		
		 
	 })
 });
	
	</script>
</body>
</html>
