<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>비밀번호 찾기</title>
        <style>
            body {
                background-color: #f7f7f7;
            }
            #container {}
            #container form {
                margin: 100px auto;
                width: 460px;
                background-color: #fff;
                padding: 10px 0;
            }
            #container form fieldset {
                border: none;
            }
            #container form fieldset h3 {
                color: #666;
                font-weight: normal;
            }
            #container form label {
                font-size: 12px;
                color: #888;
            }
            #container form .text_box {
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
            #container form .text_box::placeholder {
            	color: #bbb;
            }
            #btnBox {
                margin-top: 30px;
            }
            #btnBox button {
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
            #btnBox {
                margin-top: 30px;
            }
            #btnBox button {
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
        <script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
    </head>
    <body>
    <jsp:include page="/WEB-INF/views/header.jsp"/>
        <div id="container">
            <form action="" id="findIdForm">
                <fieldset>
                    <h3>비밀번호 찾기</h3>
                    <div>
                        <label>이름</label>
                        <div>
                            <input class="user_name text_box" type="text" placeholder="이름을 입력하세요">
                            <div class="error_box"></div>
                        </div>
                    </div>
                    <div>
                        <label>아이디</label>
                        <div>
                            <input class="user_id text_box" type="text" placeholder="아이디를 입력하세요">
                            <div class="error_box"></div>
                        </div>
                    </div>
                    <div>
                        <label>이메일</label>
                        <div>
                            <input class="user_email text_box" type="text" placeholder="이메일을 입력하세요">
                            <div class="error_box"></div>
                        </div>
                    </div>
                    <div id="btnBox">
                        <button>비밀번호 찾기</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </body>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
</html>