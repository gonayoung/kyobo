package com.gny.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.gny.dao.MemberDAO;

@WebServlet("/idCheck.do")
public class IdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("userid");
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.confirmID(userid);
                       System.out.println("result===="+result);
       
		request.setAttribute("userid", userid);
		request.setAttribute("result", result);

		RequestDispatcher dispatcher = request.getRequestDispatcher("member/idcheck.jsp");
		dispatcher.forward(request, response);
	}
}