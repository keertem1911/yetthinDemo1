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
<title>show data</title>
<style>
	table{
	position:absolute;
		vertical-align: middle;
		width:30%;
		height:40%;
		
	}
	a{
		position: relative;
	}
	 

</style>
</head>
<body>
	<div>
		<div>
	<% 
		if(request.getAttribute("group")!=null){
		Group group=(Group)request.getAttribute("group");
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
	</div>
	<%} %>
	<br/>
	<div>
	<c:if test="${requestScope.user!=null }">
		<table cellpadding="0" cellspacing="0" border="1" bordercolor="black">
		<tr>
			<td>${requestScope.userId }</td>
			<td>${requestScope.userName }</td>
			<td>${requestScope.userEmail }</td>
			<td>${requestScope.userPhone }</td>
		</tr>
		<c:forEach items="${requestScope.user.groups }" var="group">
			<tr>
				<td>${group.groupId }</td>
				<td>${group.groupName }</td>
				<td>${group.groupDesc }</td>
			</tr>
		</c:forEach>
		</table>
	</c:if>
	</div>
		<a href="../index.jsp">back to</a>
</body>
</html>