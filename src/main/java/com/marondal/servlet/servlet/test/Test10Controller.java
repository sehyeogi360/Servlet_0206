package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
					
		out.println("<html><head><title>로그인</title></head><body>");		
		// 전달 받은 아이디가 맵의 id와 일치하지 않는다면, 경고 문구 
		if(!userMap.get("id").equals(id) && !userMap.get("password").equals(pwd)){ // 자바스크립트가 아니기에 무조건 equals 요거에대응 하는 키값을 넣어준다.
        	out.println("<h2>아이디와 비밀번호를 확인해주세요.</h2>"); //이건 굳이 없어도되는듯.        	
        } else if(!userMap.get("id").equals(id) && userMap.get("password").equals(pwd)) {// 이것도 아이디 조건만
        	out.println("<h2>id가 일치하지 않습니다.</h2>");       
        } else if(userMap.get("id").equals(id) && !userMap.get("password").equals(pwd)) {// 이것도 비번 조건만
        	out.println("<h2>password가 일치하지 않습니다.</h2>");       		
        } else {
        	out.println("<h1>" + userMap.get("name")+ "님 환영합니다." + "</h1>");						
		}
		out.println("</body></html>");
		
	}
	
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	        
	    }    
    
	};
	
	
}
