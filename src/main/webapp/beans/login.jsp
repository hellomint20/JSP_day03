<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>로그인 page</h3>
	<form action="result1.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="password" name="pwd"><br>
		<input type="submit" value="로그인1">
	</form>
	<hr>
		<form action="result2.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="password" name="pwd"><br>
		<input type="submit" value="로그인2">
	</form>
	<hr>
		<form action="result3.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="password" name="pwd"><br>
		<input type="text" name="name"><br>
		<input type="submit" value="로그인3">
	</form>
</body>
</html>