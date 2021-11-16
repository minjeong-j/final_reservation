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
<title>Reservation</title>
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

#header .num, #body .num, #body_2 .num, #body_3 .num {
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
			<h1>예약 확인</h1>
		</div>
	</div>
	<div id="content">
		<div class="board_list">
			<table>
				<tr id="header">
					<th>예약 번호</th>
					<th>예약 신청자</th>
					<th>담당 펫시터</th>
					<th>서비스 시작일</th>
					<th>서비스 종료일</th>
					<th>서비스 등록일</th>
					<th>삭제</th>
				</tr>
				<c:forEach var="reservation" items="${reservationList }">
					<tr id="body" >
						<td onclick="location.href='${pageContext.request.contextPath }/reservation/detail?id=${reservation.id}'">${reservation.id }</td>
						<td onclick="location.href='${pageContext.request.contextPath }/reservation/detail?id=${reservation.id}'">${reservation.userId }</td>
						<td onclick="location.href='${pageContext.request.contextPath }/reservation/detail?id=${reservation.id}'">${reservation.sitterId }</td>
						<td onclick="location.href='${pageContext.request.contextPath }/reservation/detail?id=${reservation.id}'">${reservation.startDate }</td>
						<td onclick="location.href='${pageContext.request.contextPath }/reservation/detail?id=${reservation.id}'">${reservation.endDate }</td>
						<td onclick="location.href='${pageContext.request.contextPath }/reservation/detail?id=${reservation.id}'">${reservation.registerDate }</td>
						<td><button type="button"
								onclick="location.href='${pageContext.request.contextPath }/reservation/remove?id=${reservation.id}'">삭제하기</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div class="postSearch">
		<input type="button" value="예약 등록하기"
			onclick="addReservation()">
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
	<script type="text/javascript">
		function addReservation() {
			location.href = "${pageContext.request.contextPath}/reservation/form";
		}
	</script>
</body>
</html>