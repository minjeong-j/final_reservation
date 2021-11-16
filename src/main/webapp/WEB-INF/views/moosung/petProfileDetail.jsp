<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<link rel="icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Pet_Profile_Detail</title>
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

th {
	background-color: #f1f1f0;
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
			<h1>반려 동물 프로필 상세</h1>
			<br>
		</div>
	</div>
	<div id="content">
		<div class="board_list">
			<table>
				<colgroup>
					<col style="width: 150px;">
					<col style="width: 1000px;">
				</colgroup>
				<tbody>
					<tr >
						<th>이미지</th>
						<td>${petProfile.img }</td>
					</tr>
					<tr >
						<th>이름</th>
						<td>${petProfile.name }</td>
					</tr>
					<tr >
						<th>나이</th>
						<td>${petProfile.age}살</td>
					</tr>
					<tr >
						<th>품종</th>
						<td>${petProfile.kind }</td>
					</tr>
					<tr >
						<th>몸무게</th>
						<td>${petProfile.weight}kg</td>
					</tr>
					<tr >
						<th>성별</th>
						<td>${petProfile.sex }</td>
					</tr>
					<tr >
						<th>특이사항</th>
						<td>${petProfile.content }</td>
					</tr>
				</tbody>				
			</table>
		</div>
		<div class="postSearch">
			<input type="button" value="프로필 수정하기" onclick="updatePetProfile()">
			<input type="button" value="프로필 삭제하기" onclick="deletePetProfile()">
			<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/petProfile/view'">
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
	<script type="text/javascript">
		function updatePetProfile() {
			location.href = "${pageContext.request.contextPath}/petProfile/update?id=${petProfile.id}";
		}
		function deletePetProfile() {
			if (window.confirm("정말 삭제하시겠습니까?")) {
				location.href = "${pageContext.request.contextPath}/petProfile/remove?id=${petProfile.id}";
			}
		}
	</script>
</body>
</html>