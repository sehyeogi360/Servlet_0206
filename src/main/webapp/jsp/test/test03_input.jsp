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
        
</head>
<body>

	<h1>체격 조건 입력</h1>
	
	<form method="get" action="/jsp/test/test03.jsp" >
		<div class="d-flex col-5 align-items-end"> <!-- 폼태그로 감싸주기. 두가지속성 메소드, action -->
			<input type="text" class="form-control" name ="height"><label>cm</label>
			<input type="text" class="form-control" name ="weight"><label>kg</label>
			<%--폼컨트롤 넣기 --%>
			<button type="submit" class="btn btn-info ml-3">계산</button><!-- 서브밋 감싸진 인풋태그의 사용자입력값을 액션이 주어진 것으로 전달 한다. -->	
		</div>
	</form>

</body>
</html>