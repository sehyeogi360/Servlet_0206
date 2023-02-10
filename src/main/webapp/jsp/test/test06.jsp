<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.*"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장보기 목록</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
 		<h1>장목록</h1>
 	</div>
 	<%
 		List<String> goodsList = Arrays.asList(new String[]{ 
 		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
 		});
 	// 리스트 넣기 및 리포트 양식으로 간단하게 *
	 
 	
 	%>
 	
 	<table class="table text-center"   width="300">
 		<thead>
 			<tr>
 				<th>번호</th>
 				<th>종목</th>
 			</tr>
 		
 		</thead>
 		
 		 <%--thead, tbody 나누기  --%>
 		
 		
 	
 		<tbody> <%-- tr 부분을 쭉 복붙하면 생기겠구나 -> for문 활용 for문 안에다가 활용 --%>
 		<%
 		for(int i = 0; i <goodsList.size(); i++) { // 이터레이터, 향상된 for문 모두 가능 하지만 여기선 index가 좋을듯
 			String goods = goodsList.get(i);
 		%>
	 		<tr>			
	 			<td><%= i + 1 %> </td> <%--1씩증가 하는 숫자 i 위의 i를 1로수정하면 안됨 --%>
	 			<td><%= goods %></td>		
	 		</tr>
 		
 		<%} %>
 		</tbody><%--tbody 밖에 --%>
 		</table>
	
</body>
</html>