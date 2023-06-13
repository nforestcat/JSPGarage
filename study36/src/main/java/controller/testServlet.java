package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/a")
public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /*   
    public testServlet() {
        super();
    }
     */
	//브라우저 도메인부분에 직접 경로를 입력하거나 a태그를 통한 서블릭 호출의 경우 .doGet()이 실행된다
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Get방식으로 서블릿이 실행되었습니다.");
		//제작된 jsp파일을 반환해주면 화면으로 출력된다
		RequestDispatcher dis = request.getRequestDispatcher("/get.jsp");
		request.setAttribute("data", "get방식의 데이터");
		dis.forward(request, response);
	}

//해당 서블릭에 post로 요청이 들어오면 doPost 가 실행됨
	//   form method='post'를 통해서 호출
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		System.out.print("Post방식으로 서블릿이 실행되었습니다");
		RequestDispatcher dis = request.getRequestDispatcher("/post.jsp");
		dis.forward(request, response);
	}

}
