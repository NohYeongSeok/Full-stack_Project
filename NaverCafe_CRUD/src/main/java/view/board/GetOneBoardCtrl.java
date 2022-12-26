package view.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.board.BoardDAO;
import biz.board.BoardVO;

@WebServlet("/GetOneBoardCtrl.do")
public class GetOneBoardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String name = (String)session.getAttribute("name");
		if(name == null) {
			response.sendRedirect("index_login.jsp");
			return;
		}
		
		int num = Integer.parseInt(request.getParameter("num"));
		BoardVO bbean = new BoardVO();
		BoardDAO bdao = new BoardDAO();
		bbean = bdao.getOneBoard(num);
		
		if(bbean != null) {
			request.setAttribute("bbean", bbean);
			RequestDispatcher dis = request.getRequestDispatcher("getOneBoard.jsp");
			dis.forward(request, response);
		}else {
			response.sendRedirect("index_login.jsp");
			return;
		}
		
	}

}
