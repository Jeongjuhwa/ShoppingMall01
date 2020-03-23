<%@ page import="net.board.vo.PageInfo"%>
<%@ page import="net.board.vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	ArrayList<BoardBean> articleList = (ArrayList<BoardBean>) request.getAttribute("articleList");
	PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>gorgeous - NOTICE</title>
<style type="text/css">
h3 {
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
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
	text-align: center;
	margin-top: 15px;
	word-spacing: 40px;
}

h4 {
	color: white;
	font-family: cursive;
	font-size: 35px;
	text-align: center;
	margin-bottom: 3px;
	margin-top: 90px;
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

hr {
	border: solid 0.3px white;
	margin-top: 8px;
	margin-left: 60px;
	margin-right: 60px;
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

table {
	border: 1px solid #bcbcbc;
	width: 85%;
	font-size: 20px;
	color: white;
	margin-left: auto;
	margin-right: auto;
}

th {
	border: 1px solid #bcbcbc;
	font-size: 20px;
	color: black;
	background-color: gray;
}

a {
	color: white;
	font-style: normal;
	text-decoration: none;
}

p {
	color: white;
}

.tds {
	font-size: 16px;
	color: white;
	border: 1px solid #bcbcbc;
}

.tds2 {
	font-size: 16px;
	color: white;
	border: 1px solid #bcbcbc;
	text-align: left;
}

#pageList {
	color: white;
	width: 100%;
	text-align: center;
}

.box-left {
	flex: 1;
	float: left;
	flex-basis: 100px;
	font-size: 15px;
	font-family: monospace;
	font-size: 15px;
	text-align: center;
}

.box-middle {
	flex: 1;
	float: left;
	flex-basis: 100px;
	font-size: 15px;
	margin-left: 480px;
	font-family: monospace;
	font-size: 15px;
	text-align: center;
}

.box-right {
	flex: 1;
	flex-basis: 150px;
	text-align: right;
	display: inline-block;
	margin-left: 500px;
	font-family: monospace;
	font-size: 15px;
	text-align: center;
}

body {
	margin-left: 8px;
	background-color: currentColor;
}

.list {
	flex: 1;
	float: left;
	flex-basis: 100px;
}

.content2 {
	flex: 1;
	float: left;
	flex-basis: 100px;
	font-size: 15px;
	font-family: italic;
	font-size: 15px;
}

.content {
	flex: 1;
	float: left;
	flex-basis: 100px;
	font-size: 15px;
	margin-left: 360px;
	font-family: italic;
}

.content1 {
	flex: 1;
	flex-basis: 150px;
	text-align: right;
	font-size: 15px;
	display: inline-block;
	margin-left: 370px;
	font-family: italic;
}
</style>
</head>
<body>
	<!-- 게시판 리스트 -->
	<div id="wrap">
		<div class="kk">
			<div>
				<a href="MemberLogin.me">LOG_IN</a> CART(0) <a href="board1List.bo">NOTICE</a>
				<a href="board2List.bo">REVIEW</a> <a href="board3List.bo">Q&A</a> <a
					href="board4List.bo">FAQ</a>
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
		<section id="listForm">
			<h2>
				<p>NOTICE</p>
			</h2>
			<!-- hr style ="display:black; border:black()none; border-top:black 1px solid; 
			   height:1px; " -->
			<table>
				<%
					if (articleList != null && listCount > 0) {
				%>

				<tr id="tr_top">
					<th><b>번호</b></th>
					<th><b>제목</b></th>
					<th><b>작성자</b></th>
					<th><b>날짜</b></th>
					<th><b>조회수</b></th>
				</tr>

				<%
					for (int i = 0; i < articleList.size(); i++) {
				%>
				<tr>
					<td class="tds"><%=articleList.get(i).getBOARD_NUM()%></td>

					<td class="tds2">
						<%
							if (articleList.get(i).getBOARD_RE_LEV() != 0) {
						%> <%
 	for (int a = 0; a <= articleList.get(i).getBOARD_RE_LEV() * 2; a++) {
 %> &nbsp; <%
 	}
 %> ▶ <%
 	} else {
 %> ▶ <%
 	}
 %> <a
						href="board1Detail.bo?board_num=<%=articleList.get(i).getBOARD_NUM()%>&page=<%=nowPage%>">
							<%=articleList.get(i).getBOARD_SUBJECT()%>
					</a>
					</td>

					<td class="tds"><%=articleList.get(i).getBOARD_NAME()%></td>
					<td class="tds"><%=articleList.get(i).getBOARD_DATE()%></td>
					<td class="tds"><%=articleList.get(i).getBOARD_READCOUNT()%></td>
				</tr>
				<%
					}
				%>
			</table>
		</section>

		<section id="pageList">
			<%
				if (nowPage <= 1) {
			%>
			[이전]&nbsp;
			<%
				} else {
			%>
			<a href="board1List.bo?page=<%=nowPage - 1%>">[이전]</a>&nbsp;
			<%
				}
			%>

			<%
				for (int a = startPage; a <= endPage; a++) {
						if (a == nowPage) {
			%>
			[<%=a%>]
			<%
				} else {
			%>
			<a href="board1List.bo?page=<%=a%>">[<%=a%>]
			</a>&nbsp;
			<%
				}
			%>
			<%
				}
			%>

			<%
				if (nowPage >= maxPage) {
			%>
			[다음]
			<%
				} else {
			%>
			<a href="board1List.bo?page=<%=nowPage + 1%>">[다음]</a>
			<%
				}
			%>
		</section>
		<%
			} else {
		%>
		<section id="emptyArea">등록된 글이 없습니다.</section>
		<%
			}
		%>
		<p>
			<a href="board1WriteForm.bo">게시판글쓰기</a>
		</p>
	</div>
</body>
</html>


<!-- strong><div class="box-left">&emsp;&emsp;&emsp;NO.</div></strong>
			    <strong><div class="box-middle">&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;SUBJECT</div></strong>
			    <strong><div class="box-right">&emsp;NAME</div></strong>
				     <hr style ="display:black; border:black()none; border-top:black 1px solid; 
			   height:1px; " >
			   
			   
			   <div class="list">
			   			  
			    <div class="box-left">&nbsp;&nbsp;[공지]</div>
			    <div class="content">코로나19 확산방지를 위한 우체국 택배 개별방문 수거중지</div>
			    <div class="content1">관리자</div>
			    	<hr style="margin-left:20px;">

			    
		
			   </div -->