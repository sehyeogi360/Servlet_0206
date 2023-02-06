package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01 extends HttpServlet{//Test01Controller 로 제목 굳이 쓸필요는 없다 하심. 스프링에서 많이 쓴다 함.
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		response.setCharacterEncoding("utf-8"); // 어떤 캐릭터 인코딩을 쓰는지 알려줌
		// 데이터 타입 (MIME)
		response.setContentType("text/plain"); // 내가 만들 콘텐트 형태
		
		PrintWriter out = response.getWriter(); 

//		오늘의 날짜는 2021년 5월 20일 		
		Date today = new Date();	
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");//생성자로 객체 하나 만든다 파라미터를 물론 전달 받아야 한다.
		String dateTimeString = formatter.format(today); //년월 일관성있게 한자리로 표현.
	
		
		out.println("오늘의 날짜는 " + dateTimeString);
		
		
	}

}
