<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
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

head {
	color: white;
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

a {
	color: white;
	font-style: normal;
	text-decoration: none;
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

.kk {
	text-align: right;
	font-size: 12px;
	font-style: normal;
	color: white;
	word-spacing: 7px;
	margin-top: 8px;
	margin-right: inherit;
}

img {
	background-position: center;
	background-size: contain;
	height: 90%;
	width: 90%;
	align: center;
}

body {
	background-color: currentColor;
	margin-left: 8px;
}

hr {
	border: solid 0.3px white;
	margin-top: 8px;
	margin-left: 60px;
	margin-right: 60px;
}

hh {
	text-align: center;
	display: block;
}

h3 {
	text-align: center;
	margin-top: 15px;
	word-spacing: 40px;
}

ul {
	list-style: none;
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    
    color: white;
}

li {
	margin: 2px;
	list-style: none;
    display: list-item;
    font-size: 12px;
    text-align: -webkit-match-parent;
    color: white;
}

#ten {
	width: 10%;
	float: left;
}

#eighty {
	width: 80%;
	float: left;
}

#footer {
	margin: 1%;
}


</style>



<html>
<head>

<title>Welcome to gogeous</title>
<meta charset="utf-8">

</head>

<body>
	<div id="wrap">
		<div class="kk">
			<div>
				<a href="index.jsp">LOG_OUT</a>
				CART(0)
				<a href="board1List.bo">NOTICE</a>
				<a href="board2List.bo">REVIEW</a> 
				<a href="board3List.bo">Q&A</a>
				<a href="board4List.bo">FAQ</a>
				<a href="">MYPAGE</a>
			</div>
	
			<h1>
				<a href="index.jsp">gorgeous</a>
			</h1>
			<h6>
				<b> Accessories </b>
			</h6>
	
			<hr>
	
			<h3>
			<a href= "./goods/best.jsp">BEST</a>
			BASIC_ITEM NEW_ARRIVAL RING EARING NECKLACE SIVER_925
				ETC BIG_SALE VINTAGE_COLLECTION</h3>
	
			<div>
				<hr>
			</div>
			<hr>
		</div>
		
		<div id="hh">
			<img src="./images/ring1.jpg" alt="반지">
		</div>
	</div>
	
	<div id="footer">
		<!-- a href="">instagram</a> <br-->
		<div id="ten">ii</div>
		<div id="eighty"> 
			<ul>
				<li>
					회사이름 : <br>
				</li>
				<li>
					주소 : <br>
				</li>
				<li>
					고객센터 : xxxx - xxxx<br>
				</li>
				<li>
					이메일 : xxxx@xxxx.com<br>
				</li>
				<li>
					사업자 등록 번호 : xxxx-xx-xxxxx<br>
				</li>
				<li>
					통신판매번호 : xxxx-xxxx-xxxx<br>
				</li>
				<li>
					Copyright© 2020. Minyeji All Rights Reserved.<br>
				</li>
			</ul>
		</div> 	
	</div>
</body>

</html>