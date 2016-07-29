<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome REST FUL jsp</title>
<style>
	.form1{
		position: absolute;
		left:40%;
		top:10%;
		
	}
	.form2{
		position: absolute;
		left:40%;
		top:30%;
		
	}

</style>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.0.min.js"></script>
	
<script type="text/javascript">
	$(function(){
		$(".delete").click(function(){
			var href=$(this).attr("href").val();
			$("form").attr("action",href);
			$("form").submit();
		})
		
	})
</script>
</head>
<body>
<div>
		<form action="" method="post" >
			<input type="hidden" value="delete" name="_method"/>
		</form>
	 	<table>
		<c:forEach items="${requestScope.groups }" var="g">
		 	<tr>
		 			<td>${g.groupId }</td>
		 			<td>${g.groupName }</td>
		 			<td>${g.groupDesc }</td>
		 			<td><a  href="${pageContext.request.contextPath }/groupAjax/rest/${g.groupId }">update</a></td>
		 			<td><a class="delete"href="${pageContext.request.contextPath }/groupAjax/rest/${g.groupId }">delete</a></td>
		 		
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
		<a href="${pageContext.request.contextPath }/groupAjax/rest">new ADD</a>
</body>
</html>