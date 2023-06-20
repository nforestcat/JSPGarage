package controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import DAO.MemberDAO;
import beans.Member;

@WebServlet("/Join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("JoinServlet doGet 실행 확인");
		RequestDispatcher dis = request.getRequestDispatcher("/register.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("JoinServlet doPost 실행 확인");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String admin = request.getParameter("admin");
		MemberDAO mDAO = MemberDAO.getInstance();
		Member m = new Member();
		m.setName(name);
		m.setUserid(userid);
		m.setPwd(pwd);
		m.setEmail(email);
		m.setPhone(phone);
		m.setAdmin(admin);
		int result = mDAO.insertMember(m);
		//-1이면 접속중 오류 발생, 1이면 insert가 정상 동작
		HttpSession session = request.getSession();
		if(result==1) {
			session.setAttribute("userid", m.getUserid());
			session.setAttribute("message", "회원가입에 성공했습니다");
			System.out.println("회원가입 성공");
		} else {
			request.setAttribute("message","회원가입 중 오류가 발생했습니다.");
			System.out.println("회원가입 오류");
		}
		RequestDispatcher dis = request.getRequestDispatcher("Login.do");
		dis.forward(request, response);
		
	}

}
