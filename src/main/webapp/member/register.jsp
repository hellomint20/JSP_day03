<%@page import="day03.MemberDTO"%>
<%@page import="day03.MemberDAO"%>
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
	<jsp:useBean id="dto" class="day03.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	
	<% 
		System.out.println(dto.getId());
		int result = dao.register(dto);
		
		if(result == 1){%>
			<script type="text/javascript">
				alert("회원가입 되었습니다. 로그인을 진행해주세요");
				location.href="/day03/member/index.jsp";
			</script>
		<%}
	%>
		
	<%@ include file="/default/footer.jsp" %>
</body>
</html>