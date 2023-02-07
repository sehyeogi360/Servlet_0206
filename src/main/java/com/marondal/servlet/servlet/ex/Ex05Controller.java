package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {//get 이냐 post냐 선택을 할뿐 큰 차이 없다. 
//		request.setCharacterEncoding("utf-8");//이거까지 추가해야 한글 안깨짐
//		response.setCharacterEncoding("utf-8"); // 비밀번호 같은 위험한정보가 있을때, 주소의 범위를 넘어갈정도로 긴 정보가 포함되있을때 post 
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고, 이름과 나이를 html 구성
		String name = request.getParameter("name"); // 이안에서 쓸라고 만든 변수명 name "name"은 파라미터
		String birthday = request.getParameter("birthday"); // 20001122
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		// 405에러 허용되지않는 메소드 브라우저는 무조건 겟이라서 오류가 뜨는거임 간단히 말하면 포스트는 폼이라는 놈을 통해서만 가능 
		int age = 2023 - year + 1;
		
		out.println("<html><head><title>이름나이</title></head><body>");
		
		out.println("<h2>이름 : " + name + "</h2>");
		out.println("<h3>나이 : " + age + "</h3>");
		//파라미터 포함안하면 500error 
		out.println("</body></html>");
		
		
		
	}
	
}
