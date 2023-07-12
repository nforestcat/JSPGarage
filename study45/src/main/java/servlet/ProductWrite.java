package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.*;
import dao.*;
import com.oreilly.servlet.*; //파일전송
import com.oreilly.servlet.multipart.*; //multipart 데이터의 해석
@WebServlet("/ProductWrite")
public class ProductWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서블릿의 doGet부분은 a태그를 통하거나 또는 도메인을 직접 입력한 경우 실행된다. get방식도
		RequestDispatcher dis = request.getRequestDispatcher("write.jsp");
		dis.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서브릿의 doPost부분은 form의 Post나 ajax의 Post로 실행
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ServletContext context = getServletContext();
		String path = context.getRealPath("files");
		System.out.println("실제 경로 : "+path); //실재 업로드된 파일이 저장된 경로
		String encType = "utf-8";
		int sizeLimit=20*1024*1024; //20MB제한
		
		//일반 request가 아닌 파일을 담아 가져올 수 있는 타입의 request
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		String name = multi.getParameter("name");
		int price = Integer.parseInt(multi.getParameter("price"));
		String pictureurl = multi.getFilesystemName("pictureurl");
		String description = multi.getParameter("description");
		System.out.println(name + "/" + price + "/" +pictureurl + "/" + description);
		
		ProductDTO dto = new ProductDTO();
		dto.setName(name);
		dto.setPrice(price);
		dto.setPictureurl("files/"+pictureurl);
		dto.setDescription(description);
		
		ProductDAO dao = ProductDAO.getInstance();
		dao.insert(dto);
		
		response.sendRedirect("ProductList");
				
	}

}
