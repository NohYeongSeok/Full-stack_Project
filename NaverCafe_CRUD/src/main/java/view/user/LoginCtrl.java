package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.user.UserDAO;
import biz.user.UserVO;

@WebServlet("/LoginCtrl.do")
public class LoginCtrl extends HttpServlet {
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
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserDAO udao = new UserDAO();
		UserVO ubean = udao.getUser(id, pw);
		
		if(ubean.getId() != null) {
			HttpSession session = request.getSession();
			session.setAttribute("id", ubean.getId());
			session.setAttribute("name", ubean.getName());
			RequestDispatcher dis = request.getRequestDispatcher("GetBoardCtrl.do");
			dis.forward(request, response);
		}else {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('일치하는 회원 정보가 없습니다.');");
			out.println("history.go(-1);</script>");
			out.flush();
		}
		
	}

}
