<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.*" %>    
<%@page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 활용 2</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
		Calendar today = Calendar.getInstance(); 
		int year = today.get(Calendar.YEAR);
	    int month = today.get(Calendar.MONTH);
	    int date = today.get(Calendar.DATE);
	
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	
		String dateString = formatter.format(today.getTime());
	
		//윤년 계산
		int[] lastDay= {31,28,31,30,31,30,31,31,30,31,30,31};
		if((year%4==0 && year%100!=0)||(year%400==0)){
			lastDay[1]=29;
		} else {
			lastDay[1]=28;
		}
	
	%>
	<div class="container">
	<h1 class="text-center"><%=year %> - <%=month + 1 %></h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
			
			<%for(int i = 0; i < 5; i++){
				for(int j = 0; j < 7; j++){
				
					
					//getDate()메소드는 1월부터 12월까지 해당 월이 며칠까지 있는지를 리턴해주는 코드입니다.
				}}%>
				<tr>
					<td class="text-danger">1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
			
				
				
			</tbody>
		</table>
	</div>
</body>
</html>