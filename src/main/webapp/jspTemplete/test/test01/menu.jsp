<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="main-menu bg-danger "><%--nav item 넣기 --%>
			<ul class="d-flex nav nav-fill justify-content-center align-items-center">
				<li class="nav-item"><a class="nav-link text-white" href="/jspTemplete/test/test01/test01.jsp">전체</a></li><%-- 직접써야 한다함 메뉴 페이지에 없는 변수라서 에러가 뜸. --%>
				<li class="nav-item"><a class="nav-link text-white" href="/jspTemplete/test/test01/test01.jsp?category=지상파">지상파</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jspTemplete/test/test01/test01.jsp?category=드라마">드라마</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jspTemplete/test/test01/test01.jsp?category=예능">예능</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jspTemplete/test/test01/test01.jsp?category=영화">영화</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jspTemplete/test/test01/test01.jsp?category=스포츠">스포츠</a></li>
			</ul>		
</nav>