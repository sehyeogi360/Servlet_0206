package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03") // url mapping 500error -> 서버 내부 에러 
public class Ex03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 이름과, 생년월일을 전달 받고,
		// 이름과 나이를 html 로 보여준다. 
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json"); // 데이터만 저장
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");// 뒤에 ? 파라미터명 http://localhost:8080/servlet/ex03?name=임세혁 & birthday=20000312
		String birthday = request.getParameter("birthday"); // 그값을 전달해야 한다. 20011204
		
		String yearString = birthday.substring(0, 4);// 4글자만 자를겁니다. 4글자만 잘라서 yearString 이라는 변수 만듦
		int year = Integer.parseInt(yearString); // 숫자로 바꾼다.
		
		int age = 2023 - year + 1;
		
//		out.println("<html><head><title> get method </title> </head> <body>");
//		
//		out.println("<h2> 이름 : " + name + "</h2>");
//		out.println("<h3> 나이 : " + age + "</h3>");		
//		
//		out.println("</body></html>");
		
		// 이름과 나이를 데이터로 response에 담는다.
		// json 
		// {"name":"김인규", "age":22} // key : value 형태 자바나 자바스크립트처럼 저장이아닌 그냥 문자열 
		// ["김인규", "유재석"]
		// [
		//		{"name":"김인규", "age":24}
		//		{"name":"유재석", "age":28}		
		// ]
		//out.println(name);// 이름나이만 나옴 
		//out.println(age); //response는 문자열로 주고 받는 과정
		
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}"); // 역슬래시는 문자열을 묶기 위한 따옴표가 아니라 한다. 화면에 보여주기위한 따옴표
		
		
	}

}
