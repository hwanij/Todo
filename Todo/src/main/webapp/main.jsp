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
	function ajax(){
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if( xhr.readyState==4 && xhr.status==200){
				console.log(this.responseText);
			}
			
		}
		xhr.open('GET','http://localhost:8080/Todo/main',true);
		xhr.send();
	}

</script>
</head>
<body>
<header>
<h1 id="rotate_title">나의 해야할 일들</h1>
<form action="http://localhost:8080/Todo/TodoFormServlet">
	<input id="enroll" type="submit" value="새로운 TODO 등록">
</form>
<HR>
</header>


<table>

 <c:forEach items="${lists}" var="list">
                <tr>
                    <td><c:out value="${list.title}" /></td>
                    <td><c:out value="${list.name}" /></td>
                    <td><c:out value="${list.regdate}" /></td>
                </tr>
            </c:forEach>
	
</table>
</body>

</html>