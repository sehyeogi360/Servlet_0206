<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<form method="get" action = "/jspTemplete/test/test02/test02_detail.jsp">
		<header class="d-flex"><%--디플렉스 추가 --%>
		
			<div class="logo d-flex align-items-center">
				<h1 class="text-success ml-2">Melong</h1>
			</div>
		
			<div class="d-flex  align-items-center">
				
				 <input type="text" class="form-control col-6" name="title"> <%--이것도 타이틀로 안헷갈리게 바꿔준다. --%>
				
				<button type="submit" class="btn btn-info">검색</button>
				
			</div>
		<%-- 인풋 그룹	 검색 후 붙여넣기 --%>
		
		</header>
		</form>