<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String board_target = (String) request.getParameter("target");
	int board_num = (Integer) request.getAttribute("board_num");
	String nowPage = (String) request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gorgeous - NOTICE</title>
<style>
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

#passForm {
	width: 400px;
	margin: auto;
	border: 1px solid orange;
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

		<section id="passForm">
			<form name="deleteForm"
				action="boardDeletePro.bo?target=<%=board_target%>&board_num=<%=board_num%>"
				method="post">
				<input type="hidden" name="page" value="<%=nowPage%>" />
				<table>
					<tr>
						<td><label>글 비밀번호 : </label></td>
						<td><input name="BOARD_PASS" type="password"></td>
					</tr>
					<tr>
						<td><input type="submit" value="삭제" /> &nbsp;&nbsp; <input
							type="button" value="돌아가기" onClick="javascript:history.go(-1)" />
						</td>
					</tr>
				</table>
			</form>
		</section>
	</div>
</body>
</html>