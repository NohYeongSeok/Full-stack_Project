package view.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.board.BoardDAO;
import biz.board.BoardVO;

@WebServlet("/GetReportBoardCtrl.do")
public class GetReportBoardCtrl extends HttpServlet {
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
		
		BoardDAO bdao = new BoardDAO();
		ArrayList<BoardVO> bbean = bdao.getReportBoard();
		System.out.println(bbean);
		request.setAttribute("bbean", bbean);
		RequestDispatcher dis = request.getRequestDispatcher("board_report.jsp");
		dis.forward(request, response);
		
	}

}
