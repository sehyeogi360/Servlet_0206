<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.Arrays" %>
<%@ page import = "java.util.Scanner" %>      

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<%--1. 점수들의 평균 구하기 --%>
	
	<%
		// 1부터 10까지 합 여기서 맘껏 활용하면 된다.
		int[] scores = {80, 90, 100, 95, 80};
		
		int sum = 0;//더할 값을 저장할 변수
		
		for(int i = 0 ; i < scores.length; i++) {// 배열길이동안 작을 동안만			
			sum += scores[i];// 누적 저장			
		}
		
		double average = sum / (double)scores.length;
	%> 
	<%-- double 로 하기  태그는 이렇게 처리--%>
	<h1> 점수의 평균은 <%= average %> 입니다. </h1> 
	
	<%--2. 채점 결과 --%>
	
	
	<%-- 리스트, array 임포트 해주기--%>
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		// 향상된 for문으로 해보기
		int score = 0;
		for(String answer:scoreList) {
			
			
			if(answer.equals("O")){ //equals 써야함
				score += 100 / scoreList.size();
			}
		}

	%>

	 <h2> 채점 결과는<%= score %> 점 입니다</h2>  
	
	<%--3. 1부터 n까지의 합계를 구하는 함수 --%>

	<%!
		//int number = 10;
		public int getSum(int number) {// 범위를 전달 받기	
		
		int sum = 0;
		for(int i = 1; i <= number; i++){			
			sum += i;
		}		
		return sum;
	}	
	%>
	
	<h2>1 에서 50 까지합은 <%= getSum(50) %> 입니다.</h2>
	
	<%--4. 나이 구하기 --%>

	<%!
	
			String birthDay = "20010820";
			
			int year =Integer.parseInt(birthDay.substring(0,4));
			
			int age = 2023 - year + 1;
			
		
	%>
	
	<h2><%= birthDay %> 의 나이는<%= 2023 - year + 1 %> 살</h2>

</body>
</html>