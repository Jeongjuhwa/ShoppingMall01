<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gorgeous - Q&A</title>
<style type="text/css">
body {
	margin-top: 20px;
	margin-left: 140px;
	margin-right: 140px;
	text-align: left, center;
}

h2 {
	text-align: center;
	font-family: normal;
	font-size: 30px;
	margin-top: 40px;
}

.name {
	margin-top: 20px;
	margin-left: 5px;
	margin-bottom: 20px;
	font-size: 15px;
	font-family: monospace;
	word-spacing: 40px;
	text-display: center;
}

.pw {
	margin-top: 20px;
	margin-left: 5px;
	margin-bottom: 20px;
	font-size: 15px;
	font-family: monospace;
	word-spacing: 30px;
	text-display: center;
}

.title {
	margin-top: 20px;
	margin-left: 5px;
	margin-bottom: 20px;
	font-size: 15px;
	font-family: monospace;
	word-spacing: 55px;
	text-display: center;
}

.main {
	margin-top: 20px;
	margin-left: 5px;
	margin-bottom: 20px;
	font-size: 15px;
	font-family: monospace;
	word-spacing: 30px;
	text-display: center;
}

.add {
	margin-top: 20px;
	margin-left: 5px;
	margin-bottom: 20px;
	font-size: 15px;
	font-family: monospace;
	word-spacing: 30px;
	text-display: center;
}

#commandCell {
	margin-top: 20px;
	text-align: center;
}
</style>
</head>
<body>
	<!-- 게시판 등록 -->

	<section id="writeForm">

		<h2>Q&A</h2>
		<br>
		<form action="board3WritePro.bo" method="post"
			enctype="multipart/form-data" name="boardform">
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
	<!— 게시판 등록 —>
</body>
</html>