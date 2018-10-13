<%@page import="kr.or.connect.Todo.dao.TodoDao"%>
<%@page import="kr.or.connect.Todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="../Todo/css/style.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function update(){
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if( xhr.readyState==4 && xhr.status==200){
				console.log(this.responseText);
				
			}
			
		}
		xhr.open('POST','http://localhost:8080/Todo/TodoTypeServlet',true);
		xhr.send();
	}
	
	
</script>
</head>
<body>
<header>
<h1 id="rotate_title">나의 해야할 일들</h1>
<form action="http://localhost:8080/Todo/TodoFormServlet">
	<input class="btn" type="submit" value="새로운 TODO 등록">
</form>
<HR>
</header>


<table>
     
	<tr>
		<th>TODO</th>
		<th>DOING</th>
		<th>DONE</th>
	</tr>
 	<tr>
 		<td>
			<form action="http://localhost:8080/Todo/TodoTypeServlet" method="post">
			 	<table id="Todo_table">
			 	
			 		<c:forEach items="${lists}" var="list">
			 			<c:if test="${list.type eq 'TODO' }">
			 			
				 		<tr>
				 			<td><c:out value="${list.title}" /></td>
						</tr>
						<tr>
				 	 		<td><c:out value="${list.name}" /></td>
				 	 		<td><c:out value="${list.regdate}" /></td>
				 	 		<td><input type="hidden" id="type" name="type" value="${list.type}"></td>
				 	 		<td><input type="hidden" id="id" name="id" value="${list.id}"></td>
				 	 		<td><input id="update" type="submit" value="->"></td>
				 	 		
						</tr>
							
						</c:if>
					</c:forEach>
					
			 	</table>
		 	</form>
	 	</td>
	 	<td>
	 		<form action="http://localhost:8080/Todo/TodoTypeServlet" method="post">
		 		<table id="Doing_table">
			 		<c:forEach items="${lists}" var="list">
			 			<c:if test="${list.type eq 'DOING' }">
				 		<tr>
				 	 		<td><c:out value="${list.title}" /></td>
						</tr>
						<tr>
				 	 		<td><c:out value="${list.name}" /></td>
				 	 		<td><c:out value="${list.regdate}" /></td>
				 	 		<td><input type="hidden" id="type" name="type" value="${list.type}"></td>
					 	 	<td><input type="hidden" id="id" name="id" value="${list.id}"></td>
					 	 	<td><input id="update" type="submit" value="->"></td>
						</tr>
						</c:if>
					</c:forEach>
			 	</table>
		 	</form>
	 	</td>
	 	<td>
	 		<table id="Done_table">
		 		<c:forEach items="${lists}" var="list">
		 			<c:if test="${list.type eq 'DONE' }">
			 		<tr>
			 	 		<td><c:out value="${list.title}" /></td>
					</tr>
					<tr>
			 	 		<td><c:out value="${list.name}" /></td>
			 	 		<td><c:out value="${list.regdate}" /></td>
					</tr>
					</c:if>
				</c:forEach>
		 	</table>
	 	</td>
	</tr>

	
</table>
</body>

</html>