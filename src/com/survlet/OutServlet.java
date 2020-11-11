package com.survlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OutServlet")
public class OutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 서블릿에서 out객체를 이용해서 브라우저 화면으로 문자열 데이털르 전송할 수 있다.
		// 브라우저에 out객체를 이용해서 데이터를 보낼 때 브라우저에게 해석할 수 있는 힌트를 줘야 한다.(contentType)
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();	// 브라우저 화면에 출력할 PrintWriter 객체를 얻는 방법
		out.println("<b>안뇽?</b>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}