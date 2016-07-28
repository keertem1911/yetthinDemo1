<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ajax jsp</title>
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript">
		$(function(){
			function ajaxUtil(url,data,callback){
				$.ajax({
					url:url,
					type:"get",
					data:data,
					dataType:"json",
					success:function(msg){
						callback(msg);
					}
				});
			}
			function postUtil(url,data,callback){
				$.post(url,data,function(msg){callback(msg);});
			}
			$(".form1").submit(function(){
				alert("a");
				var url=$(this).attr("action");
				var data=$(".GetgroupId").val();
				postUtil(url, data, function(msg){
					
				})
				return false;
			});
			
		});
	</script>
</head>
<body>
	<div>
		<div class="form1">
			<label>Group</label>
			
			<form action="${pageContext.request.contextPath}/groupAjax/get" 
			class="form1">
				<tr>
					<td colspan="2"><label>get</label></td>
					
				</tr>
				<tr>
					<td><input name="groupId" class="GetgroupId"  type="text"/></td>
					<td><input type="submit" value="submit"/></td>
				</tr>
			</form>
			 
		</div>
	
		<div class="form2">
				
		</div>
	
		<div class="form3">
			<div class="showGet">
				<table class="">
					
				</table>
			</div>
					
		</div>
	
	</div>
</body>
</html>