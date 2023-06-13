package controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//a태그의 클릭 또는 브라우저 주소창에 직접 적은 경우는 doGet이 실행
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 실행 확인!!");
		RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
		dis.forward(request, response);
	}
	//form 태그의 method방식이 post인 경우 doPost가 실행
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("doPost 실행 확인!!");
	}

}
