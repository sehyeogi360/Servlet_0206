<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.marondal.servlet.common.MysqlService"%>    
<%@ page import ="java.sql.ResultSet" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				
			</tr>
		</thead>
		<tbody>
		
		<% while(resultSet.next()) { %>
			<tr>
				<td><%= resultSet.getString("name")%></td><%--사이트 명 --%>
				<td><a href="<%= resultSet.getString("url") %>"><%= resultSet.getString("url") %></a></td>
				<td><a href="/database/test02/delete?id=<%= resultSet.getInt("id") %>">삭제</a></td>
			
			</tr>		
		<%} %>
		</tbody>
	
	
	</table>
	


</body>
</html>