<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<div class="conatiner">
	
		<h1> 길이 변환 </h1>
		<form method="post" action = "/jsp/test/test05.jsp">
			<div class="d-flex">
			 	<input type="text" class="form-control col-2" name="numberBox1"><label>cm</label><%--value 값 없애기 --%>
			 </div>
			 
			 <div>	
			 	<label>인치<input type="checkbox" name="unit" value="인치"></label>
				<label>야드<input type="checkbox" name="unit" value="야드"></label>
				<label>피트<input type="checkbox" name="unit" value="피트"></label>
				<label>미터<input type="checkbox" name="unit" value="미터"></label> <br>
			</div>
			 <button type="submit" class="btn btn-success">변환</button>
			 
			
		</form>
	</div>
</body>
</html>