package com.marondal.servlet.servlet.ex;



import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException { 
		// response header 셋팅 
		// 캐릭터 셋 
		response.setCharacterEncoding("utf-8"); // 아까만든 문자열의 캐릭터셋은 utf8이다. 
		// 데이터 타입 (MIME)
		response.setContentType("text/plain"); // response 설정
		
		// 날짜 표현하기
		// 현재 날짜 시간을 2023-02-01 17:31:12
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); // 날짜시간을 원하는 데이터 형식대로 만들수 있다. 여기선 월 대문자
		String dateTimeString = formatter.format(now);//새로고침하는 그시간이 인풋된다
		
		// response에 값 채우기 
		PrintWriter out = response.getWriter();//객체를 얻어내는거 프린트 라이터 add throws 책임 전복
		out.println(now);
		out.println(dateTimeString); //404 error =  url 에러 Servlet지우고 하니 잘된다. http://localhost:8080/servlet/ex01
		
		
		
		
		
	}
	
}
