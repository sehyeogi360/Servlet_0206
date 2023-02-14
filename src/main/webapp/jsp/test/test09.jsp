<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 활용 1</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>
	<%-- Calendar 클래스를 사용해서 오늘을 기준으로 기념일이 몇일에 해당하는지 보여주는 페이지를 만드세요.
100일, 200일, 300일... 1000일이 며칠인지 출력하세요.--%>

	<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	// 100일후
	//today.add(Calendar.DATE, 100);
	//today.add(Calendar.DATE, 200);
	//today.add(Calendar.DATE, 300);
	//today.add(Calendar.DATE, 400);
	String dateString = formatter.format(today.getTime());
	
	%>


	<div class="container">
		<h2>오늘부터 1일</h2>

		<%
		int day = 100;
		
		for (int i = 0; i < 10; i++) {
			
			// 변수 하나 만들고 그거를 거기서 100일 씩 추가 하는 방식??
		%>
		<div class="display-3"><%= day%> 일 :</div>
		<div class="display-3 text-danger"> <%=dateString %></div>	
		
		
		<%
		day += 100;
		today.add(Calendar.DATE, 100);
		}
		%>
		
	</div>



</body>
</html>