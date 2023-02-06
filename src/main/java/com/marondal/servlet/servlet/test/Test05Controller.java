package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet{
	//두개의 페이지를 만든다. 구구단 보여주는 페이지 선택하는 페이지
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		String danString = request.getParameter("dan"); // 값 전달 받기(리퀘스트) /파라미터 받아오는 메소드 이용
		
		int dan = Integer.parseInt(danString); // 문자를 숫자로 변환
		
		
		out.println("<html><head><title>구구단 링크</title></head><body>");
		
		// 5단 리스트 태그로 출력
		out.println("<ul>");
		for(int i = 1; i <= 9; i++) { //단수를 5단만 나오게 하면 안됨 값을 전달 받아야 한다.
			out.println("<li>" + dan + " X " + i + " = " + (dan * i) +  "</li>");
		}
		out.println("</ul>");
		out.println("</body></html>");
		
	}

}
