<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.marondal.servlet.common.MysqlService"%>    
<%@ page import ="java.sql.ResultSet" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="/database/style.css" type="text/css">
</head>
<body>
 	<%-- String query 추가 반복문으로 리스트 출력 하기 및 hover --%>
	<% 
		MysqlService mysqlService = MysqlService.getInstance(); //데이터베이스 접속 싱글톤 관리
		mysqlService.connect();
		
		String query = "SELECT * FROM `used_goods` ORDER BY `id` DESC;";//쿼리 생성 id기준 내림차순
		ResultSet resultSet = mysqlService.select(query);
	
	%>


	<div id="wrap" class="">
	
		<jsp:include page ="header.jsp"/>
		
		<section class="contents d-flex flex-wrap justify-content-center">
			
			<% while(resultSet.next()){ %>
			<div class="box border border-warning p-3 m-2">
				<img width ="350" height = "300" src="<%=resultSet.getString("picture") %>" alt="items">
				<div><span class="text-bold"><%=resultSet.getString("title") %></span> </div>
				<div><%= resultSet.getInt("price") %>원</div>
				<div><%= resultSet.getString("description") %></div>
				<div><%=resultSet.getInt("id") %></div>
			</div>
			<%} %>
			
		</section>
		
	
		<jsp:include page ="footer.jsp"/>
	</div>






</body>
</html>