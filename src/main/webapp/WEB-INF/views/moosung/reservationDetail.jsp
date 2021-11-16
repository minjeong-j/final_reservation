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
<title>Reservation_Detail</title>
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
			<h1>예약 상세 내용 확인</h1>
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
						<th>예약 번호</th>
						<td>${reservation.id }</td>
					</tr>
					<tr >
						<th>예약 신청자</th>
						<td>${reservation.userId }님</td>
					</tr>
					<tr >
						<th>담당 펫시터</th>
						<td>${reservation.sitterId}님</td>
					</tr>
					<tr >
						<th>서비스 시작일</th>
						<td>${reservation.startDate }</td>
					</tr>
					<tr >
						<th>서비스 종료일</th>
						<td>${reservation.endDate}</td>
					</tr>
					<tr >
						<th>서비스 등록일</th>
						<td>${reservation.registerDate }</td>
					</tr>
					<tr >
						<th>특이사항</th>
						<td>${reservation.content }</td>
					</tr>
				</tbody>				
			</table>
		</div>
		<div class="postSearch">
			<input type="button" value="프로필 삭제하기" onclick="deletereservation()">
			<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/reservation/view'">
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
	<script type="text/javascript">
		function deletereservation() {
			if (window.confirm("정말 삭제하시겠습니까?")) {
				location.href = "${pageContext.request.contextPath}/reservation/remove?id=${reservation.id}";
			}
		}
	</script>
</body>
</html>