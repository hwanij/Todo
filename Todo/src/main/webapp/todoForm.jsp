<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="../Todo/css/style.css?after"/>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");	
%>

<H1>할일 등록</H1>
<div class="center">
<form action="http://localhost:8080/Todo/TodoAddServlet" method="post">
<h3>어떤일인가요?</h3>
<input type="text" name="title" width=1000 size="10">
<h3>누가 할일인가요?</h3>
<input type="text" name="name" width=600 size="10">
<h3>우선순위를 선택하세요</h3>
<input type="radio" value="1" name="sequence">1순위  
<input type="radio" value="2" name="sequence">2순위 
<input type="radio" value="3" name="sequence">3순위 
<br>
<input class="btn" type="reset" value="내용지우기">
<input class="btn" type="submit" value="제출">
</form>
</div>
</body>
</html>