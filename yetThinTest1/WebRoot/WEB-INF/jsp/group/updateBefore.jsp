<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> update</title>
</head>
<body>
	 <%  String path=request.getServletContext().getContextPath();
	 	request.setAttribute("path", path);
	 %>
	<form:form action="${requestScope.path }/group/update"  method="post" modelAttribute="group">
			<form:hidden path="groupId"/>
			<form:input path="groupName"/>
			<form:input path="groupDesc"/>
			<input type="submit" value="submit"/>
		</form:form>
</body>
</html>