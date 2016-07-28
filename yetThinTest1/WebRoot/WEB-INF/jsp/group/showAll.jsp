<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>show All groups</title>
</head>
<body>
		<table>
		<c:forEach items="${requestScope.groups }" var="g">
		 	<tr>
		 			<td>${g.groupId }</td>
		 			<td>${g.groupName }</td>
		 			<td>${g.groupDesc }</td>
		 			<td><a href="${pageContext.request.contextPath }/group/updateBefore?group_id=${g.groupId }">update</a></td>
		 		<c:forEach items="${g.users }" var="u">
		 			<tr>
		 				<td>${u.userId }</td>
		 				<td>${u.userName }</td>
		 				<td>${u.userEmail }</td>
		 				<td>${u.userPhone }</td>
		 			</tr>
		 		</c:forEach>
		 	</tr>
		
		
		
		</c:forEach>
		
		</table>
</body>
</html>