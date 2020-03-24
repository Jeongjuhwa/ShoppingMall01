<%@page import="net.board.vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String board_target = (String) request.getParameter("target");
	BoardBean article = (BoardBean) request.getAttribute("article");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gorgeous - NOTICE</title>
<script type="text/javascript">
	function modifyboard() {
		modifyform.submit();
	}
</script>
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

#registForm {
	width: 500px;
	height: 600px;
	border: 1px solid red;
	margin: auto;
}

h2 {
	text-align: center;
}

table {
	margin: auto;
	width: 450px;
}

.td_left {
	width: 150px;
	background: orange;
}

.td_right {
	width: 300px;
	background: skyblue;
}

#commandCell {
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

		<!-- 게시판 등록 -->

		<section id="writeForm">
			<h2>게시판글수정</h2>
			<form action="boardModifyPro.bo?target=<%=board_target%>"
				method="post" name="modifyform">
				<input type="hidden" name="BOARD_NUM"
					value="<%=article.getBOARD_NUM()%>" />
				<table>
					<tr>
						<td class="td_left"><label for="BOARD_NAME">글쓴이</label></td>
						<td class="td_right"><input type="text" name="BOARD_NAME"
							id="BOARD_NAME" value="<%=article.getBOARD_NAME()%>" /></td>
					</tr>
					<tr>
						<td class="td_left"><label for="BOARD_PASS">비밀번호</label></td>
						<td class="td_right"><input name="BOARD_PASS" type="password"
							id="BOARD_PASS" /></td>
					</tr>
					<tr>
						<td class="td_left"><label for="BOARD_SUBJECT">제 목</label></td>
						<td class="td_right"><input name="BOARD_SUBJECT" type="text"
							id="BOARD_SUBJECT" value="<%=article.getBOARD_SUBJECT()%>" /></td>
					</tr>
					<tr>
						<td class="td_left"><label for="BOARD_CONTENT">내 용</label></td>
						<td><textarea id="BOARD_CONTENT" name="BOARD_CONTENT"
								cols="40" rows="15"><%=article.getBOARD_CONTENT()%></textarea></td>
					</tr>
				</table>
				<section id="commandCell">
					<a href="javascript:modifyboard()">[수정]</a>&nbsp;&nbsp; <a
						href="javascript:history.go(-1)">[뒤로]</a>
				</section>
			</form>
		</section>
	</div>
</body>
</html>