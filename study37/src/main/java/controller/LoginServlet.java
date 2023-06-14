package controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.*;
import beans.Member;

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
		String url="login.jsp";
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		//System.out.println("리퀘스트된 데이터 : "+ userid +" , "+pwd);
		MemberDAO mDAO = MemberDAO.getInstance();//생성자를 잠궜으니 객체를 가져올 수 있는 유일한 방법.
		int result = mDAO.userCheck(userid, pwd);
		//System.out.println(result);
		//로그인 처리(-1 아이디 없음, 0, 비번 틀림, 1 로그인)
		if(result==1) {
			//로그인 성공
			Member m = mDAO.getMember(userid);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", m);
			request.setAttribute("message", "로그인에 성공했습니다.");
			url = "main.jsp";
		}else if(result ==0) {
			//비밀번호 틀림
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		} else {
			//아이디 없음
			request.setAttribute("message", "존재하지 않는 회원입니다.");
		}
			
		
	}

}
