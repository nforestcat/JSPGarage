package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Test")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get방식으로 통신 수행");
		process(request, response, "GET");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post방식으로 통신 수행");
		process(request, response, "POST");
		
	}
	protected void process(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/xml");
		String first = request.getParameter("first");
		String second = request.getParameter("second");
		String last = request.getParameter("last");
		String responseText="방식 : "+method+", 첫번째 데이터 : " +first+", 두번째 데이터  : "+ second+ ", 마지막 데이터 : "+last;
		System.out.println(responseText);
		PrintWriter out = response.getWriter();
		out.println(responseText);
		out.flush();
		out.close();
		
	}
}
