<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<CENTER>
<H1>할일 등록</H1>
<form action="/TodoAddServlet" method="post">
<h3>어떤일인가요?</h3>
<input type="text" name="title" width=1000 size="10">
<h3>누가 할일인가요?</h3>
<input type="text" name="name" width=600 size="10">
<h3>우선순위를 선택하세요</h3>
<input type="radio" value="1순위" name="sequence">
<input type="radio" value="2순위" name="sequence">
<input type="radio" value="3순위" name="sequence">
<br>
<input type="submit" value="제출">
<input type="reset" value="내용지우기">
</form>
</CENTER>
</body>
</html>