<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<header class="d-flex"><%--디플렉스 추가 --%>
		<form method="post" action = "/jspTemplete/test/test02/test02_detail.jsp">
			<div class="d-flex  justify-content-center align-items-center">
				<h1 class="text-success ml-2">Melong</h1>
				 <input type="text" class="form-control col-6" name="search">
				<button type="submit" class="btn btn-info">검색</button>
			</div>
		<%-- 인풋 그룹	 검색 후 붙여넣기 --%>
			
		</header>