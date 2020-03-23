<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>쇼핑몰</title>
<style>
.box-left {
	flex: 1;
	float: left;
	flex-basis: 100px;
	font-size: 15px;
}

.box-right {
	flex: 1;
	flex-basis: 150px;
	text-align: right;
	display: inline-block;
	margin-left: 1110px;
}

body {
	margin-left: 100px;
	margin-right: 100px;
	margin-bottom: 20px;
	line-height: 1.7em;
}

h4 {
	font-family: cursive;
	font-size: 35px;
	text-align: center;
	margin-bottom: 3px;
	margin-top: 90px;
}

h6 {
	text-align: center;
	margin-top: 5px;
	font-size: 12px;
	margin-bottom: 60px;
}

.join {
	font-family: monospace;
	font-size: 13px;
}

.list {
	
}
</style>
<script>
function check(){
	var id=joinform.MEMBER_ID.value;
	var password1=joinform.MEMBER_PW.value;
	var password2=joinform.MEMBER_PW2.value;	
	var email1=joinform.MEMBER_EMAIL1.value;
	var email2=joinform.MEMBER_EMAIL2.value;
	var phone=joinform.MEMBER_PHONE.value;
	var addr1=joinform.MEMBER_ADDR1.value;
	var addr2=joinform.MEMBER_ADDR2.value;
	var mobile=joinform.MEMBER_MOBILE.value;
	
	var forms = document.getElementById("joinform");

	if ((forms.MEMBER_NAME.value=="")||(forms.MEMBER_NAME.value.length<=1)){
		alert("이름을 제대로 입력해 주세요.");
		forms.MEMBER_NAME.focus();
         		return false;
	}
	if(id.length == 0){
		alert("아이디를 입력하세요.");
		joinform.MEMBER_ID.focus();
		return false;
	}
	if(password1.length == 0){
		alert("비밀번호를 입력하세요.");
		joinform.MEMBER_PW.focus();
		return false;
	} 
	if(password1 != password2){
		alert("비밀번호가 일치하지 않습니다.");
		joinform.MEMBER_PW.value="";
		joinform.MEMBER_PW2.value="";
		joinform.MEMBER_PW.focus();
		return false;
	}
	if((forms.MEMBER_JUMIN1.value=="")||(forms.MEMBER_JUMIN1.value.length<6)){
		alert("주민등록번호 앞의 6자리를 입력해 주세요.");
      	forms.MEMBER_JUMIN1.focus();
        return false;
 	}
 	if((forms.MEMBER_JUMIN2.value=="")||(forms.MEMBER_JUMIN2.value.length<7)){
		alert("주민등록번호 뒤의 7자리를 입력해 주세요.");
      	forms.MEMBER_JUMIN2.focus();
        return false;
	} 
	if(email1.length == 0 || email2.length ==0){
		alert("이메일을 제대로 입력하세요.");
		joinform.MEMBER_EMAIL1.focus();
		return false;
	}
	if(phone.length == 0){
		alert("집 전화를 입력하세요.");
		joinform.MEMBER_PHONE.focus();
		return false;
	} 
	if((forms.MEMBER_ZIPCODE1.value=="")||(forms.MEMBER_ZIPCODE1.value.length<3)){
		alert("우편번호 앞의 3자리를 입력해 주세요.");
      	forms.MEMBER_ZIPCODE1.focus();
        return false;
 	}
 	if((forms.MEMBER_ZIPCODE2.value=="")||(forms.MEMBER_ZIPCODE2.value.length<3)){
		alert("우편번호 뒤의 3자리 입력해 주세요.");
      	forms.MEMBER_ZIPCODE2.focus();
        return false;
	}  
	if(addr1.length == 0){
		alert("집 주소를 입력하세요.");
		joinform.MEMBER_ADDR1.focus();
		return false;
	} 
	if(addr2.length == 0){
		alert("상세 주소를 입력하세요.");
		joinform.MEMBER_ADDR2.focus();
		return false;
	} 
	if(mobile.length == 0){
		alert("휴대폰 번호를 입력하세요.");
		joinform.MEMBER_MOBILE.focus();
		return false;
	}
	
	return true;
}

function openConfirmId(joinform){			
	var id=joinform.MEMBER_ID.value;
	var url="./MemberIDCheckAction.me?MEMBER_ID="+joinform.MEMBER_ID.value;
	
	if(id.length == 0){
		alert("아이디를 입력하세요.");
		joinform.MEMBER_ID.focus();
		return false;
	}
	open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"+
						 "scrollbars=no,resizable=no,width=400,height=200");
}

