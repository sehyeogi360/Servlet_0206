<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
	 List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {
        { 
            put("id", 1000);
            put("title", "아몬드"); 
            put("author", "손원평"); 
            put("publisher", "창비");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1001);
            put("title", "사피엔스"); 
            put("author", "유발 하라리"); 
            put("publisher", "김영사");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1002);
            put("title", "코스모스"); 
            put("author", "칼 세이건"); 
            put("publisher", "사이언스북");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1003);
            put("title", "나미야 잡화점의 기적"); 
            put("author", "히가시노 게이고"); 
            put("publisher", "현대문학");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
        } 
    };
    list.add(map);
	%>
	
	<div class="container">
	<h2>책목록</h2>
	
	
		<table class="table text-center">
			<thead>
				<tr>
					<th>id</th>
					<th>표지</th>
					<th>제목</th>			
				</tr>
				
			</thead>
			
			<tbody>
				<% 
				for(int i = 0; i < list.size(); i++) { 
					//리스트를 반복으로 처리 이번엔 index로 해보자
 					Map<String, Object> book = list.get(i);//헷갈리면 이렇게 꺼내자
				%>
				<tr>
					<td><%= book.get("id") %></td><%--id 라는 키로 바꿔준다. --%>
					<td><img width = 70px alt = "<%=book.get("title")%>" src="<%=book.get("image") %>"></td><%--표지주소 이미지 태그 alt 에 제목 --%>
					<td class="display-4"><a href="/jsp/test/test08_output.jsp?id=<%=book.get("id") %>"><%= book.get("title") %></a></td><%--a한담에 #태그 제목들어갈부분--%>
				</tr>		<%--파라미터를 링크에 걸어줘야 함 근데 이렇게 하면 한링크로만 이동 id만 바뀌게 할려면?? 그럼 거기만 변수로--%>
				
				<% }%>	
			</tbody>
			<%--폼태그 굳이 필요하지않음 링크로 이동하기에 --%>
		
		</table>

	</div>

</body>
</html>