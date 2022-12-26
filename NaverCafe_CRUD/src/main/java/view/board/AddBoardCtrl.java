package view.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.board.BoardDAO;
import biz.board.BoardVO;
import biz.user.UserVO;

@WebServlet("/AddBoardCtrl.do")
public class AddBoardCtrl extends HttpServlet {
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
		String name = (String) session.getAttribute("name");
		if(name == null) {
			response.sendRedirect("login.jsp");
		}
		String id = (String) session.getAttribute("id");
		String tag = request.getParameter("tag");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardVO bbean = new BoardVO();
		bbean.setTag(tag);
		bbean.setId(id);
		bbean.setTitle(title);
		bbean.setContent(content);
		
		BoardDAO bdao = new BoardDAO();
		int cnt = bdao.addBoard(bbean);
		if(cnt != 0) {
			response.sendRedirect("GetBoardCtrl.do");
		}
		
	}

}
