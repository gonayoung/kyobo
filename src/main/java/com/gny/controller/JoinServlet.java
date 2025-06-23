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

@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        // 회원가입 페이지로 포워딩
        RequestDispatcher dispatcher = request.getRequestDispatcher("member/join.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // 폼에서 전달된 데이터 가져오기
        String username = request.getParameter("username");
        String userid = request.getParameter("userid");
        String pwd = request.getParameter("pwd");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String admin = request.getParameter("admin");

        // admin 파라미터 값 처리
        int adminValue = 0; // 기본값 설정
        try {
            adminValue = Integer.parseInt(admin); // admin 값을 정수로 변환
        } catch (NumberFormatException e) {
            // 예외 처리: 잘못된 숫자 입력이 있을 경우 기본값 사용
            adminValue = 0;  // 기본값을 설정
        }

        // MemberVO 객체에 값 설정
        MemberVO mVo = new MemberVO();
        mVo.setUsername(username);
        mVo.setUserid(userid);
        mVo.setPwd(pwd);
        mVo.setEmail(email);
        mVo.setPhone(phone);
        mVo.setAdmin(adminValue); // admin 값 설정

        // MemberDAO를 통해 DB에 회원 정보 삽입
        MemberDAO mDao = MemberDAO.getInstance();
        int result = mDao.insertMember(mVo);

        // 세션에 사용자 정보 저장 및 메시지 설정
        HttpSession session = request.getSession();
        if (result == 1) {
            session.setAttribute("userid", mVo.getUserid());
            request.setAttribute("message", "회원가입에 성공했습니다.");
        } else {
            request.setAttribute("message", "회원가입에 실패했습니다.");
        }

        // 로그인 페이지로 포워딩
        RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
        dispatcher.forward(request, response);
    }
}