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
<title>Reservation_Form</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/common.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
			<h1>예약 등록</h1>
		</div>
	</div>
	<div id="content">
		<div class="board_list">
			<form name="f" method="post">
				<table>
					<tr>
						<th>펫시터 선택</th>
						<td>
							<select name="sitterId">
							<option value="-">펫시터를 선택해주세요.</option>
								<c:forEach var="petSitter" items="${petSitterList }">
									<option value="${petSitter.sitterName }">${petSitter.sitterName }</option>
								</c:forEach>
							</select>
						</td>
					</tr>
					<tr>
						<th>서비스 시작일 선택</th>
						<td><input type="text" class="datepicker" name ="startDate" value="${reservation.startDate }"></td>
					</tr>
					<tr>
						<th>서비스 종료일 선택</th>
						<td><input type="text" class="datepicker" name ="endDate" value="${reservation.endDate }"></td>
					</tr>
					<tr>
						<th>특이 사항</th>
						<td><input type="text" name="content" placeholder="특이사항 작성" value="${reservation.content }"></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="postSearch">
			<input type="button" value="예약 신청하기" onclick="addreservation()">
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
		function addreservation() {
			f.action = "${pageContext.request.contextPath}/reservation/view";
			f.submit();
		}
		
		$( function() {
		    $( ".datepicker" ).datepicker({
		    	dateFormat: 'yymmdd'
		    });
		} );
	</script>
</body>

</html>