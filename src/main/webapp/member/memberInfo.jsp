<%@page import="day03.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(session.getAttribute("id")== null) {%>
		<script type="text/javascript">
			alert("로그인 해주세요");
			location.href="/day03/member/login.jsp";
		</script>
	<%}%>
	<%@ include file="/default/header.jsp" %>
	<h3 align="center">회원 목록</h3>
	
	<jsp:useBean id="dao" class="day03.MemberDAO"/>
	<%
		ArrayList<MemberDTO> list =  dao.getList();
	%>

	<table border="1" style="margin: auto">
		<tr>
			<th>이름</th> <th>주소</th> <th>전화번호</th>
		</tr>
		<% for(MemberDTO d : list) {%>
			<tr>
				<td><a href="getInfo.jsp?id=<%= d.getId() %>"><%= d.getName() %></a></td>
				<td><%= d.getAddr() %></td>
				<td><%= d.getTel() %></td>
			</tr>
		<%}%>
	</table>
	<%@ include file="/default/footer.jsp" %>
</body>
</html>