function openZipcode(joinform){			
	var url="./Zipcode.me"
	open(url, "confirm", "toolbar=no,location=no,"
						+"status=no,menubar=no,"
						+"scrollbars=yes,resizable=no,"
						+"width=410,height=400");
}	

function gNumCheck(){
	if(event.keyCode >=48 && event.keyCode <=57) {
		return true;
	}else{
		event.returnValue=false;	
	}
}		
</script>
</head>
<body>
	<h4>JOIN US</h4>
	<h6>Welcome to gorgeous!</h6>
	<br>

	<div class="join">
		<div class="1">
			<hr>
			회원구분*&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <input
				type="radio" name="customer" value="개인" />개인회원 <input type="radio"
				name="customer" value="사업자" />사업자회원
			<hr>
		</div>
		<br> <strong><div class="box-left">기본정보</div></strong>
		<div class="box-right">필수입력사항*</div>

		<div class="list">
			<hr>
			아이디*<input type="text" name="MEMBER_ID"
				style="width: 140px; height: 20px;" display="flex;" /> (영문소문자/숫자,
			4~16자)
		</div>
		<hr>
		비밀번호*<input type="text" name="MEMBER_ID"
			style="width: 140px; height: 20px;" display="flex;" />(영문
		대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)<br>
		<hr>
		비밀번호 확인*<input type="text" name="MEMBER_ID"
			style="width: 140px; height: 20px;" display="flex;" /><br>
		<hr>
		이름*<input type="text" name="MEMBER_ID"
			style="width: 140px; height: 20px;" display="flex;" /> <br>
		<hr>
		주소*
		<tr>
			<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
			<td>&nbsp;&nbsp;&nbsp; <input type="text" name="MEMBER_ZIPCODE1"
				size="6" onkeypress="gNumCheck()" maxlength="3" />- <input
				type="text" name="MEMBER_ZIPCODE2" size="6" onkeypress="gNumCheck()"
				maxlength="3" />&nbsp;&nbsp; <input type="button" name="zipcode"
				value="우편번호 검색" onclick="openZipcode(this.form)" />
		<tr>
			<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;<br>기본주소
			</font></td>
			<td>&nbsp;&nbsp;&nbsp;<input type="text" name="MEMBER_ADDR1"
				size="50" />
		</tr>
		<tr>
			<td bgcolor="#f5f5f5"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;<br>상세주소
			</font></td>
			<td>&nbsp;&nbsp;&nbsp; <input type="text" name="MEMBER_ADDR2"
				size="50" />
			</td>
		</tr>
		</td>
		</tr>
		<br>
		<hr>
		일반전화 <input type="text" name="MEMBER_ZIPCODE1" size="6"
			onkeypress="gNumCheck()" maxlength="3" />- <input type="text"
			name="MEMBER_ZIPCODE2" size="6" onkeypress="gNumCheck()"
			maxlength="3" />- <input type="text" name="MEMBER_ZIPCODE2" size="6"
			onkeypress="gNumCheck()" maxlength="3" /> <br>
		<hr>
		휴대전화* <input type="text" name="MEMBER_ZIPCODE1" size="6"
			onkeypress="gNumCheck()" maxlength="3" />- <input type="text"
			name="MEMBER_ZIPCODE2" size="6" onkeypress="gNumCheck()"
			maxlength="3" />- <input type="text" name="MEMBER_ZIPCODE2" size="6"
			onkeypress="gNumCheck()" maxlength="3" /> <br>
		<hr>
		이메일*
		<td>&nbsp;&nbsp;&nbsp;<input type="text" name="MEMBER_EMAIL1"
			size="13" />&nbsp;@&nbsp;<input type="text" name="MEMBER_EMAIL2"
			size="15" /></td>
		<br>
		<hr>
		<br>
		<br> <strong><div class="box-left">추가정보</div></strong> <br>
		<hr>
		생년월일 <input type="text" name="MEMBER_ZIPCODE1" size="6"
			onkeypress="gNumCheck()" maxlength="3" />년 <input type="text"
			name="MEMBER_ZIPCODE2" size="6" onkeypress="gNumCheck()"
			maxlength="3" />월 <input type="text" name="MEMBER_ZIPCODE2" size="6"
			onkeypress="gNumCheck()" maxlength="3" />일<input type="radio"
			name="customer" value="개인" />양력 <input type="radio" name="customer"
			value="사업자" />음력
		<hr>
		<br> <strong><div class="box-left">전체동의</div></strong>

	</div>

</body>
</html>