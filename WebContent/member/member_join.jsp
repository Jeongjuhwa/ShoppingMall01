<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>쇼핑몰</title>
<style>
dl, dt, dd, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend,
	textarea, p, blockquote, th, td {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
}

table, td, th {
	border: 1px solid white;
}

table {
	width: 600px;
}

td {
	width: 100px;
	height: 40px;
	text-align: left;
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
<script>
	function check() {
		var id = joinform.MEMBER_ID.value;
		var password1 = joinform.MEMBER_PW.value;
		var password2 = joinform.MEMBER_PW2.value;
		var email1 = joinform.MEMBER_EMAIL1.value;
		var email2 = joinform.MEMBER_EMAIL2.value;
		var phone = joinform.MEMBER_PHONE.value;
		var addr1 = joinform.MEMBER_ADDR1.value;
		var addr2 = joinform.MEMBER_ADDR2.value;
		var mobile = joinform.MEMBER_MOBILE.value;

		var forms = document.getElementById("joinform");

		if ((forms.MEMBER_NAME.value == "")
				|| (forms.MEMBER_NAME.value.length <= 1)) {
			alert("이름을 제대로 입력해 주세요.");
			forms.MEMBER_NAME.focus();
			return false;
		}
		if (id.length == 0) {
			alert("아이디를 입력하세요.");
			joinform.MEMBER_ID.focus();
			return false;
		}
		if (password1.length == 0) {
			alert("비밀번호를 입력하세요.");
			joinform.MEMBER_PW.focus();
			return false;
		}
		if (password1 != password2) {
			alert("비밀번호가 일치하지 않습니다.");
			joinform.MEMBER_PW.value = "";
			joinform.MEMBER_PW2.value = "";
			joinform.MEMBER_PW.focus();
			return false;
		}
		if ((forms.MEMBER_JUMIN1.value == "")
				|| (forms.MEMBER_JUMIN1.value.length < 6)) {
			alert("주민등록번호 앞의 6자리를 입력해 주세요.");
			forms.MEMBER_JUMIN1.focus();
			return false;
		}
		if ((forms.MEMBER_JUMIN2.value == "")
				|| (forms.MEMBER_JUMIN2.value.length < 7)) {
			alert("주민등록번호 뒤의 7자리를 입력해 주세요.");
			forms.MEMBER_JUMIN2.focus();
			return false;
		}
		if (email1.length == 0 || email2.length == 0) {
			alert("이메일을 제대로 입력하세요.");
			joinform.MEMBER_EMAIL1.focus();
			return false;
		}
		if (phone.length == 0) {
			alert("집 전화를 입력하세요.");
			joinform.MEMBER_PHONE.focus();
			return false;
		}
		if ((forms.MEMBER_ZIPCODE1.value == "")
				|| (forms.MEMBER_ZIPCODE1.value.length < 3)) {
			alert("우편번호 앞의 3자리를 입력해 주세요.");
			forms.MEMBER_ZIPCODE1.focus();
			return false;
		}
		if ((forms.MEMBER_ZIPCODE2.value == "")
				|| (forms.MEMBER_ZIPCODE2.value.length < 3)) {
			alert("우편번호 뒤의 3자리 입력해 주세요.");
			forms.MEMBER_ZIPCODE2.focus();
			return false;
		}
		if (addr1.length == 0) {
			alert("집 주소를 입력하세요.");
			joinform.MEMBER_ADDR1.focus();
			return false;
		}
		if (addr2.length == 0) {
			alert("상세 주소를 입력하세요.");
			joinform.MEMBER_ADDR2.focus();
			return false;
		}
		if (mobile.length == 0) {
			alert("휴대폰 번호를 입력하세요.");
			joinform.MEMBER_MOBILE.focus();
			return false;
		}

		return true;
	}

	function openConfirmId(joinform) {
		var id = joinform.MEMBER_ID.value;
		var url = "./MemberIDCheckAction.me?MEMBER_ID="
				+ joinform.MEMBER_ID.value;

		if (id.length == 0) {
			alert("아이디를 입력하세요.");
			joinform.MEMBER_ID.focus();
			return false;
		}
		open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"
				+ "scrollbars=no,resizable=no,width=400,height=200");
	}

	function openZipcode(joinform) {
		var url = "./Zipcode.me"
		open(url, "confirm", "toolbar=no,location=no,"
				+ "status=no,menubar=no," + "scrollbars=yes,resizable=no,"
				+ "width=410,height=400");
	}

	function gNumCheck() {
		if (event.keyCode >= 48 && event.keyCode <= 57) {
			return true;
		} else {
			event.returnValue = false;
		}
	}
</script>
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
		<!-- 회원가입 -->
		<table width="960" cellspacing="0" cellpadding="0" border="0"
			align="center">
			<tr>
				<td colspan=2>

					<form name="joinform" action="./MemberJoinAction.me" method="post"
						onsubmit="return check()">
						<p align="center">
						<table border="1" width="80%" height="80%">
							<tr>
								<td width="17%" bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;이름</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp; <input type="text"
									name="MEMBER_NAME" size="20" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;아이디</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp; <input type="text" name="MEMBER_ID"
									size="10" maxlength=15 /> <input type="button"
									name="confirm_id" value="중복확인"
									onclick="openConfirmId(this.form)" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;비밀번호</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp; <input type="password"
									name="MEMBER_PW" size="15" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;비밀번호
										확인</font></td>
								<td>&nbsp;&nbsp;&nbsp; <input type="password"
									name="MEMBER_PW2" size="15" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5">&nbsp;</td>
								<td><font size="2">&nbsp;&nbsp;&nbsp; (아이디와 비밀번호는
										문자와 숫자를 조합하여 2~12자리로 만들어 주세요)</font></td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;주민등록번호</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp; <input type="text"
									name="MEMBER_JUMIN1" size="12" onkeypress="gNumCheck()"
									maxlength="6" />- <input type="text" name="MEMBER_JUMIN2"
									size="12" onkeypress="gNumCheck()" maxlength="7" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;이메일
										주소</font></td>
								<td>&nbsp;&nbsp;&nbsp; <input type="text"
									name="MEMBER_EMAIL1" size="13" />@ <input type="text"
									name="MEMBER_EMAIL2" size="15" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;메일
										수신 여부</font></td>
								<td>&nbsp;&nbsp;&nbsp; <input type="radio"
									name="MEMBER_EMAIL_GET" value="YES" checked /> <font size="2">수신</font>
									&nbsp;&nbsp;<input type="radio" name="MEMBER_EMAIL_GET"
									value="NO" /> <font size="2">수신 안함</font>
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;집전화</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp; <input type="text"
									name="MEMBER_PHONE" size="24" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;우편번호</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp; <input type="text"
									name="MEMBER_ZIPCODE1" size="6" onkeypress="gNumCheck()"
									maxlength="3" />- <input type="text" name="MEMBER_ZIPCODE2"
									size="6" onkeypress="gNumCheck()" maxlength="3" />&nbsp;&nbsp;
									<input type="button" name="zipcode" value="우편번호 검색"
									onclick="openZipcode(this.form)" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;집주소</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp; <input type="text"
									name="MEMBER_ADDR1" size="50" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;상세주소</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp; <input type="text"
									name="MEMBER_ADDR2" size="50" />
								</td>
							</tr>
							<tr>
								<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;휴대폰</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp; <input type="text"
									name="MEMBER_MOBILE" size="24" />
								</td>
							</tr>
						</table>
						<div style="text-align: center;">
							<input type="submit" value="확 인" /></td>
						</div>
					</form> 
				</td>
			</tr>
		</table>
	</div>
</body>
</html>