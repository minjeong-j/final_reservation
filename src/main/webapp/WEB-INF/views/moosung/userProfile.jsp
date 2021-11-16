<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Profile</title>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<div class="title">
		<div class="t_head">
			<h1>Profile</h1>
		</div>
	</div>
	<div id="content">
		<div class="board_list">
			<form name="f" method="post">
				<table>
					<colgroup>
						<col style="width: 150px;">
						<col style="width: 1000px;">
					</colgroup>
					<tbody>
						<tr>
							<th>이메일</th>
							<td><input type="text" id="email" name="email" style="cursor: not-allowed;"
								readonly="readonly" value="${member.email }"></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" id="password" name="password"
								value="${member.password }"></td>
						</tr>
						<tr>
							<th>비밀번호 확인</th>
							<td><input type="password" id="passwordCheck"
								class="writable" name="passwordCheck"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" id="name" name="name"
								class="writable" value="${member.name }"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<input type="button" id="address_search" 
									onclick="sample4_execDaumPostcode()" value="새 주소 입력하기"><br>
								<input type="text" id="post_code" name="post_code"	style="cursor: not-allowed;"
									readonly="readonly" value="${member.postCode }"><br>								
								<input type="text" id="road_address" name="road_address" style="cursor: not-allowed;"
									readonly="readonly" value="${member.roadAddress }"><br>
								<input type="text" id="detail_address" name="detail_address" placeholder="상세 주소를 입력해주세요"
									value="${member.detailAddress }"></td>
						</tr>
						<tr>
							<th>휴대전화</th>
							<td><input type="text" id="phone" name="phone"
								class="writable" value="${member.phone}"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<div class="postSearch">
			<input type="button" value="변경완료" onclick="memberModify();">
			<input type="button" value="회원탈퇴" onclick="memberQuit()">
		</div>
	
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">		
		function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	            	var roadAddr = data.roadAddress;
	            	document.getElementById('post_code').value = data.zonecode;
	                document.getElementById("road_address").value = roadAddr;
	            }
	        }).open();
	    }
		
		function memberQuit() {
			if(window.confirm("정말 탈퇴하시겠습니까?")) {
				location.href = "${pageContext.request.contextPath}/member/remove";
			}
		}
		
		function memberModify() {
			location.href = "${pageContext.request.contextPath}/member/update";			
		}
	</script>
</body>
</html>