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
<title>wayo_notice</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/common.css">
<style type="text/css">
* {
     color: #545457;
}

#edit {
	padding: 0px;
	margin: 0px auto;
	width: 1000px;
}

#noticeForm {
	margin: 0px auto;
	text-align: center;
}

textarea {
	margin: 0px auto;
	padding: 10px;
}

.main {
	margin: 0px auto;
	width: 1000px;
}

.main h1 {
	text-align: center;
}

.modify {
	text-align: right;
	margin-top: 28px;
	margin-right: 48px;
}

#modifyBtn {
	padding: 10px 20px 10px 20px;
	background-color : cornflowerblue;
	color: #000000;
}

#modifyBtn:hover {
	cursor: pointer;
	border: 0.5px solid #545457;
	background-color: #f1f1f0;
	
}

#noticeForm {
	margin: 0px auto;
	text-align: center;
}

.noticeTitle, .noticeContent {
	padding-top: 10px;
	padding-bottom: 10px;
}

#noticeTitleName, #noticeContentName {
	padding: 10px 0 10px 0;
	text-align: left;
	font-size: 15px;
	margin-left: 50px;
	margin-bottom: 0;
}

#noticeForm input {
	width: 890px;
	color: #545457;
}

.noticeTitle {
	height: 10px;
}
.contentN {
	width: 890px;
	height: 500px;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<div class="main">
		<h1>공지사항</h1>
		
		<div id="edit">
			<form method="post" name="f" id="noticeForm">
				<p id="noticeTitleName">제목</p>
				<input type="text" name="title" class="noticeTitle" >
								
				<p id="noticeContentName">내용</p>
				<textarea name="content" class="contentN"></textarea>
			</form>
			<div class="modify">
				<a id="modifyBtn" onclick="addPost()">
					글쓰기
				</a>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
	<script type="text/javascript">
		function addPost() {
			if (f.title.value == "") {
				alert("제목을 입력해주세요");
				return;
			}
			if (f.content.value == "") {
				alert("내용을 입력해주세요");
				return;
			}
			f.action = "${pageContext.request.contextPath}/moo/noticeInsert";
			f.submit();
		}
	</script>
</body>
</html>