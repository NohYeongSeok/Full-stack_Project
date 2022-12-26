package view.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.board.BoardDAO;
import biz.user.UserDAO;
import biz.user.UserVO;

@WebServlet("/DeleteBoardCtrl.do")
public class DeleteBoardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		HttpSession session = request.getSession();
		String name = (String)session.getAttribute("name");
		if(name == null) {
			response.sendRedirect("login.jsp");
		}
		
		String id = (String) session.getAttribute("id");
		int num = Integer.parseInt(request.getParameter("num"));
		String pw = request.getParameter("pw");
		
		UserVO ubean = new UserVO();
		UserDAO udao = new UserDAO();
		BoardDAO bdao = new BoardDAO();
		ubean = udao.getUserOnlyId(id);
		PrintWriter out = response.getWriter();
		
		if(pw.equals(ubean.getPw())) {
			bdao.deleteBoard(num);
			response.sendRedirect("GetBoardCtrl.do");
			return;
		}else {
			out.println("<script>alert('비밀번호가 다릅니다');");
			out.println("history.go(-1);</script>");
			out.flush();
		}
	
	}

}
