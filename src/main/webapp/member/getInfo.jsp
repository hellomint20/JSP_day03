<%@page import="day03.MemberDAO"%>
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
	<%@ include file="/default/header.jsp" %>
	<jsp:useBean id="dao" class="day03.MemberDAO"/>
	
	<% MemberDTO dto = dao.getInfo( request.getParameter("id")); %>
	
	<h3 align="center">개인 정보</h3>
	<table style="margin: auto">
		<tr>
			<th>아이디</th> <td><%= dto.getId() %></td>
		</tr>
		<tr>
			<th>비밀번호</th> <td><%= dto.getPwd() %></td>
		</tr>
		<tr>
			<th>이름</th> <td><%= dto.getName() %></td>
		</tr>
		<tr>
			<th>주소</th> <td><%= dto.getAddr() %></td>
		</tr>
		<tr>
			<th>전화번호</th> <td><%= dto.getTel() %></td>
		</tr>
		<tr>
			<td><button type="button" onclick="location.href='modifyForm.jsp?id=<%= dto.getId() %>'">수정</button></td>
			<td><button type="submit"  onclick="location.href='delete.jsp?id=<%= dto.getId() %>'">삭제</button></td>
		</tr>
	</table>
	<%@ include file="/default/footer.jsp" %>
</body>
</html>