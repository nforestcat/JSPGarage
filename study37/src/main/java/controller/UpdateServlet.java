package controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import beans.Member;


@WebServlet("/Update.do")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("UpdateServlet doGet 실행 확인!!");
		String userid = request.getParameter("userid");
		MemberDAO mDAO = MemberDAO.getInstance();
		Member m = new Member();
		m = mDAO.getMember(userid);
		request.setAttribute("mem", m);
		RequestDispatcher dis = request.getRequestDispatcher("update.jsp");
		dis.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("UpdateServlet doPost 실행 확인!!");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		Member m=new Member();
		m.setName(name);
		m.setUserid(userid);
		m.setPwd(pwd);
		m.setEmail(email);
		m.setPhone(phone);
		
		MemberDAO mDAO = MemberDAO.getInstance();
		mDAO.updateMember(m);
		
		response.sendRedirect("Login.do");
		
	}

}
