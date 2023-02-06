package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController extends HttpServlet {//import 
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {//import 해주기 
		PrintWriter out = response.getWriter();//객체 전달 받기 및 임포트 add throws exceptions 클릭
		out.println("Hello World!!");
		
	}
}
