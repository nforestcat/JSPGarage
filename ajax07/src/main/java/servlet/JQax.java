package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JQAX")
public class JQax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//String data = request.getParameter("data");
		System.out.println("doGet() 실행확인: ");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write("doGet에서 반환된 데이터");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//String data = request.getParameter("data");
		System.out.println("doPost() 실행확인: ");
		response.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String race = request.getParameter("race");
		response.getWriter().write("doPost에서 반환된 데이터 : "+name+race);
	}

}
