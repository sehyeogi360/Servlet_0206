package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03") // url 매핑이 필요해서.
public class Test03Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // 채울 데이터 형태

		Date now = new Date(); // 날짜 입력 하기

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss"); // 날짜시간을 원하는 데이터 형식대로 만들수 있다. 여기선 월
																					// 대문자
		String dateTimeString = formatter.format(now);

		PrintWriter out = response.getWriter(); //리스폰스라는 객체 안에있다. getwriter 라는 멤버변수 불러낸다.

		out.println("<html><head><title>기사</title></head>");
		out.println("<body><h1><b>[단독] 고양이가 야옹해</b></h1>");
		out.println("기사 입력시간 : " + dateTimeString);
		out.println("<hr>끝</body></html>"); // html 태그 마지막에 닫기 그리고 hr 줄 추가

	}
}
