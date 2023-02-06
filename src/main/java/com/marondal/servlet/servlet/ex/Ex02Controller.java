package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02") // 이것도 임포트 매핑하고 싶은거 넣기
public class Ex02Controller extends HttpServlet{
	
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter(); // 우리는 클래스의 사용법에 맞춰서 이것을쓰고 있다.
		
		// 1 ~ 10 까지의 합을 html로 구성해서 response 에 담는다. 
		int sum = 0; 
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		out.println("<html><head><title>합계</title></head> <body>"); // 일일이 직접 쓰는거 밖에 답이없다. 
		out.println("합계 : <b>" + sum + "</b></body></html>");
		// project->clean .. 싹다 지운담에 시작 하게 됨. 오늘과 같은 404 error 사태
	}
}
