package com.gny.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gny.dao.MemberDAO;
import com.gny.dto.MemberVO;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "member/login.jsp";
        HttpSession session = request.getSession();

        if (session.getAttribute("loginUser") != null) {
            url = "main.jsp";
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "member/login.jsp";
        String userid = request.getParameter("userid");
        String pwd = request.getParameter("pwd");

        MemberDAO mDao = MemberDAO.getInstance();
        int result = mDao.userCheck(userid, pwd);

        if (result == 1) {
            MemberVO mVo = mDao.getMember(userid);  // getMember 메소드에서 MemberVO 객체를 가져옴
            if (mVo != null) {
                HttpSession session = request.getSession();
                session.setAttribute("loginUser", mVo);  // 로그인된 사용자 정보를 세션에 저장
                session.setAttribute("userId", userid);
                request.setAttribute("message", "로그인에 성공했습니다.");
                url = "loginMain.jsp";  // 로그인 성공 시 이동할 페이지
            }
        } else if (result == 0) {
            request.setAttribute("message", "비밀번호가 맞지 않습니다.");
        } else if (result == -1) {
            request.setAttribute("message", "존재하지 않는 회원입니다.");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
