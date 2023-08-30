<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test2 page <br><br>
	
	<%@ include file="test1.jsp" %> <!-- 다른 페이지 가져오는 방법 (두 개의 파일을 합쳐서 한 번에 번역) -->
	<hr>
	<jsp:include page="test3.jsp" /> <!-- 다른 페이지 가져오는 방법 (각각 번역 함) -->
	<hr>
	
	<h3>내용</h3>
	test1 : <%= msg %><br> <!-- 변수 사용 가능 (include 지시자) -->
	test3 : <%-- m --%><br> <!-- 변수 사용 불가능 (include 태그) → 오류남 -->
</body>
</html>