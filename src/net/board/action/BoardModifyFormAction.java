package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.svc.BoardDetailService;
import net.board.vo.ActionForward;
import net.board.vo.BoardBean;

public class BoardModifyFormAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = new ActionForward();
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean article = boardDetailService.getArticle(board_num);
		request.setAttribute("article", article);
		forward.setPath("/board/board_modify.jsp");
		return forward;

	}

}