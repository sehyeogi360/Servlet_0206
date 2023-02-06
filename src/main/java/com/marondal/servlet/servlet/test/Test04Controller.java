package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // 데이터 형태		
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>리스트</title></head> <body>");
		
		out.println("<ul>");
		
		for (int i = 1; i <= 30; i++) {// 정확한 반복 범위는? / 30번 반복 
			out.println("<li><b>"+ i +"번째 리스트 </b></li>"); // 태그를 변수로.
		}
		out.println("</ul>");
		
		out.println("</body></html>");
		
		
	}
}
