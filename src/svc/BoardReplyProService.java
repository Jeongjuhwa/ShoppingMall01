package svc;

import static net.board.db.JdbcUtil.*;

import java.sql.Connection;

import net.board.db.BoardDAO;
import vo.BoardBean;

public class BoardReplyProService {

	public boolean replyArticle(BoardBean article, String target) throws Exception {
		// TODO Auto-generated method stub

		boolean isReplySuccess = false;
		int insertCount = 0;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		insertCount = boardDAO.insertReplyArticle(article, target);

		if (insertCount > 0) {
			commit(con);
			isReplySuccess = true;
		} else {
			rollback(con);
		}

		close(con);
		return isReplySuccess;

	}

}
