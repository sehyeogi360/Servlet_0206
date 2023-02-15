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

	


	<div class="container">
		<h2>오늘부터 1일</h2>
		<%
			Calendar today = Calendar.getInstance();//캘린더 객체 생성
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");//원하는 형태의 데이터
			
			// 오늘은 1일로 하기위해서
			today.add(Calendar.DATE, -1);
			// 100일후
			
			//today.add(Calendar.DATE, 200);
			//today.add(Calendar.DATE, 300);
			//today.add(Calendar.DATE, 400);
			today.add(Calendar.DATE, 100);//뭘 더할지, 얼마 더할지 그런담에 99지우고 100을쓰면 됨 
			String dateString = formatter.format(today.getTime());//데이트 객체 뽑아내기
	
		
		//int day = 100; //차라리 데이라는 변수 주지 말고 <%= i * 100  하는것도 좋은방법.
		
		for (int i = 1; i <= 10; i++) {//처음부터 반복문 사용하지 말기
			
			// 변수 하나 만들고 그거를 거기서 100일 씩 추가 하는 방식??
		
		
		%><%--위에 꺽새도 그냥 하나 지우기. --%>
		
		<div class="display-3"><%= i*100%> 일 :<span class="text-danger"> <%=dateString %></span></div>	<%--이렇게 특정문자만 색 지정. --%>
		
		
		<%
		//day += 100;
		today.add(Calendar.DATE, 100); //문자열로 다시 만들기 시작점만 하나 앞으로 땡기고 나머지는 그대로
		dateString = formatter.format(today.getTime()); //여기에 한번 더하니 된다??
		}
		%>
		
	</div>



</body>
</html>