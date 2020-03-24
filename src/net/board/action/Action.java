package net.board.action;

import javax.servlet.http.*;

import net.board.vo.ActionForward;
import net.member.action.*;

public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
