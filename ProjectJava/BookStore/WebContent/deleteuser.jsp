<%@page import="com.BookStore.Dao.UserDao"%>
<jsp:useBean id="u" class="com.BookStore.User.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>


<%
UserDao.delete(u);
response.sendRedirect("admin_view_users.jsp");
%>