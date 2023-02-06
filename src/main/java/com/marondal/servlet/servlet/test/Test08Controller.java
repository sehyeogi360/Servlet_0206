package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")// 당연히 다른 중복되는 주소가 있으면 에러
public class Test08Controller extends HttpServlet{
	
	@Override			//서블릿이 지원해주는 간단한 객체
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 사용자가 입력한걸 기반으로 파라미터 처리하는 '폼'
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // 담을 데이터의 형태
		
		PrintWriter out = response.getWriter();
		// 검색어를 입력 받고,
		String search = request.getParameter("search"); // 파라미터명은 인자로 들어가는 요놈
		// 이름이 같은 이유는 그냥 우연, asdf이렇게 해줘도 됨 변수라서
		// 주어진 문자열 들에서 포함된 문자열만 html에 보여준다.
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		out.println("<html><head><title>검색</title></head><body>");
		
		for (int i = 0; i < list.size(); i++) {
			String word = list.get(i);
			if(word.contains(search)) { //해당 문자열 포함되있는지 찾고, 교체 하고 출력 
				// html에 포함시킨다.
				// 강남역최고 맛집 소개 합니다.
				// 강남역 최고 <b>맛집</b> 소개 합니다.
				
				out.println(word.replace(search, "<b>" + search + "</b>") + "<hr>");	
				//특정한 문자를 다른 문자로 바꾼다? -> replace함수
			}
		}// for(String sentence:list) { // 문자열 안에 특정한 keyword이 포함되어 있는지 확인 } 해줘도 됨 
		// 나머지는 동일 
		//	if(sentence.contains(keyword)) {		
		//		out.println(sentence + "<hr>");
		//	}
		//}
		out.println("</body></html>"); // out.println 만든후 안에다 쌓기. 
		
	}
}
