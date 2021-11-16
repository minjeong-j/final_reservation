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
<title>wayo_qna</title>
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

#replyForm {
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

.replyTitle, .replyContent {
	padding-top: 10px;
	padding-bottom: 10px;
}

#replyTitleName, #replyContentName {
	padding: 10px 0 10px 0;
	text-align: left;
	font-size: 15px;
	margin-left: 50px;
	margin-bottom: 0;
}

#replyForm input {
	width: 890px;
	color: #545457;
}

.replyTitle {
	height: 10px;
}
.replyContent {
	width: 890px;
	height: 500px;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<div class="main">
		<h1>문의사항 답글</h1>
		
		<div id="edit">
			<form method="post" name="f" id="replyForm">
				<input type="hidden" name="postId" value="${qnaPost.id }">				
				<p id="replyContentName">내용</p>
				<textarea name="content" class="replyContent">${reply.content }</textarea>
				<!-- <input type="text" name="content" value="${reply.content }" class="replyContent"> -->
			</form>
			<div class="modify">
				<a id="modifyBtn" onclick="addReply()">
					글쓰기
				</a>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
	<script type="text/javascript">
		function addReply() {
			f.action = "${pageContext.request.contextPath}/post/replyWrite";
			f.submit();
		}
	</script>
</body>
</html>