<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="hedder.jsp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="javax.servlet.*"%>
<html>
<head>
    <title>Mess Bill</title>
</head>
<body>
<%Date date = new Date();
SimpleDateFormat ft = new SimpleDateFormat("E dd.MM.yyyy");%>
<h2 align="center"><b>Mess bill untill </b><%out.print(ft.format(date));%> </h2><br><br><br>
<%HttpSession session = request.getSession();
String n = (String)session.g%>
</body>
</html>

<%@include file="footer.jsp"%>
