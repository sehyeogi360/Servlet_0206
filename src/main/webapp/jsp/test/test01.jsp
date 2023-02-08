<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.Scanner" %>      

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--1. 점수들의 평균 구하기 --%>
	
	<%
		// 1부터 10까지 합
		int[] scores = {80, 90, 100, 95, 80};
		
		int sum = 0;
		
		for(int i = 0 ; i < scores.length; i++) {
			
			sum += scores[i];
			
		}
		
		
	%>
	<h1> 평균 : <%= sum / scores.length %></h1>
	
	<%--2. 채점 결과 --%>
	
	
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	for(int i = 0; i < scoreList.size(); i++) {
		
		Score score = scoreList.get(i);
		if(score == 'O'){
			sum += 20;
		}
	}
		
	
	%>
	
	<h2> <%= sum %></h2>
	
	<%--3. 1부터 n까지의 합계를 구하는 함수 --%>
	<%!
		Scanner scan = new Scanner(System.in);
		
		public int getSum() {
		System.out.println("숫자를 입력하세요: ");	
		int n = scan.nextInt();
		int sum = 0;
		for(int i = 1; i <= n; i++){			
			sum += i;
		}		
		return sum;
	}
	
	
	%>
	
	<h2><%= getSum() %></h2>
	
	<%--4. 나이 구하기 --%>


</body>
</html>