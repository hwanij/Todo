<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="../Todo/css/style.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
<h1 id="rotate_title">나의 해야할 일들</h1>
<form action="/MainServlet.java">
	<input id="enroll" type="submit" value="새로운 TODO 등록">
</form>
<HR>
</header>


<table>
	<td>
	<tr>TODO</tr>
	<tr>DOING</tr>
	<tr>DONE</tr>
	</td>
	
</table>
</body>
</html>