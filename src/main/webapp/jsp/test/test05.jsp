<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<%
		// cm 길이와 단위들을 전달 받고, 
		// 대상의 단위 결과들을 보여준다
		int numberBox1 = Integer.parseInt(request.getParameter("numberBox1"));//길이
		
		// 단위들 unit
		// inch, yard, feet, meter
		String [] unitArray = request.getParameterValues("unit"); // Values여러개 전달받기
		
		String result = "";// 반복문 밖에 만들기.
		for(int i = 0; i < unitArray.length; i++) { // 배열안의 모든값을 확인한다.->반복문
			String unit = unitArray[i];// 스트링 유닛으로 변경			
		
			
			if(unit.equals("인치")){
				double inch = numberBox1 * 0.393701; // 계산결과를 만드는 문자열을 만들어서 누적 시켜서 더해가라.
				result += inch + "in<br>";
			} else if(unit.equals("야드")){
				double yard = numberBox1 * 0.010936;
				result += yard +"yd<br>";
			} else if(unit.equals("피트")){
				double feet = numberBox1 * 0.032808;
				result += feet+ "ft<br>";
			} else {
				double meter = numberBox1 * 0.01;
				result += meter +"m<br>"; // 세단위가 하나의 문자열로 완성됨.
			}
		}
	
	%>
	
	<h1>변환결과</h1>
	<h1><%= numberBox1%>cm</h1><hr>
	<h1><%= result%></h1>
	</div>
	


</body>
</html>