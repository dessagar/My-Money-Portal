<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="logout.css" rel="stylesheet">
</head>
<body>
<%@ include file="Dashboard.jsp"%>




<!-- modal 2 -->
<div class="box" style="margin-left: 20%">
  <a href="#m2-o" class="link-1" id="m2-c">Click Here To Logout</a>
  
  <div class="modal-container" id="m2-o" style="--m-background: hsla(0, 0%, 0%, .4);">
    <div class="modal">
      <h1 class="modal__title">Logout</h1>
      <p class="modal__text">Are Your Sure To Logout?.</p>
      <a href="Home.jsp"><button class="modal__btn">Logout &rarr;</button></a>
      <a href="Dashboard.jsp"><button class="modal__btn">Cancel &rarr;</button></a>
      <a href="#m2-c" class="link-2"></a>
    </div>
  </div>
</div>
<!-- /modal 2 -->





<a href="https://abubakersaeed.netlify.app/designs/d8-modals" class="abs-site-link" rel="nofollow noreferrer" target="_blank">abs/designs/d8-modals</a>
</body>
</html>