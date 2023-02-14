<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>   


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족 검색</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
	
		String check = request.getParameter("check");// 체크 박스
		String menu = request.getParameter("menu");//메뉴명 전달 받기
	
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	
	%>
	<%--upcasting downcasting 활용, 리스트 안에 맵들이 있다, 리스트에서 하나의 객체를 꺼낸다 --%>
	<%= check %><%--왼쪽상단에 on이라고 전달됨 --%>
	<div class="container">
		<h1>검색 결과</h1>
		<%-- 일단 테이블 형태를 잘잡아야함. --%>
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
				<%--리스트 를 또 잡아줘야 함 이렇게하면 하나의 맵만 나온다.--%>
				<%--입력창 내역대로 하면 엘스이프문 쭉 뒤로 늘어나게 됨.. 맵의 밸류값 바탕으로 출력 --%>
				<% 		
				for(Map<String, Object> store:list){ //향상된 for문 사용 인덱스 사용할일 없으니.	

					if(store.get("menu").equals(menu)){// 치킨 피자 햄버거 경우의 수 // 일치하는지 확인
						double point = (double)store.get("point");// object 타입 변수로 줘야함 형변환 해야함
					
					if(check == null || (check.equals("pointLimit") && point >= 4.0)){ // 포인트 리미트가 체크된 상태이면 4.0이상만 보여줘라
				%>
						<%-- 하나의 tr을 하나의 맵으로 처리 --%>
					
					<%-- option null도 추가 해야 500에러 안뜸 --%>
					<%-- 리스트서 객체 하나 꺼내오기 향상된 for문, index for문, iterator --%>
					<tr>	<%--하나의 tr을 하나의 맵으로 처리 --%><%--하나의 체크 박스문을 어떻게 가져와야 하는지? --%>
						<td><%= store.get("menu")%></td><%--맵은 스토어라는 이름으로 저장 함 맵밸류를 꺼내오는 기능 .get --%>
						<td><%= store.get("name")%></td>
						<td><%= store.get("point")%></td>
					</tr>
						<%--원하는 과정대로 원하는 결과가 나왔는지 확인 할것.  --%>
						<%}  
						//포인트 리미트가 체크가 안된상태(option == null) 일때 보여준다.
					}
				}%> 
		
			
			</tbody>
		
		</table>
	</div>
	
	

	

	
	
</body>
</html>