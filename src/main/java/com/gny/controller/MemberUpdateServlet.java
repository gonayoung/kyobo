package com.gny.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

import com.gny.dao.MemberDAO;
import com.gny.dto.MemberVO;



@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("userid");
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMember(userid);
		request.setAttribute("mVo", mVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/memberUpdate.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // 한글 깨짐을 방지
                       // 폼에서 입력한 회원 정보 얻어오기
                       String userid = request.getParameter("userid");
                       String pwd = request.getParameter("pwd");
                       String email = request.getParameter("email");
                       String phone = request.getParameter("phone");
                       String admin = request.getParameter("admin");
                       // 회원 정보를 저장할 객체 생성
                       MemberVO mVo = new MemberVO();
                       mVo.setUserid(userid);
                       mVo.setPwd(pwd);
                       mVo.setEmail(email);
                       mVo.setPhone(phone);
                       mVo.setAdmin(Integer.parseInt(admin));
                       MemberDAO mDao = MemberDAO.getInstance();
                       mDao.updateMember(mVo);
                       
                       // 세션 무효화 (로그인 상태 초기화)
                       HttpSession session = request.getSession();
                       session.invalidate();

               		RequestDispatcher dispatcher = request.getRequestDispatcher("/loginMain.jsp");
            		dispatcher.forward(request, response);
      }
}