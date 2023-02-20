package com.marondal.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/database/test02/delete")
public class Test02DeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));//id전달 받고 해당 행을 `site`테이블에서 삭제한다.
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `site` WHERE `id` = " + id + ";";
		
		int count = mysqlService.update(query);//실행된 횟수 리턴
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test02.jsp");// 이동할 페이지 메인 페이지
		
		
	}
}
