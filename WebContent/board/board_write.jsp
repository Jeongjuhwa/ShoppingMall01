<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	String board_target = (String) request.getParameter("target");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gorgeous - NOTICE</title>
<style type="text/css">
dl, dt, dd, h1, h2, h3, h4, h5, h6,
pre, code, form, fieldset, legend, input, textarea,
p, blockquote, th, td {
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

h2 {
	color: white;
	text-align: center;
	font-family: normal;
	font-size: 30px;
	margin-top: 40px;
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

			<h2>NOTICE</h2>
			<br>
			<form action="boardWritePro.bo?target=<%=board_target%>"
				method="post" enctype="multipart/form-data" name="boardform">
				<hr>
				<div class="name">
					<label for="BOARD_NAME"><strong>작성자</strong></label> <input
						type="text" name="BOARD_NAME" id="BOARD_NAME"
						style="width: 192px; height: 24px; font-size: 15px;" />
				</div>
				<hr>
				<div class="pw">
					<label for="BOARD_PASS"><strong>비밀번호</strong></label> <input
						name="BOARD_PASS" type="password" id="BOARD_PASS"
						required="required"
						style="width: 192px; height: 24px; font-size: 15px;" />
				</div>
				<hr>

				<div class="title">
					<label for="BOARD_SUBJECT"><strong>제목</strong></label> <input
						name="BOARD_SUBJECT" type="text" id="BOARD_SUBJECT"
						required="required"
						style="width: 192px; height: 24px; font-size: 15px;" />
				</div>
				<hr>

				<div class="main">
					<strong>내용</strong>
					<textarea id="BOARD_CONTENT" name="BOARD_CONTENT"
						required="required"
						style="width: 1078px; height: 202px; font-size: 15px; margin-left: 80px; margin-top: 3px;"></textarea>
					<hr>
				</div>

				<div class="add">
					<label for="BOARD_FILE"> <strong>첨부파일</strong></label> <input
						name="BOARD_FILE" type="file" id="BOARD_FILE" />
				</div>


				<hr>


				<section id="commandCell">
					<input type="submit" value="등록">&nbsp;&nbsp; <input
						type="reset" value="다시쓰기" />
				</section>
			</form>
		</section>
	</div>
	<!— 게시판 등록 —>
</body>
</html>