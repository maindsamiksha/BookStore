<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import="com.BookStore.Dao.ProductDao,com.BookStore.User.*,java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


</head>


<body style="background-color: #B7CEEC;">




<div style="background-color: #B7CEEC; height: 100px; width: 100%;" class="d-flex justify-content-center  align-items-center">





<a href="add_product.jsp" class="btn btn-dark" style="height: 80px; width: 250px;">Add Products</a><br>

<a href="admin_view_product.jsp" class="btn btn-dark" style="height: 80px; width: 250px;">View Products</a>
<br>

<a href="vieworderadmin.jsp" class="btn btn-dark" style="height: 80px; width: 250px;">View Order</a>
<br>

<a href="admin_view_users.jsp" class="btn btn-dark" style="height: 80px; width: 250px;">View Users</a>

</div>





<h1>Below is the users list</h1>




<%
List<Products> list=ProductDao.getAllRecords();
request.setAttribute("list",list);
%>



<table border="1" width="90%" class="table table-striped">

<tr>

<td>ID</td>
<td>Name</td>
<td>Author</td>
<td>Comments</td>
<td>Original Price</td>
<td>Discounted Price</td>
<td>Front Cover</td>
<td>Back Cover</td>
<td>Edit</td>
<td>Delete</td>

</tr>

<c:forEach items="${list}" var="u">


<tr>


<td>${u.getIdbooks()}</td>
<td>${u.getName()}</td>
<td>${u.getAuthor()}</td>
<td>${u.getComments()}</td>
<td>${u.getOprice()}</td>
<td>${u.getDprice()}</td>
<td><img src="img/${u.getFcover()}"></td>
<td><img src="img/${u.getBcover()}"></td>
<td><a href="product_editform.jsp?idbooks=${u.getIdbooks()}">Edit</a></td>
<td><a href="product_deleteuser.jsp?idbooks=${u.getIdbooks()}">Delete</a></td>

</tr>

</c:forEach>
</table>


</body>
</html>