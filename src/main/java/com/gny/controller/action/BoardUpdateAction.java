package com.gny.controller.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.gny.dao.BoardDAO;
import com.gny.dto.BoardVO;

public class BoardUpdateAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardVO bVo = new BoardVO();
		bVo.setNum(Integer.parseInt(request.getParameter("num")));
		bVo.setUsername(request.getParameter("username"));
		bVo.setPass(request.getParameter("pass"));
		bVo.setEmail(request.getParameter("email"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.updateBoard(bVo);
		new BoardListAction().execute(request, response);
	}
}