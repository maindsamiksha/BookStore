<%@page import="com.BookStore.Dao.CartDao"%>
<jsp:useBean id="u" class="com.BookStore.User.Cart"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>


<%
CartDao.delete(u);
response.sendRedirect("vc.jsp");
%>