package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RefreshList
 */
@WebServlet("/Refresh")
public class RefreshList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static List<PetList> list = new ArrayList<>();
       

	public void init() throws ServletException{
		list.add(new PetList("dog","small", "말티즈"));
		list.add(new PetList("dog","small", "시츄"));
		list.add(new PetList("dog","medium", "그레이하운드"));
		list.add(new PetList("dog","medium", "보르조이"));
		list.add(new PetList("dog","large", "골든리트리버"));
		list.add(new PetList("dog","large", "보더콜리"));
		
		list.add(new PetList("cat","small", "싱가푸라"));
		list.add(new PetList("cat","small", "먼치킨"));
		list.add(new PetList("cat","medium", "터키시앙고라"));
		list.add(new PetList("cat","medium", "통키니즈"));
		list.add(new PetList("cat","large", "메인쿤"));
		list.add(new PetList("cat","large", "뱅갈"));
		
		list.add(new PetList("racoon","small", "작은너구리"));
		list.add(new PetList("racoon","medium", "너구리"));
		list.add(new PetList("racoon","large", "큰너구리"));
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		//System.out.println("doGet 실행 확인");
		String race = request.getParameter("race");
		String size = request.getParameter("size");
		StringBuffer result = new StringBuffer("<pets>");
		//System.out.println(race+size);
		for(PetList p:list) {
			if(p.getRace().equals(race)) {
				if(p.getSize().equals(size)) {
					result.append("<pet>");
					result.append(p.getName());
					result.append("</pet>");
				}
			}
		}
		result.append("</pets>");
		System.out.println(result);
		response.setContentType("text/xml");
		response.getWriter().write(result.toString());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
