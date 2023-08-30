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
	<jsp:useBean id="dto" class="day03.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<% int result = dao.modify( dto ); 
	if(result == 1){%>
	<script type="text/javascript">
		alert("수정 되었습니다");
		location.href="/day03/member/getInfo.jsp?id=<%= dto.getId() %>";
	</script>
	<%}
	
	%>
	
	<%@ include file="/default/footer.jsp" %>
</body>
</html>