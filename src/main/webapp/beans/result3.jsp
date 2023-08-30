<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result3 page <br><br>
	<jsp:useBean id="dto" class="day03.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/> <!-- 모든 값을 자동으로 주입해줌 (넘어오는 값 많을 때 사용 용이) -->
	
	id : <%= dto.getId() %><br>
	pwd : <%= dto.getPwd() %><br>
	name : <%= dto.getName() %><br>
</body>
</html>