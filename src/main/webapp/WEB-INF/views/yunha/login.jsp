<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>로그인</title>
        <style>
            
            body {
                background-color: #f7f7f7;
            }
            
            #container {}
            #container form {
                margin: 100px auto 0;
                width: 460px;
                background-color: #fff;
            }
            #container form fieldset {
                border: none;
            }
            .id_box {
                margin-top: 40px;
            }
            .id_box label {
                font-size: 14px;
                color: #666;
            }
            .id_box div {}
            .id_box div input {
                width: 100%;
                height: 46px;
                font-size: 15px;
                outline: none;
                border-top: none;
                border-left: none;
                border-right: none;
                border-bottom: 1px solid rgb(224, 224, 224);
                box-sizing : border-box;
                color: #555;
            }
            .id_box div input::placeholder {
                color: #bbb;
            }
            .pw_box {
                margin-top: 30px;
            }
            .pw_box label {
                font-size: 14px;
                color: #666;
            }
            .pw_box div {}
            .pw_box div input {
                width: 100%;
                height: 46px;
                font-size: 15px;
                outline: none;
                border-top: none;
                border-left: none;
                border-right: none;
                border-bottom: 1px solid rgb(224, 224, 224);
                box-sizing : border-box;
                color: #555;
            }
            .pw_box div input::placeholder {
                color: #aaa;
            }
            .error_box {
                margin-top: 20px;
                width: 100%;
                height: 20px;
                font-size: 12px;
                color: red;
                text-align: center;
                line-height: 20px;
            }
            .login_box {
                margin: 20px 0;
            }
            .login_box button {
                display: block;
                margin: 0 auto;
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
            .a_box {
                width: 460px;
                margin: 20px auto 0;
                text-align: center;
            }
            .a_box a {
                text-decoration: none;
                font-size: 12px;
                color: #888;
            }
            .a_box span {
                font-size: 12px;
                color: #888;
            }
            
        </style>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
        <script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
        <script type="text/javascript">
        $(document).ready(function(){
        	$(".login_btn").click(function(){
        		if($(".input_id").val() == ''){
        			$(".input_id").focus();
        			document.getElementById("errorBox").innerHTML="아이디를 입력해주세요.";
        			return false;
        		} else {
        			document.getElementById("errorBox").innerHTML="";
        		}
        		
        		if($(".input_pw").val() == ''){
        			$(".input_pw").focus();
        			document.getElementById("errorBox").innerHTML="비밀번호를 입력해주세요.";
        			return false;
        		} else {
        			document.getElementById("errorBox").innerHTML="";
        		}
        		
        		loginForm.submit();
        		
        	});
        });
        </script> 
    </head>
    <body>
    <jsp:include page="/WEB-INF/views/header.jsp"/>
        <div id="container">
            <form name="loginForm" method="post" action="">
                <fieldset>
                    <div class="id_box">
                        <label>아이디</label>
                        <div>
                            <input type="text" name="id" placeholder="아이디를 입력해주세요" class="input_id">
                        </div>
                    </div>
                    <div class="pw_box">
                        <label>비밀번호</label>
                        <div id="pwBox">
                            <input type="password" name="password" placeholder="비밀번호를 입력해주세요" class="input_pw">
                        </div>
                    </div>
                    <div class="error_box" id="errorBox"></div>
                    <div class="login_box">
                        <button class="login_btn" type="button">로그인</button>
                    </div>
                </fieldset>
            </form>
             <div class="a_box">
                <a href="${pageContext.request.contextPath}/member/findId">아이디 찾기</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/findPw">비밀번호 찾기</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/agreement">회원가입</a>
            </div>
        </div>
    </body>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
</html>