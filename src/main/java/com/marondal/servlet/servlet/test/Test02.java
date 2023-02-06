package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8"); 
		
		response.setContentType("text/plain"); // html도 가능 test라고 오타 치게되면 다운받아짐 다운받아지면 오타라는 뜻
		
		PrintWriter out = response.getWriter();

// 		현재시간은 14시 52분 43초 입니다.
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
		String dateTimeString = formatter.format(now); //실제 데이터를 만드는 과정
		
		
		out.println("현재시간은 " + dateTimeString); // <h3>< /h3> 타입 html로 바꾸면적용됨
	
	}

}
