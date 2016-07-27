<%@page import="com.yetthin.web.domain.User"%>
<%@page import="java.util.*"%>
<%@page import="com.yetthin.web.domain.Group"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% Group group=(Group)request.getAttribute("group");
		List<User> users=group.getUsers();
	%>
		
		
	<table>
	<tr>
		<td><%=group.getGroupId() %></td>
		<td><%=group.getGroupName() %></td>
		<td><%=group.getGroupDesc() %></td>
	</tr>
	<% for(User user :users){%>
		<tr>
		<td><%= user.getUserId() %></td>
		<td><%=user.getUserName() %></td>
		<td><%=user.getUserEmail() %></td>
		<td><%=user.getUserPhone()%></td>
		</tr>
	<%} %>
	</table>
</body>
</html>