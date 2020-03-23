package net.board.svc;

import static net.board.db.JdbcUtil.close;
import static net.board.db.JdbcUtil.commit;
import static net.board.db.JdbcUtil.getConnection;
import static net.board.db.JdbcUtil.rollback;

import java.sql.Connection;

import net.board.db.BoardDAO;

public class BoardDeleteProService {

	public boolean isArticleWriter(int board_num, String pass, String target) throws Exception {
		// TODO Auto-generated method stub

		boolean isArticleWriter = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		isArticleWriter = boardDAO.isArticleBoardWriter(board_num, pass, target);
		close(con);
		return isArticleWriter;

	}

	public boolean removeArticle(int board_num, String target) throws Exception {
		// TODO Auto-generated method stub

		boolean isRemoveSuccess = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int deleteCount = boardDAO.deleteArticle(board_num, target);

		if (deleteCount > 0) {
			commit(con);
			isRemoveSuccess = true;
		} else {
			rollback(con);
		}

		close(con);
		return isRemoveSuccess;
	}

}
