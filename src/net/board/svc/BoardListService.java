package net.board.svc;

import static net.board.db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import net.board.db.BoardDAO;
import net.board.vo.BoardBean;

public class BoardListService {

	public int getListCount(String target) throws Exception {
		// TODO Auto-generated method stub

		int listCount = 0;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		listCount = boardDAO.selectListCount(target);
		close(con);
		return listCount;

	}

	public ArrayList<BoardBean> getArticleList(int page, int limit, String target) throws Exception {

		ArrayList<BoardBean> articleList = null;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		articleList = boardDAO.selectArticleList(page, limit, target);
		close(con);
		return articleList;

	}

}
