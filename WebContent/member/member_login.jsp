<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>gorgeous - login</title>
<script>
	function check() {
		var id = loginform.MEMBER_ID.value;
		var pass = loginform.MEMBER_PW.value;

		if (id.length == 0) {
			alert("아이디를 입력하세요.");
			loginform.MEMBER_ID.focus();
			return false;
		}
		if (pass.length == 0) {
			alert("비밀번호를 입력하세요.");
			loginform.MEMBER_PW.focus();
			return false;
		}

		return true;
	}
	function openConfirmId(loginform) {
		var url = "./MemberFind.me";
		open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"
				+ "scrollbars=no,resizable=no,width=450px,height=300");
	}
</script>
<style>
dl, dt, dd, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend,
	textarea, p, blockquote, th, td {
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
		<!-- 로그인 페이 -->
		<table width="960" cellspacing="0" cellpadding="0" border="0"
			align="center">
			<tr>
				<td colspan=2 align=center>
					<table border=0 cellpadding=0 cellspacing=0 width=500>
						<!--회원 로그인 -->
						<tr>
							<form action="./MemberLoginAction.me" method=post name=loginform
								onsubmit="return check()">
								<td><br> <br>
									<table width="400" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td bgcolor="f6f6f6">
												<table width="400" border="0" cellspacing="4"
													cellpadding="0">
													<tr>
														<td valign="top" bgcolor="#FFFFFF">
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<td align="center">
																		<table cellpadding=0 cellspacing=0 border=0>
																			<tr>
																				<td width=73>아이디</td>
																				<td width=9>:</td>
																				<td width=103><input type=text name="MEMBER_ID"
																					size=12 maxlength=20></td>
																				<td width=66 rowspan=3><input type="submit"
																					value="로그인"></td>
																				<td width=26 rowspan=3></td>
																			</tr>
																			<tr>
																				<td height=4 colspan=3></td>
																			</tr>
																			<tr>
																				<td width=73>비밀번호</td>
																				<td width=9>:</td>
																				<td width=103><input type=password
																					name="MEMBER_PW" size=12 maxlength=12></td>
																			</tr>
																			<tr>
																				<td height=35 colspan=6 align="center"><input
																					type="button" value="회원가입"
																					onclick="javascript:window.location='./MemberJoin.me'">

																					<input type="button" value="아이디/비밀번호 찾기"
																					onclick="javascript:window.location='./MemberFind.me'">

																					</a></td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td style="padding: 15 0 15 70;">
																		<table width="400" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td width="8"><img src="#" width="8" height="7">
																				</td>
																				<td width="392"><font size=2 color="565656">
																						아이디가 없을 경우 '회원가입'을 클릭하십시오. </font></td>
																			</tr>
																			<tr>
																				<td><img src="#" width="8" height="7"></td>
																				<td><font size=2 color="565656"> 아이디 또는
																						비밀번호를 잊어버렸을 경우 '아이디/비밀번호 찾기'를 클릭하십시오. </font></td>
																			</tr>
																		</table>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table></td>
							</form>
						</tr>
					</table> <!-- 회원 로그인 -->
				</td>
			</tr>
		</table>
	</div>
</body>
</html>