package net.board.action;

import javax.servlet.http.*;

import net.board.vo.ActionForward;

public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
