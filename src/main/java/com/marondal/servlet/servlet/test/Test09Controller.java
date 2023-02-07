package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 왜 포스트가 되어야 하느냐? 자기소개서 부분이 길어서 200자 이상이므로 큰길이의 데이터이므로
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 자기소개서를 전달 받고, html 화면 구성
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println("<html><head><title>지원결과</title></head><body>");
		
		out.println("<h1>" + name + "님 지원이 완료 되었습니다." + "</h1> <hr>");
		// 404는 무조건 웹 브라우저랑 url 확인
		out.println("<h3>지원 내용</h3>");
		out.println(introduce);
		
		out.println("</body></html>");
		
		
	}

}
