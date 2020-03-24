package net.board.svc;

import static net.board.db.JdbcUtil.*;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import net.board.db.BoardDAO;
import net.board.vo.BoardBean;

public class BoardWriteProService {

	public boolean registArticle(BoardBean boardBean, String target) throws Exception {
		// TODO Auto-generated method stub

		//String board_target = (String)request.getParameter("target");
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int insertCount = boardDAO.insertArticle(boardBean, target);

		if (insertCount > 0) {
			commit(con);
			isWriteSuccess = true;
		} else {
			rollback(con);
		}

		close(con);
		return isWriteSuccess;

	}

}
