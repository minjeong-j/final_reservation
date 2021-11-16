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
<title>Pet_Profile</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/common.css">
<style type="text/css">
* {
	color: #545457;
}

div {
	display: block;
}

.t_head {
	min-height: 130px;
	padding: 20px 50px;
	background-color: #f1f1f0;
	/* 헤더넣으면서 자리 비켜주기 */
    margin-top: 60px;
}

#title .t_head h1 {
	color: #000000;
}

#content {
	padding: 100px 0 70px 0;
}

table {
	margin: 0;
	padding: 0;
	width: 100%;
	border: 0;
	font-size: 15px;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	padding: 10px 0 10px 0;
}

td:hover{
	cursor: pointer;
	text-decoration: underline;
}

th {
	background-color: #f1f1f0;
}

#headerP .num, #body .num, #body_2 .num, #body_3 .num {
	color: cornflowerblue;
	font-weight: 500;
}

.pageNum {
	padding: 15px 0 15px 0;
	text-align: center;
}

.postSearch {
	padding: 0 0 15px 0;
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	
	<div id="title">
		<div class="t_head">
			<h1>반려 동물 프로필</h1>
		</div>
	</div>
	<div id="content">
		<div class="board_list">
			<table>
				<tr id="headerP">
					<th>이미지</th>
					<th>이름</th>
					<th>성별</th>
					<th>나이</th>
					<th>삭제</th>
				</tr>
				<c:forEach var="petProfile" items="${petProfileList }">
					<tr id="body" >
						<td onclick="location.href='${pageContext.request.contextPath }/petProfile/detail?id=${petProfile.id}'">${petProfile.img }</td>
						<td onclick="location.href='${pageContext.request.contextPath }/petProfile/detail?id=${petProfile.id}'">${petProfile.name }</td>
						<td onclick="location.href='${pageContext.request.contextPath }/petProfile/detail?id=${petProfile.id}'">${petProfile.sex }</td>
						<td onclick="location.href='${pageContext.request.contextPath }/petProfile/detail?id=${petProfile.id}'">${petProfile.age }</td>
						<td><button type="button"
								onclick="location.href='${pageContext.request.contextPath }/petProfile/remove?id=${petProfile.id}'">삭제하기</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
	<div class="postSearch">
		<input type="button" value="반려 동물 프로필 추가하기"
			onclick="addPetProfile()">
	</div>
	<script type="text/javascript">
		function addPetProfile() {
			location.href = "${pageContext.request.contextPath}/petProfile/form";
		}
	</script>
</body>
</html>