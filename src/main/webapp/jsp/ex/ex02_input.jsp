<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="get" action="/jsp/ex/ex02.jsp"> <!-- 잘 넣어두기. -->
		<label>이름</label><input type="text" name = "name">
		<label>생년월일</label><input type="text" name="birthday">
		<button type="submit">입력</button><!-- 서브밋 감싸진 인풋태그의 사용자입력값을 액션이 주어진 것으로 전달 한다. -->
	</form>

</body>
</html>