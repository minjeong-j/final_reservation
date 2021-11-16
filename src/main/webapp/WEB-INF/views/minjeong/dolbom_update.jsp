<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>돌봄일지 | 와요(WAYO)</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/common.css">
<style type="text/css">
* {
     color: #545457;
}

body {
	margin: 0;
	/* 배경 컬러 */
	background-color: #f7f7f7;
}

#container {
    background-color: #fff;
	text-align: center;
	margin: 0 auto;
	width: 780px;
    height: 1220px;
     /* 공백 */
    margin-top: 30px;
    padding-top: 5px;
    margin-bottom: 30px;
}

#dolbomImage {
    margin: 40px 0;
}

#dolbomForm {
    margin: 20px 0;
}

#dolbomForm textarea {
	width: 680px;
	color: #545457;
}    

#dolbomForm .dolbomCheck {
    margin-left: 29%;
    text-align: left;
}

#dolbomForm .dolbomCheck td {
    text-align: left;
}

#dolbomForm .today {
    margin-top: 25px;
}

.dolbomCheck #timeSelect, #petSittingTime, #checkList, .cleanCheck, .doorCheck {
    margin-left: 10px;
} 

.dolbomCheck {
    margin-bottom: 40px;
}

/* 업로드 */
.modify {
	text-align: right;
	margin: 28px 48px 80px 0;
}

#modifyBtn {
padding: 10px 20px 10px 20px;
background-color : cornflowerblue;
color: #000000;
}

#modifyBtn:hover {
	cursor: pointer;
	border: 0.5px solid #545457;
	background-color: #f1f1f0;
}

.dolbomTable #dolbomImage p {
    color: #acaca8;
    margin-top: 40px;
}

/*밑줄*/
tr .border {
	border-bottom: 1px solid #f1f1f0;
	width: 90%;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	
    <div id="container">
        <div class="main">
            <div class="title">
                <h3>돌봄일지</h3>
            </div>
        </div>
    
        <div class="dolbomTable">
            <div id="dolbomImage">
                <div class="imageUpload">
                    <input type="file" id="real-input" class="image_inputType_file" accept="img/*" required multiple>
                    <button class="browse-btn">사진업로드</button>
                </div>  
                <p>이미지 미리보기</p>
                    <div id="imagePreview">
                        <img id="img" />
                    </div>
                <hr style="border: 1px solid #f1f1f0;" width="90%">                
            </div>
            <form id="dolbomForm" name="f" action="" method="post">
                <table class="dolbomCheck">
	                <tr>
	                    <th>제목</th>
	                    <td>
	                        <span>${dolbom.title }</span>
	                        <input type="hidden" name="id" value="${dolbom.id }">
                			<input type="hidden" name="userId" value="${reservation.sitterId }">
                			<input type="hidden" name="userId" value="${dolbom.userId }">
	                    </td>
	                </tr>
	                <tr>
	                    <th>돌봄기간</th>
	                    <td><input type="text" id="petSittingTime" name="time" size=4 maxlength=3 value="${reservation.startDate }"></td>
	                </tr>
	                <tr>
	                    <th>환경정리</th>
	                    <td><input type="checkbox" name="checkC" value="" class="cleanCheck">완료</td>
	                </tr>
	                <tr>
	                    <th>문 잠금</th>
	                    <td><input type="checkbox" name="checkD" value="" class="doorCheck">완료</td>
	                </tr>
	                <tr>
	                    <th>기타사항</th>
	                    <td>${reservation.content }</td>
	                </tr>
	                <tr class="border"></tr>
                </table>
                 <!-- <hr style="border: 1px solid #f1f1f0;" width="90%"> -->                  
                <div class="today">
                    <p id="dolbomContentName">오늘 우리는</p>
				    <textarea rows="30" class="dolbomContent" name="content"></textarea>
                </div>
            </form>

	        <div class="postEdit">
				<input type="button" value="글 수정하기" onclick="modifyPostDolbom()">
			</div>
        </div>
        
    </div> 
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
    <script type="text/javascript">
    function modifyPostDolbom() {
    
		if (f.time.value == "") {
			alert("돌봄기간을 입력해주세요");
			return;
		}
		if (f.content.value == "") {
			alert("일지를 입력해주세요");
			return;
		}
		f.action = "${pageContext.request.contextPath}/dolbom/dolbomUpdate";
		f.submit();
	}
    </script>
</body>
</html>