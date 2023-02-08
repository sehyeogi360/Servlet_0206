<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 수치</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
</head>
<body>
	

	<%
		// 키와 몸무게를 전달 받고,
		// BMI를 계산해서 그결과 보여주기
		//이거 꼭하기
		int height = Integer.parseInt(request.getParameter("height"));//리퀘스트 받아오기	및 숫자로 저장	
		int weight = Integer.parseInt(request.getParameter("weight"));
	

		double BMI = weight / ((height / 100.0) * (height / 100.0));
		
		String resultString = null;//변수선언 바깥에
		if(BMI<=20){ //저체중
			resultString = "저체중";
						
		} else if(BMI <= 25){// 정상 굳이 21이상 넣을필요 없다.
			resultString = "정상";
						
		} else if (BMI <= 30){ // 과체중
			resultString = "과체중";
						
		} else { //비만
			resultString = "비만";					
		} 
	%>
	<div class="conntainer"> <%-- 출력 --%> 
		  <h1>BMI 측정 결과</h1> <br><%--일단 값 임의로 넣고 해보기 그런담에 변수 넣기 --%>
		  <div class="display-4"> 당신은<span class="text-info"> <%=resultString %></span> 입니다.<br>
		  <div>BMI 수치 : <%= BMI %> </div> 
	</div>		
	
	</div>
	

</body>
</html>