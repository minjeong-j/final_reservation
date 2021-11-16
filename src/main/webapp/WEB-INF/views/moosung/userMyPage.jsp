<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>MyPage</title>
<style type="text/css">
* {
	color: #545457;
}

body {
	margin: 0;
	/* 배경 컬러 */
	background-color: #f7f7f7;
	/*밑 공백
    margin-bottom: 40px;
    */
}

#container {
	background-color: #fff;
	text-align: center;
	margin: 0 auto;
	width: 780px;
    margin-top: 90px;
	/* 공백 
    padding-top: 30px;
    */
	padding-bottom: 30px;
}

.t_head {
	min-height: 130px;
	padding: 20px 50px;
	background-color: #f1f1f0;
}

#checkList {
	margin: 20px auto 0;
	max-width: 700px;
}

#checkList .time {
	padding: 11px 21px;
	margin: 0;
	border-bottom: 2px solid #f1f1f0;
	color: cornflowerblue;
}

#checkList .list {
	padding: 20px 0;
	border-bottom: 2px solid #f1f1f0;
}

#checkList .list ul {
	text-align: center;
	width: 100%;
}

#checkList .list li {
	display: inline-block;
	padding: 10px 23px;
	width: 120px;
}

.comment {
	padding: 15px 0 15px 0;
}

.list .detail input {
	display: block;
	border: none;
	background-color: transparent;
}

.list .detail input:focus {
	outline: none;
}

/* 아이콘 조정 */
.list #timeImg, #todoImg, #cleanImg, #lockImg {
	display: block;
	margin-bottom: 10px;
}
/*
.list #timeImg {
	width: 60px;
}
*/
.list #timeImg {
	width: 43px;
}

ul.mainImg {
	padding: 0;
	margin: 0;
	list-style: none;
}

ul.mainImg li {
	position: absolute;
	left: 640px;
	transition-delay: 1s; /* 새 슬라이드가 이동해 오는 동안 이전 슬라이드 이미지가 배경이 보이도록 지연 */
	padding: 0;
	margin: 0;
}

/* 아이콘과 글자 가운데 */
ul.detail {
	padding-left: 0;
	text-align: center;
	font-size: 15px;
	margin-bottom: 0;
}

.detail .timeLi #timeImg, #todoImg, #cleanImg, #lockImg {
	margin-left: 38px;
}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	
	<div id="container">
		<div id="checkList">
			<div class="time">
				<h1>My Page</h1>
				<br>
			</div>
			<div class="list">
				<ul class="detail">
					<li class="timeLi"><a href="reservation/view">
					<img src="${pageContext.request.contextPath}/images/ico/reservation.png"><br>예약 현황 조회</a></li>
					<li class="timeLi"><a href="userProfile">
					<img src="${pageContext.request.contextPath}/images/ico/write.png"><br>회원 정보 수정</a></li>
					<li class="timeLi"><a href="petProfile/view">
					<img src="${pageContext.request.contextPath}/images/ico/petprofile.png"><br>반려동물 프로필</a></li>
					<li class="timeLi"><a href="dolbom">
					<img src="${pageContext.request.contextPath}/images/ico/dolbom.png"><br>돌봄일지 조회</a></li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>