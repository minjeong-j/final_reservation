<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>펫시터 신청 완료</title>
    <style>
        body {
            background-color: #f7f7f7;
        }
        
        #container {
            margin: 100px auto;
            width: 460px;
            background-color: #fff;
            padding: 10px 0;
        }
        #container h3 {
            color: cornflowerblue;
            font-weight: normal;
            text-align: center;
        }
        #container div:nth-child(2){
            text-align: center;
            color: #333;
        }
        #container .aBox {
            margin: 30px 0;
            text-align: center;
        }
        #container .aBox a {
            text-decoration: none;
            font-size: 12px;
            color: #888;
        }
        #container .aBox span {
            font-size: 12px;
            color: #888;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
	<div id=container>
	    <h3>신청 완료</h3>
		<div>
			펫시터 신청이 완료 되었습니다!
			<br>
			2주 이내로 연락 드릴 예정이오니
			<br>
			회원 가입시 등록한 이메일을 확인 해주세요.
		</div>
		<div class="aBox">
			<a href="">메인 바로가기</a>
			<span>|</span>
			<a href="">마이 페이지 바로가기</a>
		</div>
	</div>
</body>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</html>