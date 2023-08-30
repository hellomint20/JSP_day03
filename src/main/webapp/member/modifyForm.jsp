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
		<form action="modify.jsp" method="post">
			<input type="hidden" name="id" value="<%= dto.getId() %>">
			<tr>
				<th>이름</th> <td><input type="text" name="name" value="<%= dto.getName() %>"></td>
			</tr>
			<tr>
				<th>주소</th> <td><input type="text" name="addr" value="<%= dto.getAddr() %>"></td>
			</tr>
			<tr>
				<th>전화번호</th> <td><input type="text" name="tel" value="<%= dto.getTel() %>"></td>
			</tr>
			<tr>
				<td><input type="submit" value="완료"></td>
				<td><button type="button" onclick="location.href='getInfo.jsp?id=<%= dto.getId() %>'">취소</button></td>
			</tr>
		</form>
	</table>
	<%@ include file="/default/footer.jsp" %>
</body>
</html>