package servlet;

import java.io.*; //PrintWriter를 불러오기 위해서 *로 처리
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Sample")
public class Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private boolean validateDate(String date) {
    	boolean isValid=true;
    	if(date!=null) {
    		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
    		try {
    			format.parse(date);
    		} catch(Exception e) {
    			System.out.println("포멧변경 중 오류 발생 : "+ e);
    			isValid = false;
    		}
    	} else {
    		isValid=false;
    	}
    	return isValid;
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8"); //jsp파일을 반환하는게 아니므로 response위치에 utf-8설정
		response.setContentType("text/xml; charset=utf-8");
		PrintWriter out = response.getWriter();
		String data = request.getParameter("birthDate");
		boolean passed = validateDate(data);
		String message = "잘못된 정보를 입력하셨습니다";
		if (passed) {
			message = "올바른 정보를 입력하셨습니다";
		}
		out.println("<response>");
		out.println("<passed>"+Boolean.toString(passed)+"</passed>");
		out.println("<message>"+message+"</message>");
		out.println("</response>");
		System.out.println("doGet실행" + data);
		out.flush();
		out.close();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
