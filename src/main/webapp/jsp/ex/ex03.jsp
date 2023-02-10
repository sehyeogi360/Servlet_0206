<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		
		String animal = request.getParameter("animal"); //이것도 선언해주기
		
		String fruit = request.getParameter("fruit");
		
		String [] foodArray = request.getParameterValues("food");// 여러개 저장받을때 
		
		String foodString = ""; // 변수 선언
		
		for(int i = 0; i < foodArray.length; i++) {
			foodString += foodArray[i] + " ";			
		}
		
	%>
	
	<h4><%= nickname %></h4>
	<h4><%= animal %></h4>
	<h4><%= fruit %></h4>
	<h4><%= foodString %></h4> <%-- food 가 아닌 foodString으로 --%>
</body>
</html>