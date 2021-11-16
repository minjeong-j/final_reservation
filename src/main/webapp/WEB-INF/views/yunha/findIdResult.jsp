<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>아이디 찾기 결과</title>
    <style>
       body {
            background-color: #f7f7f7;
        }
        
        #container {
            margin: 100px auto;
            padding: 10px;
            width: 440px;
            background-color: #fff;
            padding: 10px;
        }
        #container h3 {
            color: cornflowerblue;
            text-align: center;
        }
        
        #container div:nth-child(2) {
            text-align: center;
            margin-bottom: 30px;
        }
        #container div:nth-child(2) span:nth-child(2) {
            color: cornflowerblue;
            font-weight: bold;
        }
        
        #btnBox {
            margin-top: 30px;
        }
        #btnBox a {
        	display: block;
            width: 100%;
            height: 60px;
            font-size: 20px;
            text-align: center;
            line-height: 60px;
            background-color: cornflowerblue;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
	<div id="container">
	    <h3>아이디 찾기</h3>
	    <div>
	        <span>회원님의 아이디는</span>
            <span>${id }</span>
            <span>입니다.</span>
	    </div>
	    <div id="btnBox">
	        <a href="${pageContext.request.contextPath}/member/findPw">비밀번호 찾기</a>
	    </div>
	</div>
</body>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</html>