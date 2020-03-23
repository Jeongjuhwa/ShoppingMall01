<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%
	String addr = "";
	String zipcode = "";
	String zip1 = "";
	String zip2 = "";
	List zipcodeList = (ArrayList) request.getAttribute("zipcodelist");
%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>우편번호 검색</title>
<link rel="stylesheet" type="text/css"
	href="//img.echosting.cafe24.com/css/postcode.css" charset="utf-8">


</head>
<body id="" class="">
	<div class="mCafe24Post gPc typeLayer" id="layerZipcode">
		<h1>우편번호 검색</h1>
		<div class="content">
			<!-- 참고 :  ECHOSTING-173192 -->
			<div class="mTab typeNav eTab">
				<ul>
					<li class="selected"><a href="#">새 우편번호</a></li>
					<li><a href="#" id="oldpost">구) 우편번호</a></li>

				</ul>
			</div>

			<div class="search">
				<table border="1" summary="">
					<caption>동(읍/면) + 지번 검색</caption>
					<tbody>
						<tr>
							<th scope="row">지번/도로명</th>
							<td><input type="text" class="fText" id="zboo_keyword">
								<a href="#none" id="zboo_search_btn" class="btnSearch"
								onclick="setZipcode(<%=zip1%>,<%=zip2%>,'<%=addr%>')"> <%=zipcode%>
									<img
									src="//img.echosting.cafe24.com/postcode/ko_KR/btn_postcode_search.gif"
									alt="검색"></a>
								<p class="txtInfo">도로명+건물번호(예:테헤란로5) | 읍/면/동/리+지번(예:서린동154)</p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="tabCont" id="zboo_contents"
				style="display: block; height: 415px;">

				<div class="ctrl" id="zboo_panel_sido"></div>

				<div class="addressList" id="zboo_panel_search_result"
					style="height: 365px;">
					<div class="resultList">
						<table border="1" summary="">
							<caption>지번주소 검색결과</caption>
							<colgroup>
								<col style="width: auto;">
								<col style="width: 60px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">상세주소</th>
									<th scope="col">우편번호</th>
								</tr>
							</thead>

							<tbody id="zboo_panel_address" class="center"></tbody>
						</table>
					</div>
					<p id="zboo_panel_empty" class="empty" style="display: block">찾으실
						지번주소 혹은 도로명주소를 검색해 주세요</p>
				</div>

				<div id="zboo_paginate" class="paginate"></div>
			</div>
		</div>

		<div class="btnArea">
			<a href="#none" onclick="parent.$('#zipcodeLayer').remove();"><img
				src="//img.echosting.cafe24.com/postcode/ko_KR/btn_postcode_close.gif"
				alt="닫기"></a>
		</div>
		<div class="btnClose" id="zboo_top_close_btn">
			<a href="#none"><img
				src="//img.echosting.cafe24.com/postcode/btn_close.gif" alt="닫기"></a>
		</div>
	</div>
	<script type="text/javascript"
		src="//www.la-room.kr/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=2003181117"
		charset="utf-8"></script>

	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=fcwxDoMwEATAD9DyjpVRCt5BSWeZM7EdfJczVpTf4yJFkBDaYpudxZM3ghkUXu1GH9YEpcJVHSEWBDPmLpYed7saxLqE-K6k31-Z7tFykqK8Nnz6L6Ih7_56aEUwB3G8UMb0pxbytr72pg4&amp;type=js&amp;k=07c8a230815a9ffe0c4a3d740fc5e2425e4e9030&amp;t=1576001846"></script>
	<script type="text/javascript">
$(document).ready(function() {
$Zinit({
"form" : "",
"addr" : "addr1",
"addr2" : "addr2",
"zip1" : "postcode1",
"zip2" : "postcode2",
"type" : "layer"
});
});
var EC_FRONT_JS_CONFIG_ZIPCODEN = {"isAdmin":"F"};
</script>
</body>
</html>