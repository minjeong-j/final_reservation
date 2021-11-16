<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>돌봄일지 | 와요(WAYO) </title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/common.css">
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
 	/* 공백 
    margin-top: 30px;
    padding-top: 30px;
    */
    padding-bottom: 30px;
}

.t_head {
    min-height: 130px;
    padding : 20px 50px;
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
    padding : 10px 23px;
    width: 120px;
}

.comment {
	padding: 15px 0 15px 0;
}

.list .detail input {
	display: block;
	border: none;
	background-color:transparent;
}

.list .detail input:focus {
	outline: none;
}

/* 아이콘 조정 */
.list #timeImg, #todoImg, #cleanImg, #lockImg {
	display : block;
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


/* 슬라이드 */
#slider{
    width: 720px;
    height: 500px;
    position: relative;
    margin: 0 auto;
    overflow: hidden; /* 현재 슬라이드 오른쪽에 위치한 나머지 슬라이드 들이 보이지 않도록 가림 */
}
#slider input[type=radio]{
    display: none;
}

ul.mainImg{
    padding: 0;
    margin: 0;
    list-style: none;    
}
ul.mainImg li{
    position: absolute;
    left: 640px;
    transition-delay: 1s; /* 새 슬라이드가 이동해 오는 동안 이전 슬라이드 이미지가 배경이 보이도록 지연 */
    padding: 0;
    margin: 0;
}

.bullets{
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    bottom: 20px;
    z-index: 2;
}
.bullets label{
    display: inline-block;
    border-radius: 50%;
    background-color: rgba(0,0,0,0.55);
    width: 20px;
    height: 20px;
    cursor: pointer;
}
/* 현재 선택된 불릿 배경 흰색으로 구분 표시 */
#slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
    background-color: #fff;
}
#slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
    background-color: #fff;
}
#slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
    background-color: #fff;
}

#slider input[type=radio]:nth-child(1):checked~ul.mainImg>li:nth-child(1){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
#slider input[type=radio]:nth-child(2):checked~ul.mainImg>li:nth-child(2){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
#slider input[type=radio]:nth-child(3):checked~ul.mainImg>li:nth-child(3){
    left: 0;
    transition: 0.5s;
    z-index:1;
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

.comment {
	margin: 20px 0 20px 0;
	text-align: left;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	
	<div id="container">
	    <div id="slider">
		    <input type="radio" name="slide" id="slide1" checked>
		    <input type="radio" name="slide" id="slide2">
		    <input type="radio" name="slide" id="slide3">
	        <ul id="imgHolder" class="mainImg">
	        <!--  
	       		<li>${dolbom.img }</li>
 			-->
	       		
	        	<li><img src="${pageContext.request.contextPath }/images/img/dol_cat3.jpg"></li>
	        	<li><img src="${pageContext.request.contextPath }/images/img/dol_cat2.jpg"></li>
	        	<li><img src="${pageContext.request.contextPath }/images/img/dol_cat.jpg"></li>		      
 			</ul>
	        <div class="bullets">
		       	<label for="slide1">&nbsp;</label>
		        <label for="slide2">&nbsp;</label>
		        <label for="slide3">&nbsp;</label>
	        </div>
	    </div>
	    
	    <div id="checkList">
	        <div class="time">
	            제목 | ${dolbom.title }
	        </div>
	        <div class="list">
	           <ul class="detail">
	                <li class="timeLi">
	                	<img src="${pageContext.request.contextPath }/images/ico/icon1.png" id="timeImg" >
	                	<a>${reservation.startDate } ~ ${reservation.endDate }</a><input id = "time" readonly="readonly">
	                </li>
	                <li class="todoLi">
	                	<img src="${pageContext.request.contextPath }/images/ico/icon2.png" id="todoImg">
	                	<a>todo</a><input id = "todo" readonly="readonly">
	                </li>
	                <li class="cleanLi">
	                	<img src="${pageContext.request.contextPath }/images/ico/icon4.png" id="cleanImg">
	                	<a>환경 정리</a><input id = "cleaning" readonly="readonly">
	                </li>
	                <li class="rockLi">
	                	<img src="${pageContext.request.contextPath }/images/ico/icon5.png" id="lockImg">
	                	<a>문 잠금</a><input id = "lock" readonly="readonly">
	                </li>
	           </ul>
	        </div>
	        <div class="comment">
	            ${dolbom.content }
	        </div>
	     	
	     	<div class="postEdit">
				<input type="button" value="글 수정하기" onclick="updatePost()">
				<input type="button" value="삭제하기" onclick="deletePost()">
				<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/dolbom/dolbomView'">
			</div>
	    </div>
    	
    </div>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
     <script type="text/javascript">
    function updatePost() {
		location.href = "${pageContext.request.contextPath}/dolbom/dolbomUpdate?id=${dolbom.id}";
	}
	function deletePost() {
		if (window.confirm("정말 삭제하시겠습니까?")) {
			location.href = "${pageContext.request.contextPath}/dolbom/dolbomRemove?id=${dolbom.id}";
		}
	}
	</script>
</body>
</html>