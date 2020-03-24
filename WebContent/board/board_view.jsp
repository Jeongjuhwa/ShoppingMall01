<%@page import="net.board.vo.BoardBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>

<%
	String board_target = (String) request.getParameter("target");
	BoardBean article = (BoardBean) request.getAttribute("article");
	String nowPage = (String) request.getAttribute("page");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gorgeous - NOTICE</title>
<style type="text/css">
dl, dt, dd, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend,
	input, textarea, p, blockquote, th, td {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
}

#wrap {
	width: 80%;
	height: 100%;
	margin: 0 auto;
	text-align: center;
}

.kk {
	text-align: right;
	font-size: 12px;
	font-style: normal;
	color: white;
	word-spacing: 7px;
	margin-top: 8px;
	margin-right: inherit;
}

h1 {
	color: bisque;
	text-align: center;
	margin-top: 30px;
	margin-bottom: 0;
	font-size: 50px;
	font-family: cursive;
	text-decoration: none;
	letter-spacing: 5px;
}

h3 {
	text-align: center;
	margin-top: 15px;
	word-spacing: 40px;
}

h6 {
	margin: 0;
	color: bisque;
	text-align: center;
	font-size: 13px;
	letter-spacing: 10px;
	font-style: normal;
	margin-bottom: 70px;
}

a {
	color: white;
	font-style: normal;
	text-decoration: none;
}

hr {
	border: solid 0.3px white;
	margin-top: 8px;
	margin-left: 60px;
	margin-right: 60px;
}

body {
	background-color: gray;
	margin-left: 8px;
}

#articleForm {
	width: 500px;
	height: 500px;
	border: 1px solid red;
	margin: auto;
}

h2 {
	text-align: center;
}

#basicInfoArea {
	height: 40px;
	text-align: center;
}

#articleContentArea {
	background: orange;
	margin-top: 20px;
	height: 350px;
	text-align: center;
	overflow: auto;
}

#commandList {
	margin: auto;
	width: 500px;
	text-align: center;
}
</style>
</head>

<body>
	<div id="wrap">
		<div class="kk">
			<div>
				<a href="MemberLogin.me">LOG_IN</a> CART(0) <a
					href="boardList.bo?target=board1">NOTICE</a> <a
					href="boardList.bo?target=board2">REVIEW</a> <a
					href="boardList.bo?target=board3">Q&A</a> <a
					href="boardList.bo?target=board4">FAQ</a>
			</div>

			<h1>
				<a href="index.jsp">gorgeous</a>
			</h1>
			<h6>
				<b> Accessories </b>
			</h6>

			<hr>

			<h3>
				<a href="./goods/best.jsp">BEST</a> BASIC_ITEM NEW_ARRIVAL RING
				EARING NECKLACE SIVER_925 ETC BIG_SALE VINTAGE_COLLECTION
			</h3>

			<div>
				<hr>
			</div>
			<hr>
		</div>
		<!-- 게시판 수정 -->
		<section id="articleForm">
			<h2>글 내용 상세보기</h2>
			<section id="basicInfoArea">
				제 목 :
				<%=article.getBOARD_SUBJECT()%>
				첨부파일 :
				<%
				if (!(article.getBOARD_FILE() == null)) {
			%>
				<a href="file_down?downFile=<%=article.getBOARD_FILE()%>"> <%=article.getBOARD_FILE()%>
				</a>
				<%
					}
				%>
			</section>
			<section id="articleContentArea">
				<%=article.getBOARD_CONTENT()%>
			</section>
		</section>
		<section id="commandList">
			<a
				href="boardReplyForm.bo?target=<%=board_target%>&board_num=<%=article.getBOARD_NUM()%>&page=<%=nowPage%>">
				[답변] </a> <a
				href="boardModifyForm.bo?target=<%=board_target%>&board_num=<%=article.getBOARD_NUM()%>">
				[수정] </a> <a
				href="boardDeleteForm.bo?target=<%=board_target%>&board_num=<%=article.getBOARD_NUM()%>&page=<%=nowPage%>">
				[삭제] </a> <a href="boardList.bo?target=<%=board_target%>">[목록]</a>&nbsp;&nbsp;
		</section>
	</div>
</body>
</html>