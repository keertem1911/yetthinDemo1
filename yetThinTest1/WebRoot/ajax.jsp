<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ajax jsp</title>
<style type="text/css">
	
	.div1{
		left:30%;
		top:10%;
		position: absolute;
		vertical-align: middle;
	}
	.div2{
		left:30%;
		top:30%;
		position: absolute;
		vertical-align: middle;
	}
	tr{
		weight:80px;
		height:30px;
		text-align: center;
	}
	label {
		text-align: center;
	 
	}
	
</style>
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
			$(".btn").click(function(){
				var classa=$(this).attr("class");
				classa=classa.split(" ")[0];
				var data={};
				console.log(classa);
				var url;
				if(classa=="sub1"){
					data["groupId"]=$(".GetgroupId").val();
					url="groupAjax/get";
				}else if(classa=="sub2"){
					data["groupId"]=$(".DeletegroupId").val();
					url="groupAjax/delete";
				}else if(classa=="sub3"){
					data["groupName"]=$(".InsertgroupName").val();
					data["groupDesc"]=$(".InsertgroupDesc").val();
					 
					url="groupAjax/insert";
					
				}
				var callback=function(msg){
					console.log(msg);
				}
				if(classa=="sub1"||classa=="sub2")
				ajaxUtil(url, data, callback);
				else if(classa=="sub3")
			 	postUtil(url, data, callback); 
				return false;
			});
			
		});
	</script>
</head>
<body>
	<div>
		<div class="div1">
			<label>Group</label>
			
		
			<table>
				<tr>
					<td colspan="2"><label>get</label></td>
					
				</tr>
				<tr>
					<td><input name="groupId" class="GetgroupId"  type="text"/></td>
					<td><input type="button"  class="sub1 btn" value="submit"/></td>
				</tr>
			</table>
		 
			 <form action="${pageContext.request.contextPath }/groupAjax/delete" 
			 method="post"  class="form2">
			 <table>
			 	<tr>
					<td colspan="2"><label>delete</label></td>
				</tr>
				<tr>
					<td><input name="groupId" class="DeletegroupId"  type="text"/></td>
					<td><input type="button"  class="sub2 btn" value="submit"/></td>
				</tr>
				</table>
			 </form>
			  <form action="${pageContext.request.contextPath }/groupAjax/insert" 
			 method="post"  class="form3">
			 <table>
			 	<tr>
					<td colspan="2"><label>insert</label></td>
				</tr>
				<tr>
					<td><input name="groupName" class="InsertgroupName"  type="text"/></td>
					<td><input name="groupDesc" class="InsertgroupDesc" type="text"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" class="sub3 btn" value="submit"/></td>
				</tr>
				</table>
			 </form>
			 
		</div>
	
		<div class="div2">
				
		</div>
	
		<div class="div3">
			<div class="showGet">
				<table class="">
					
				</table>
			</div>
					
		</div>
	
	</div>
</body>
</html>