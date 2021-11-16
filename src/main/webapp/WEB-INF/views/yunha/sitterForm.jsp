<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>펫시터 신청 폼</title>
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
        #container form h3 {
            color: #666;
            font-weight: normal;
        }
        #container form fieldset {
            border: none;
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
        
        #idBox {
            margin-top: 30px;
        }
        #idBox span {}
        
        #snBox {
            margin-top: 30px;
        }
        
        #regionBox {
            margin-top: 30px;
        }
        #regionBox textarea {
            margin-top: 10px;
        }
        
        #contentBox {
            margin-top: 30px;
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
        
        .formal {
            margin-top: 5px;
            font-size: 12px;
            color: cornflowerblue;
        }
        .error_box {
            font-size: 12px;
            color: red;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
    <script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
    	$("#appBtn").click(function() {
    		
    		var nickReg = /^[가-힣]{2,5}$/;
	        var nickVal = $(".input_nick").val();
	        
	        //아이디
	        if($(".input_id").val()=='') {
	        	$(".input_id").focus();
	        	document.getElementById("idError").innerHTML="아이디를 입력해 주세요.";
	        	return false;
	        } else {
	        	document.getElementById("idError").innerHTML="";
	        }
	        
	        //닉네임
	        if($(".input_nick").val()=='') {
	        	$(".input_nick").focus();
	        	document.getElementById("nickError").innerHTML="활동 닉네임을 입력해 주세요.";
	        	return false;
	        } else if($(".input_nick").val().length>5 || $(".input_nick").val().length<2) {
	        	$(".input_nick").focus();
	        	document.getElementById("nickError").innerHTML="활동 닉네임은 한글 2자 이상 5자 이하로 입력해 주세요.";
	        	return false;
	        } else if(nickVal.match(nickReg) == null) {
	        	$(".input_nick").focus();
	        	document.getElementById("nickError").innerHTML="활동 닉네임은 한글 2자 이상 5자 이하로 입력해 주세요.";
	        	return false;
	        } else {
	        	document.getElementById("nickError").innerHTML="";
	        }
	        
	        //지역
	        if($(".input_region").val()=='') {
	        	$(".input_region").focus();
	        	document.getElementById("regionError").innerHTML="활동 가능 지역을 입력해 주세요.";
	        	return false;
	        } else {
	        	document.getElementById("regionError").innerHTML="";
	        }
	        
	        petsitterForm.submit();
	        
    	});
    });
    </script>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
	<div id="container">
		<form name="petsitterForm" method="post">
			<fieldset>
				<h3>펫시터 신청 폼</h3>
				<div id="idBox">
					<label>WAYO 아이디</label>
					<div>
						<input type="text" placeholder="WAYO에 가입된 아이디를 입력해 주세요." class="text_box input_id" name="id">
					</div>
					<span class="error_box" id="idError"></span>
				</div>
				<div id="snBox">
					<label>활동 닉네임</label>
					<div class="formal">
                        * 활동 닉네임은 한글 2~5자 이내로 입력해 주세요.
                    </div>
					<div>
						<input type="text" placeholder="펫시터 활동시 사용할 닉네임 입력" class="text_box input_nick" name="sitterName">
					</div>
					<span class="error_box" id="nickError"></span>
				</div>
				<div id="regionBox">
					<label>활동 가능 지역</label>
					<div class="formal">
                        * 구 혹은 동 단위로 입력해 주세요.
                    </div>
					<div>
						<textarea placeholder="ex)서울시 강남구, 서울시 서초구 서초동, 성남시 분당구..."class="text_box input_region" name="region"></textarea>
					</div>
					<span class="error_box" id="regionError"></span>
				</div>
				<div id="contentBox">
					<label>비고</label>
					<div>
						<input type="text" placeholder="ex)펫시터 경력, 흡연, 자차 유무 등..." class="text_box" name="content">
					</div>
					<span class="error_box" id="cttError"></span>
				</div>
				<div id="btnBox">
				    <button id="appBtn" type="button">양식 제출</button>
				</div>
			</fieldset>
		</form>
	</div>
</body>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</html>