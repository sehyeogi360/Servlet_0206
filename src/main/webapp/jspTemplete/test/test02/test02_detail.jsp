<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="/jspTemplete/test/test02/style.css" type="text/css">
</head>
<body>

	<%
	
	// 아티스트 정보 

	    Map<String, Object> artistInfo = new HashMap<>();
	    artistInfo.put("name", "아이유");
	    artistInfo.put("debute", 2008);
	    artistInfo.put("agency", "EDAM엔터테인먼트");
	    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


	// 아이유 노래 리스트 
	    List<Map<String, Object>> musicList = new ArrayList<>();
	
	    Map<String, Object> musicInfo = new HashMap<>();
	    musicInfo.put("id", 1);
	    musicInfo.put("title", "팔레트");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 2);
	    musicInfo.put("title", "좋은날");
	    musicInfo.put("album", "Real");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
	    musicInfo.put("time", 233);
	    musicInfo.put("composer", "이민수");
	    musicInfo.put("lyricist", "김이나");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 3);
	    musicInfo.put("title", "밤편지");
	    musicInfo.put("album", "palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 253);
	    musicInfo.put("composer", "제휘,김희원");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 4);
	    musicInfo.put("title", "삐삐");
	    musicInfo.put("album", "삐삐");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "이종훈");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 5);
	    musicInfo.put("title", "스물셋");
	    musicInfo.put("album", "CHAT-SHIRE");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 6);
	    musicInfo.put("title", "Blueming");
	    musicInfo.put("album", "Love poem");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	    
	    //String search = request.getParameter("search");
		
		String idString = request.getParameter("id"); // parseint null 뜸 항상 둘중에 하나가 널일경우 예외사항 처리해야함
		
		int musicId = 0;// 여기안에서만 쓸수 있으므로 이렇게 전역변수 해주기.
		if(idString != null) {
			 musicId = Integer.parseInt(idString);
		}
		String musicTitle = request.getParameter("title");
	%>
	
	
	<div id ="wrap" class="ml-5">
		<jsp:include page ="header.jsp"/>
		<jsp:include page ="menu.jsp"/>
		<section class="contents">
		<%--id or title 둘중하나를 전달받아 출력 시키게 하기 --%><%--크게 두구역 곡정보/가사정보 --%>
		<h3>곡 정보</h3>
			<article class="contents1 d-flex border border-success p-3"><%--여기안에 div가 또들어가서 그거를 보더 넣기 --%>
				
				<% for(Map<String, Object> artist:musicList) { 
					//시간 분초로 계산 하기
					
				int id = (Integer)artist.get("id");// 이렇게 변수 안에 만들기 이거 안해서 그랬나봄 위에 형변환이랑
				
				//id가 전달되면, id가 일치하는 노래 보여주기
				// 제목이 전달되면, 제목이 일치하는 노래 보여주기
				
				if((idString != null && musicId == id) || 
				musicTitle != null && musicTitle.equals(artist.get("title"))) { // 둘중에 하나만 일치하면 출력 근데 이렇게 하면 둘다 500에러
						//조건 명확하게 정리해야 함.
					
					
					int time = (Integer)artist.get("time");//down casting
					int minute = time / 60;
					int second = time % 60;
	
					%> 
				<div class="photo">
					<img width = "200" src="<%=artist.get("thumbnail") %>" alt ="삐삐">
				
				</div>
				<div class="small"><%--글자작게 --%>
					<div class="display-4"><%=artist.get("title") %></div>
					<div class="display-5 text-success"><%=artist.get("singer") %></div>
					<div class="display-5">앨범 <%=artist.get("album") %></div><%--map 안의 title 키워드 --%>
					<div class="display-5">재생 시간 <%=minute %> : <%=second %></div>
					<div class="display-5">작곡가 <%=artist.get("composer") %></div>
					<div class="display-5">작사가 <%=artist.get("lyricist") %></div>
				</div>
			</article>
			
			<%
				}
				}
			%>
			<aside class="contents2 mt-4"><%--상단여백 --%>
				<h2>가사</h2><hr>
				<div>가사정보없음</div>
						
			
				</aside>
		</section>
		<hr>
		<jsp:include page ="footer.jsp"/>
	</div>
	

</body>
</html>