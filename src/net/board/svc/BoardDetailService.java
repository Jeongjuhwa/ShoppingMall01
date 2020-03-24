package net.board.svc;

import static net.board.db.JdbcUtil.*;

import java.sql.Connection;

import net.board.db.BoardDAO;
import net.board.vo.BoardBean;

public class BoardDetailService {

	public BoardBean getArticle(int board_num) throws Exception {
		// TODO Auto-generated method stub

		BoardBean article = null;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int updateCount = boardDAO.updateReadCount(board_num);

		if (updateCount > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		article = boardDAO.selectArticle(board_num);
		close(con);
		return article;

	}

}
