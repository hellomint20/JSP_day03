<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/default/header.jsp" %>
	<h3>Login Page</h3>
	
	<form action="check.jsp" method="post">
		<input type="text" name="id" placeholder="아이디"><br>
		<input type="password" name="pwd" placeholder="비밀번호"><br>
		<input type="submit" value="로그인">
	</form>
	<a href="registerForm.jsp">회원가입</a>
	<%@ include file="/default/footer.jsp" %>
</body>
</html>