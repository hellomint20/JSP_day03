<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="day03.MemberDAO" />
	
	<% int result = dao.check(request.getParameter("id"), request.getParameter("pwd"));
		if(result == 2){
			session.setAttribute("id", request.getParameter("id"));
		%>
			<script type="text/javascript">
				alert("로그인 성공")
				location.href="/day03/member/successLogin.jsp"
			</script>
		<%}else if(result == 1){ %>
			<script type="text/javascript">
				alert("비밀번호가 틀렸습니다")
				location.href="/day03/member/login.jsp"
			</script>
		<%}else{ %>
			<script type="text/javascript">
				alert("일치하는 아이디가 없습니다")
				location.href="/day03/member/login.jsp"
			</script>
		<%}
	%>
	
</body>
</html>