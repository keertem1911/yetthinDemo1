<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
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

</head>
<body>
<div>
	<div class="form1">
 		<label>Group</label>
 	<table>
 	<tr><td><span>getGroup</span></td><td colspan="2">
 	<form   action="group/get" method="get">
 		<input name="group_id" id="group_id" type="text"/>
 		<input type="submit" value="submit"/>
 	</form>
 	</td></tr>
 	<tr><td><span>deleteGroup</span></td><td colspan="2">
 	<form   action="group/delete" method="post">
 		<input name="group_id" id="group_id" type="text"/>
 		<input type="submit" value="submit"/>
 	</form>
 	</td></tr>
 		<tr><td><span>insertGroup</span></td>
 		<td><form   action="group/insert" method="post">
 		<input name="groupName" id="group_name" type="text"/>
 		<input name="groupDesc" type="text" >
 		<input type="submit" value="submit"/>
 	</form>
 	</td></tr>
 	</table>
 	</div>
 	<div class="form2">
 		<label>getUser</label>
 	<form   action="group/update" method="post">
 		<input name="user_id" id="user_id" type="text"/>
 		<input type="submit" value="submit"/>
 	</form>
 	<a href="ajax.jsp">ajaxjsp</a>
 	</div>
 	<a href="group/getAll">getAll</a>
 	</div>
</body>
</html>