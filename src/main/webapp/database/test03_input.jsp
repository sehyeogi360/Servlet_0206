<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="/database/style.css" type="text/css">
		
		
</head>
<body>
	<div id="wrap">
	
	<jsp:include page ="header.jsp"/>
	
	
	
	<h1>물건 올리기</h1>
	<form method="get" action="/database/test03/input">
	<section class="contents mt-3">
		<div class="d-flex"><!-- 판매자명은 seller테이블에 있다는점 -->
			<select id ="sellerInput" class=" form-control col-2" name="seller">
				<option>-아이디 선택-</option>
				<option>마로비</option>
				<option>아메리카노</option>
				<option>최준</option>
				<option>빠다</option>
				<option>빠구루</option>
				<option>다팔아</option>
			</select>
	
			<input type="text" id ="titleInput" class="form-control col-3  ml-3" value = "" placeholder="제목" name="title">
			
			<div class="input-group mb-3 ml-3">
			  <input type="text" id ="priceInput" class="form-control" placeholder="가격" name="price">
			  <div class="input-group-append">
			    <span class="input-group-text" id="basic-addon2">원</span>
			  </div>
			</div>
			
		</div>
	
		<textarea rows="5" cols="160" id ="descriptionInput"class="mt-3">
		
		</textarea>
		
		<div class="input-group input-group-sm mt-3 mb-3">
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="inputGroup-sizing-sm">이미지url</span>
		  </div>
		  <input type="text" id ="pictureInput" class="form-control" name="picture">
		</div>

		<button id="saveButton" type="submit" class="btn btn-secondary btn-lg btn-block">저장	</button>
	
	</section>
	</form>
	
	
	<jsp:include page ="footer.jsp"/>
	</div>
	
	<script>
	$(document).ready(function() {
		
		
		$("#saveButton").on("click", function() {
			
			let seller = $("#sellerInput").val();
			let title = $("#titleInput").val();
			let price = $("#priceInput").val();
			let description = $("#descriptionInput").val();
			let picture = $("#pictureInput").val();
			
			
			//입력 상황	
			if(seller == ""){
				alert("판매자를 선택하세요.");
				return ;
			} 
			
			if (title == ""){
				alert("제목을 쓰세요.");
				return ;
			} 
			
			if(price == ""){
				alert("가격을입력하세요.");
				return ;
				
			}
			
			alert("저장되었습니다.");
			
		});
			
	
	});
		
	</script>
</body>
</html>