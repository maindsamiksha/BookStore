<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" ></script>


</head>
<body style="background-color: #FF4948;">



<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #FF4948">
  <img src="img/logo.png" class="navbar-brand">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="1.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="User_Products.jsp">Books</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About us</a>
      </li>
    </ul>

    <form class="form-inline my-2 my-lg-0">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
     
     <%
String q=(String)session.getAttribute("mobno");

if(q==null)
{
     %>
       <li class="nav-item">
        <a class="nav-link" href="ulogin.jsp">Login</a>
      </li>
<%}
else
{ %>
      <li class="nav-item">
        <a class="nav-link" href="vc.jsp">View Cart</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="vieworderuser.jsp">View Orders</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="ulogout.jsp">Logout</a>
      </li>
  
  <%      }
	
	
%>
      </ul>

    
    </form>
  </div>
</nav>
<br>
<br>
<br>


<div class=container>
<div style="background-color: #FF4948; height: 150px; width: 100%;" class="d-flex justify-content-center  align-items-center">

		<b style="font-family: sans-serif; font-size: 30pt;">I'm so sorry to inform you that you are unable to purchase the product as you've not logged or registered with us.</b>
		
</div>

<div style="background-color: #FF4948; height: 150px; width: 100%;" class="d-flex justify-content-center  align-items-center">

		<b style="font-family: sans-serif; font-size: 30pt;">Please click on below link to login !!!</b>
		
</div>
<div style="background-color: #FF4948; height: 150px; width: 100%;" class="d-flex justify-content-center  align-items-center">

		<b style="font-family: sans-serif; font-size: 30pt;"><a href="ulogin.jsp" class="btn btn-dark">Login / Sing up</a></b>
		
</div>



</div>

</body>
</html>