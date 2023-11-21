<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.project4.dao.BoardDAO, com.example.project4.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Post</title>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>View Post</h1>
<table>
    <tr><td>ID:</td><td><%= u.getSeq() %></td></tr>
    <tr><td>Title:</td><td><%= u.getTitle()%></td></tr>
    <tr><td>Writer:</td><td><%= u.getWriter()%></td></tr>
    <tr><td>Category:</td><td><%= u.getCategory()%></td></tr>
    <tr><td>Content:</td><td><%= u.getContent()%></td></tr>
    <tr><td>Regdate:</td><td><%= u.getRegdate()%></td></tr>
    <tr><td>Editdate:</td><td><%= u.getEditdate()%></td></tr>
</table>
<br/><a href="index.jsp">Post로 돌아가기</a>

</body>
</html>
