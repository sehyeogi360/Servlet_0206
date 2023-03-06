<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div id="wrap" class="">
	
		<jsp:include page ="header.jsp"/>
		
		<section class="contents d-flex flex-wrap justify-content-center">
			<div class="box border border-warning p-3 m-2">
				<img width ="350"src="https://cdn.pixabay.com/photo/2015/01/08/18/25/desk-593327_960_720.jpg" alt="items">
				<div><span class="text-bold">[팝니다] 맥북  프로 팔아요</span> </div>
				<div>180000원</div>
				<div>최준</div>
			</div>
			<div class="box border border-warning p-3 m-2">
				<img width ="350"src="https://cdn.pixabay.com/photo/2014/02/17/14/28/vacuum-cleaner-268179_960_720.jpg" alt="이미지">
				<div> 진공 청소기 팝니다!</div>
				<div>350000원</div>
				<div>하구루</div>
			</div>
			<div class="box border border-warning p-3 m-2">
				<img width ="350"src="https://cdn.pixabay.com/photo/2016/01/20/18/35/x-1152114_960_720.png" alt="이미지">
				<div> 바퀴벌레좀 잡아주세요.</div>
				<div>180000원</div>
				<div>최준</div>
			</div>
			<div class="box border border-warning p-3 m-2">
				<img width ="350"src="https://cdn.pixabay.com/photo/2016/01/20/18/35/x-1152114_960_720.png" alt="이미지">
				<div> 후라다 여성지갑 팝니다</div>
				<div>200000원</div>
				<div>최준</div>
			</div>
			<div class="box border border-warning p-3 m-2">
				<img width ="350"src="https://cdn.pixabay.com/photo/2015/01/08/18/25/desk-593327_960_720.jpg" alt="이미지">
				<div> 원피스 팝니다</div>
				<div>200000원</div>
				<div>마로비</div>
			</div>
			<div class="box border border-warning p-3 m-2">
				<img width ="350"src="https://cdn.pixabay.com/photo/2021/09/07/07/11/game-console-6603120_960_720.jpg" alt="이미지">
				<div> 플스4 팝니다</div>
				<div>100000원</div>
				<div>마로비</div>
			</div>
		</section>
		
	
		<jsp:include page ="footer.jsp"/>
	</div>






</body>
</html>