<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.*" %>    
<%@page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 달력 클래스 다루기
		Calendar today = Calendar.getInstance(); 
	
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");//오늘 날짜 보여주는 것
	
		// 15일전
		today.add(Calendar.DATE, -15);
		
		// 3달전 
		today.add(Calendar.MONTH, -3);
		
		
		String dateString = formatter.format(today.getTime());//캘린더에는 date 객체가 들어가있따.
	%>
	
	<div><%= dateString  %></div>

</body>
</html>