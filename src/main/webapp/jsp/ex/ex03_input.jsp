<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post input</title>
</head>
<body>
	<form method="post" action = "/jsp/ex/ex03.jsp">
		<labebl>닉네임</labebl> <input type="text" name="nickname"> <%--네임이라는 속성에 밸류에 저장된값이 전달된다(?) --%>
		
		<br>
		
		<h3>강아지 or 고양이 or 사자</h3>
		<label>강아지<input type="radio" name="animal" value="dog"></label><%-- 라디오 버튼은 라벨 안에  --%>
		<label>고양이<input type="radio" name="animal" value="cat"></label>
		<label>사자<input type="radio" name="animal" value="lion"></label><%--근데 이렇게 하면 중복 체크됨 name 속성 넣기 --%>
		
		<h3>좋아하는 과일을 선택하세요</h3>
		<select name="fruit"><%--파라미터 이름 구현 name으로  --%>
			<option value="banana">바나나</option>
			<option value="peach">복숭아</option>
			<option>딸기</option>			<%-- 데이터 밸류값이 없으면 그냥 딸기가 뜸 --%>
		</select>
		
		<h3>좋아하는 음식을 모두 고르세요.</h3>
		<label>민트초코<input type="checkbox" name="food" value="민초"> </label>
		<label>하와이안 피자<input type="checkbox" name="food" value="피자"></label><%-- 이렇게 하면 하나만 전달된다. --%>
		<label>번데기<input type="checkbox" name="food" value="번데기"></label><%--체크박스도 하나의 묶음으로 처리하자 네임 푸드 --%>
		
		
		<br>
		<button type="submit">입력</button>
	</form>
	
</body>
</html>