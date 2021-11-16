<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>회원 가입</title>
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
                position: relative;
            }
            #pwBox {
                margin-top: 30px;
            }
            #nameBox {
                margin-top: 30px;
            }
            #bdayBox {
                margin-top: 30px;
            }
            #addrBox {
                margin-top: 30px;
                position: relative;
            }
            #phoneBox {
                margin-top: 30px;
            }
            #emailBox {
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
            .button {
                position: absolute;
                top: 20px;
                right: 5px;
                width: 100px;
                height: 40px;
                border-radius: 0px;
                border: 1px solid rgb(224, 224, 224);
                background-color: transparent;
                color: #888;
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
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script type="text/javascript">
        $(document).ready(function(){
        	$("#joinBtn").click(function(){
        		
        		var idReg = /^[a-z0-9]{5,15}$/g;
        		var idVal = $(".input_id").val();
    	        var pwReg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\d~!@#$%^&*()+|=]{8,15}$/;
    	        var pwVal = $(".input_pw").val();
    	        var nameReg = /^[가-힣]{2,10}$/;
    	        var nameVal = $(".input_name").val();
    	        var bdayReg = /(18|19|20)\d{2}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])/g;
    	        var bdayVal = $(".input_bday").val();
    	        var phoneReg = /(01[016789])-\d{3,4}-\d{4}/g;
    	        var phoneVal = $(".input_phone").val();
    	        var emailReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    	        var emailVal = $(".input_email").val();
    	        
    	        //아이디
    	        if($(".input_id").val()=='') {
    	        	$(".input_id").focus();
    	        	document.getElementById("idError").innerHTML="아이디를 입력해 주세요.";
    	        	return false;
    	        } else if($(".input_id").val().length>15 || $(".input_id").val().length<5) {
    	        	$(".input_id").focus();
    	        	document.getElementById("idError").innerHTML="아이디는 영소문자 5자 이상 15자 이하로 입력해 주세요.";
    	        	return false;
    	        } else if(idVal.match(idReg) == null) {
    	        	$(".input_id").focus();
    	        	document.getElementById("idError").innerHTML="아이디는 영문 소문자, 숫자만 사용할 수 있습니다.";
    	        	return false;
    	        } else if($(".check_btn").val() == "0") {
    	        	document.getElementById("idError").innerHTML="아이디 중복검사를 실행해 주세요.";
    	        	return false;
    	        } else {
    	        	document.getElementById("idError").innerHTML="";
    	        }
    	        
    	        //비밀번호
    	        if($(".input_pw").val()=='') {
    	        	$(".input_pw").focus();
    	        	document.getElementById("pwError").innerHTML="비밀번호를 입력해 주세요.";
    	        	return false;
    	        } else if(pwVal.match(pwReg) == null) {
    	        	$(".input_pw").focus();
    	        	document.getElementById("pwError").innerHTML="비밀번호는 영문 대소문자/숫자/특수문자를 포함해 8~15자리로 입력해 주세요.";
    	        	return false;
    	        } else {
    	        	document.getElementById("pwError").innerHTML="";
    	        }
    	        
    	        //비밀번호 재확인
    	        if($(".input_pw2").val()=='') {
    	        	$(".input_pw2").focus();
    	        	document.getElementById("pwError").innerHTML="비밀번호를 한 번 더 입력해 주세요.";
    	        	return false;
    	        } else if($(".input_pw2").val()!=$(".input_pw").val()) {
    	        	$(".input_pw").focus();
    	        	document.getElementById("pwError").innerHTML="비밀번호가 일치하지 않습니다.";
    	        	return false;
    	        } else {
    	        	document.getElementById("pwError").innerHTML="";
    	        }
    	        
    	        //이름
    	        if($(".input_name").val()=='') {
    	        	$(".input_name").focus();
    	        	document.getElementById("nameError").innerHTML="이름을 입력해 주세요.";
    	        	return false;
    	        } else if(nameVal.match(nameReg) == null) {
    	        	$(".input_name").focus();
    	        	document.getElementById("nameError").innerHTML="이름은 한글 2자리 이상 10자리 이하로 입력해 주세요.";
    	        	return false;
    	        } else {
    	        	document.getElementById("nameError").innerHTML="";
    	        }
    	        
    	        //생년월일
    	        if($(".input_bday").val()=='') {
    	        	$(".input_bday").focus();
    	        	document.getElementById("bdayError").innerHTML="생년월일을 입력해 주세요.";
    	        	return false;
    	        } else if(bdayVal.match(bdayReg) == null) {
    	        	$(".input_bday").focus();
    	        	document.getElementById("bdayError").innerHTML="생년월일을 형식에 맞게 입력해 주세요.";
    	        	return false;
    	        } else {
    	        	document.getElementById("bdayError").innerHTML="";
    	        }
    	        
    	        //우편번호
    	        if($(".input_zipcode").val()=='') {
    	        	$(".input_zipcode").focus();
    	        	document.getElementById("addrError").innerHTML="우편번호를 입력해 주세요.";
    	        } else {
    	        	document.getElementById("addrError").innerHTML="";
    	        }
    	        
    	      	//주소
    	        if($(".input_address").val()=='') {
    	        	$(".input_address").focus();
    	        	document.getElementById("addrError").innerHTML="주소를 입력해 주세요.";
    	        } else {
    	        	document.getElementById("addrError").innerHTML="";
    	        }
    	      	
    	      	//상세주소
    	        if($(".input_address2").val()=='') {
    	        	$(".input_address2").focus();
    	        	document.getElementById("addrError").innerHTML="상세 주소를 입력해 주세요.";
    	        } else {
    	        	document.getElementById("addrError").innerHTML="";
    	        }
    	        
    	        //연락처
    	        if($(".input_phone").val()=='') {
    	        	$(".input_phone").focus();
    	        	document.getElementById("phoneError").innerHTML="핸드폰 번호를 입력해 주세요.";
    	        	return false;
    	        } else if(phoneVal.match(phoneReg) == null) {
    	        	$(".input_phone").focus();
    	        	document.getElementById("phoneError").innerHTML="잘못된 형식의 전화번호입니다.";
    	        	return false;
    	        } else {
    	        	document.getElementById("phoneError").innerHTML="";
    	        }
    	        
    	        //이메일
    	        if($(".input_email").val()=='') {
    	        	$(".input_email").focus();
    	        	document.getElementById("emailError").innerHTML="이메일을 입력해 주세요.";
    	        	return false;
    	        } else if(emailVal.match(emailReg) == null) {
    	        	$(".input_email").focus();
    	        	document.getElementById("emailError").innerHTML="이메일을 형식(ex. abc123@wayo.com)에 맞게 입력해 주세요.";
    	        	return false;
    	        } else {
    	        	document.getElementById("emailError").innerHTML="";
    	        }
    	        
    	        joinForm.submit();
        	});
        	
        	$(".check_btn").click(function() {
	        	var id = $(".input_id").val();
	        	
        		$.ajax({
        			url:'${pageContext.request.contextPath}/member/idCheck',
        			type:'post',
        			data:{"id":id},
        			dataType: "text",
        			success:function(cnt) {
        				if($(".input_id").val()=='') {
        					$("#idError").css("color","red");
        					document.getElementById("idError").innerHTML="아이디를 입력해 주세요."
        				} else if (cnt!=1) {
        					//사용 가능한 아이디
        					$("#idError").css("color","cornflowerblue");
        					document.getElementById("idError").innerHTML="사용 가능한 아이디 입니다."
        				} else {
        					//중복된 아이디
        					$("#idError").css("color","red");
        					document.getElementById("idError").innerHTML="중복된 아이디 입니다. 다른 아이디를 입력해 주세요."
        				}
        			},
        			error:function(xhr) {
        				alert(xhr.status);
        			}
        		});
        	});
        	
        });
        </script>
        <script type="text/javascript">
        	window.onload = function() {
        		document.getElementById("zipcodeBtn").addEventListener("click", function() {
        			new daum.Postcode({
        				oncomplete: function(data) {
        					document.getElementById("userZipcode").value = data.zonecode;
     		            	document.getElementById("userAddress").value = data.roadAddress;
     		            	document.querySelector("input[name=address2]").focus();
        				}
        			}).open();
        		});
        	}
        </script>
    </head>
    <body>
    <jsp:include page="/WEB-INF/views/header.jsp"/>
        <div id="container">
            <form name="joinForm" method="post">
                <fieldset>
                    <div id="idBox">
                        <label>아이디</label>
                        <div>
                            <input type="text" placeholder="아이디 입력" class="input_id text_box" name="id">
                            <input type="button" value="중복검사" class="button check_btn">
                        </div>
                        <span class="error_box" id="idError"></span>
                    </div>
                    <div id="pwBox">
                        <label>비밀번호</label>
                        <div class="formal">
                            * 영문 대소문자/숫자/특수문자를 포함해 8~15자리로 입력해 주세요
                        </div>
                        <div>
                            <input type="password" placeholder="비밀번호 입력" class="input_pw text_box" name="password">
                            <br>
                            <input type="password" placeholder="비밀번호 재입력" class="input_pw2 text_box">
                        </div>
                        <span class="error_box" id="pwError"></span>
                    </div>
                    <div id="nameBox">
                        <label>이름</label>
                        <div>
                            <input type="text" placeholder="이름 입력" class="input_name text_box" name="name">
                        </div>
                        <span class="error_box" id="nameError"></span>
                    </div>
                    <div id="bdayBox">
                        <label>생년월일</label>
                        <div class="formal">
                            * yyyy-mm-dd 형식으로 입력해 주세요
                        </div>
                        <div>
                            <input type="text" placeholder="생년월일 입력" class="input_bday text_box" name="birthday">
                        </div>
                        <span class="error_box" id="bdayError"></span>
                    </div>
                    <div id="addrBox">
                        <label>주소</label>
                        <div>
                            <input type="button" value="우편번호 검색" class="button" id="zipcodeBtn">
                            <input type="text" placeholder="우편번호" class="text_box input_zipcode" id="userZipcode" name="zipcode">
                            <input type="text" placeholder="주소 입력" class="text_box input_address" id="userAddress" name="address">
                            <input type="text" placeholder="상세 주소 입력" class="text_box input_address2" id="userAddress2" name="address2">
                        </div>
                        <span class="error_box" id="addrError"></span>
                    </div>
                    <div id="phoneBox">
                        <label>연락처</label>
                        <div class="formal">
                            * 000-0000-0000 형식으로 입력해 주세요 
                        </div>
                        <div>
                            <input type="text" class="input_phone text_box" name="phone">
                        </div>
                        <span class="error_box" id="phoneError"></span>
                    </div>
                    <div id="emailBox">
                        <label>이메일</label>
                        <div>
                            <input type="text" class="input_email text_box" name="email">
                        </div>
                        <span class="error_box" id="emailError"></span>
                    </div>
                    <div id="btnBox">
                        <button id="joinBtn" type="button">회원가입</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </body>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
</html>