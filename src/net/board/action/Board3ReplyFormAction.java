package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.svc.BoardDetailService;
import net.board.vo.ActionForward;
import net.board.vo.BoardBean;

public class Board3ReplyFormAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = new ActionForward();
		String nowPage = request.getParameter("page");
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean article = boardDetailService.getArticle(board_num, "board3");
		request.setAttribute("article", article);
		request.setAttribute("page", nowPage);
		forward.setPath("/board/board3_reply.jsp");
		return forward;

	}

}