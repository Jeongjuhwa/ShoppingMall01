package svc;

import static net.board.db.JdbcUtil.*;

import java.sql.Connection;

import net.board.db.BoardDAO;
import vo.BoardBean;

public class BoardModifyProService {

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

	public boolean modifyArticle(BoardBean article, String target) throws Exception {
		// TODO Auto-generated method stub

		boolean isModifySuccess = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int updateCount = boardDAO.updateArticle(article, target);

		if (updateCount > 0) {
			commit(con);
			isModifySuccess = true;
		} else {
			rollback(con);
		}

		close(con);
		return isModifySuccess;

	}

}
