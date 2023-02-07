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
		
		if(!userMap.get("id").equals(id) && !userMap.get("password").equals(pwd)){
        	out.println("아이디와 비밀번호를 확인해주세요.");
        	out.println("</body></html>");
        } else if(!userMap.get("id").equals(id) && userMap.get("password").equals(pwd)) {
        	out.println("id가 일치하지 않습니다.");
        	out.println("</body></html>");	
        } else if(userMap.get("id").equals(id) && !userMap.get("password").equals(pwd)) {
        	out.println("password가 일치하지 않습니다.");
        	out.println("</body></html>");	
        } else {
        	out.println("<h1>" + userMap.get("name")+ "님 환영합니다." + "</h1>");		
			out.println("</body></html>");	
		}
		
	}
	
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	        
	    }    
    
	};
	
	
}
