<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.marondal.servlet.common.MysqlService"%>    
<%@ page import ="java.sql.ResultSet" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance(); //데이터베이스 접속 싱글톤 관리
		mysqlService.connect();
		
		String query = "SELECT * FROM `site` ORDER BY `id` DESC;";//쿼리 생성 id기준 내림차순 createdAt으로도 조회가능
		ResultSet resultSet = mysqlService.select(query);
		
	%>
	
	<table width = 300 class="table text-center">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>		
				<th></th>
			</tr>
		</thead>
		<tbody>
		
		<% while(resultSet.next()) { %>
			<tr>
				<td><%= resultSet.getString("name")%></td><%--사이트 명 --%>
				<td><a href="<%= resultSet.getString("url") %>" target ="_blank"><%= resultSet.getString("url") %></a></td>
				<td><a href="/database/test02/delete?id=<%= resultSet.getInt("id") %>">삭제</a></td>	<%--버튼 하나더 추가. --%>			
			</tr>											<%--해당하는 행에 대응하는 id삭제 --%>
		<%} %>
		</tbody>
	
	
	</table>
	


</body>
</html>