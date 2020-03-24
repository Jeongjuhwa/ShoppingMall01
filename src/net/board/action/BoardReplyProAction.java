package net.board.action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.svc.BoardReplyProService;
import net.board.vo.ActionForward;
import net.board.vo.BoardBean;

public class BoardReplyProAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String board_target = (String)request.getParameter("target");
		ActionForward forward = null;
		String nowPage = request.getParameter("page");
		BoardBean article = new BoardBean();
		article.setBOARD_NUM(Integer.parseInt(request.getParameter("BOARD_NUM")));
		article.setBOARD_NAME(request.getParameter("BOARD_NAME"));
		article.setBOARD_PASS(request.getParameter("BOARD_PASS"));
		article.setBOARD_SUBJECT(request.getParameter("BOARD_SUBJECT"));
		article.setBOARD_CONTENT(request.getParameter("BOARD_CONTENT"));
		article.setBOARD_RE_REF(Integer.parseInt(request.getParameter("BOARD_RE_REF")));
		article.setBOARD_RE_LEV(Integer.parseInt(request.getParameter("BOARD_RE_LEV")));
		article.setBOARD_RE_SEQ(Integer.parseInt(request.getParameter("BOARD_RE_SEQ")));
		BoardReplyProService boardReplyProService = new BoardReplyProService();
		boolean isReplySuccess = boardReplyProService.replyArticle(article, board_target);

		if (isReplySuccess) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("boardList.bo?target=" + board_target + "&page=" + nowPage);
		} else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('답글 만들기 실패')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;

	}

}