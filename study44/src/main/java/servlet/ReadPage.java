package servlet;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.*;
import dto.*;
import java.util.*;

@WebServlet("/ReadPage")
public class ReadPage extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int recordsPerPage = Integer.parseInt(request.getParameter("recordsPerPage"));
		//System.out.println(currentPage);
		//System.out.println(recordsPerPage);
		
		PageDAO pdo = PageDAO.getInstance();
		List<PageDTO> data = pdo.findList(currentPage, recordsPerPage);
		
		int count = pdo.getCount();
		int nPage = count / recordsPerPage;;
		if(count % recordsPerPage >0) {
			nPage++;
		}
		System.out.println("전체 게시글 수 : "+count);
		System.out.println("전체 페이지 수 : "+nPage  );
		request.setAttribute("data", data);//데이터베이스로부터 추출된 목록
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("recordsPerPage", recordsPerPage);
		request.setAttribute("nPage", nPage);
		
		RequestDispatcher dis = request.getRequestDispatcher("list.jsp");
		dis.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
