<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 이름과 생년월일을 전달 받고
		// 이름과 나이를 보여주는 페이지 
		String name = request.getParameter("name"); // 어디서나 객체를 받아올수 있음
		String birthday = request.getParameter("birthday");
		
		int year = Integer.parseInt(birthday.substring(0, 4));
		
		int age = 2023 - year + 1;
		
	%>
	
	<table border="1">
		<tr>
			<th>이름</th>
			<td><%= name %></td> 
		</tr>
		<tr>
			<th>나이</th>
			<td><%= age %></td> <%-- 여기다가 age --%>
		</tr>
	
	</table>

</body>
</html>