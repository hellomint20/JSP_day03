<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dto" class="day03.MemberDTO" /> <!-- MemberDTO dto = new MemberDTO(); 위랑 같은 의미 -->
	
	<!-- property 는 dto에 있는 변수명 (넘어오는 값이랑 변수명이 같아야 됨) -->
	<jsp:setProperty property="id" name="dto"/> <!-- setter 와 같은 의미 (dto.setId(id);) -->
	<jsp:setProperty property="pwd" name="dto"/>
	
	id : <jsp:getProperty property="id" name="dto"/><br> <!-- getter 와 같은 의미 (dto.getId();) -->
	pwd : <jsp:getProperty property="pwd" name="dto"/>
</body>
</html>