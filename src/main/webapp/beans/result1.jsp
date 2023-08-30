<%@page import="day03.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		MemberDTO dto = new MemberDTO(); //객체 만들어서 사용하는 방식
		dto.setId(id);
		dto.setPwd(pwd);
	%>
	id : <%= dto.getId() %><br>
	pwd : <%= dto.getPwd() %>

</body>
</html>