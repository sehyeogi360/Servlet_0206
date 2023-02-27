package com.marondal.servlet.database;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/database/test03/output")
public class Test03OutputController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
	
	int id = Integer.parseInt(request.getParameter("id"));
	
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();


	String query = "SELECT * \r\n"
			+ "FROM `used_goods`\r\n"
			+ "ORDER BY `id` DESC;";
	
	int count = mysqlService.update(query);
		
	mysqlService.disconnect();
	
	response.sendRedirect("/database/test03.jsp");
	}	
}
