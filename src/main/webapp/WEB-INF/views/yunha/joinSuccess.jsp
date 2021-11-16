<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
</head>
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
            text-align: center;
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
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
	<div id="container">
		<h3>회원가입이 완료되었습니다.</h3>
		<div class="aBox">
			<a href="${pageContext.request.contextPath}/index">메인으로 이동</a>
			<span>|</span>
			<a href="${pageContext.request.contextPath}/member/login">로그인페이지로 이동</a>
		</div>
	</div>
</body>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</html>