<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<link rel="icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>Pet_Profile_Form</title>
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
			<h1>반려 동물 프로필 수정</h1>
		</div>
	</div>
    <div id="content">
		<div class="board_list">
			<form name="f" method="post">
				<table>								
					<tr>
						<th>이미지</th>
						<td><input type="file" name="img" value="${petProfile.img }">
						<input type="hidden" name="id" value="${petProfile.id }"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="name" value="${petProfile.name }"></td>
					</tr>
					<tr>
						<th>성별</th>
						<td><input type="text" name="sex" value="${petProfile.sex }">	</td>
					</tr>
					<tr>
						<th>나이</th>
						<td><input type="text" name="age" value="${petProfile.age }"></td>
					</tr>
					<tr>
						<th>품종</th>
						<td><input type="text" name="kind" value="${petProfile.kind }"></td>
					</tr>
					<tr>
						<th>몸무게</th>
						<td><input type="text" name="weight" value="${petProfile.weight }"></td>
					</tr>
					<tr>
						<th>특이 사항</th>
						<td><input type="text" name="content" value="${petProfile.content }"></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="postSearch">
			<input type="button" value="프로필 수정하기" onclick="modifyPetProfile()">
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
    <script type="text/javascript">
    function modifyPetProfile() {
    	/*
		if (f.img.value == "") {
			alert("이미지를 등록해주세요");
			return;
		}*/
		if (f.name.value == "") {
			alert("이름을 입력해주세요");
			return;
		}
		if (f.sex.value == "") {
			alert("성별을 입력해주세요");
			return;
		}
		if (f.age.value == "") {
			alert("나이를 입력해주세요");
			return;
		}
		if (f.kind.value == "") {
			alert("종류를 입력해주세요");
			return;
		}
		if (f.weight.value == "") {
			alert("몸무게를 입력해주세요");
			return;
		}
		f.action = "${pageContext.request.contextPath}/petProfile/update";
		f.submit();
	}
    </script>
</body>
</html>