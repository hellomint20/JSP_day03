<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Bean Quiz</h3>
<hr>
<header>
	<a href="<%= request.getContextPath() %>/member/index.jsp">HOME</a>
	<a href="<%= request.getContextPath() %>/member/memberInfo.jsp">회원 정보</a>
	<% if( session.getAttribute("id") != null ) {%>
		<a href="<%= request.getContextPath() %>/member/logout.jsp">Logout</a>
	<%}else{%>
		<a href="<%= request.getContextPath() %>/member/login.jsp">Login</a>
	<%}%>
</header>
<hr>
</body>
</html>