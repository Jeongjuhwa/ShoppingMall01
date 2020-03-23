package net.board.action;

import javax.servlet.http.*;
import net.member.action.*;
import vo.ActionForward;

public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
