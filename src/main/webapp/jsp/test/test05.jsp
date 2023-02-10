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

	<div class="conntainer">
	
	 <%
	 	int number1 =  Integer.parseInt(request.getParameter("number1"));
	 	String[] unitArray = request.getParameterValues("unit");
	 	
	 	
	 	String result = "";
	 	
	 	for(int i = 0; i < unitArray.length; i++){
	 		
	 		String unit = unitArray[i];
	 		if(unit.equals("인치")){
		 		
		 		result += number1 * 0.3937 +"인치 <br>";
		 	} else if(unit.equals("야드")){
		 		result += number1 * 0.01936 +"야드 <br>";
		 	} else if(unit.equals("피트")) {
		 		result += number1 * 0.032808 +"피트 <br>";
		 	} else {
		 		result += number1 * 0.01 +"미터 <br>";
		 	}
	 	}
	 
	 	
	 %>
	
	<h2>변환 결과</h2>
	<h2> <%= number1 %> cm</h2>
	<hr>
	<%= result %>
	
	</div>

</body>
</html>