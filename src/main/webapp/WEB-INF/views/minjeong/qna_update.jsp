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
<title>wayo_qna</title>
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
    padding : 20px 50px;
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
     width: 149px;
 }
 
 #header .num, #body .num, #body_2 .num, #body_3 .num {
    color: cornflowerblue;
    font-weight: 500;
}

 .pageNum {
     padding: 15px 0 15px 0;
     text-align: center;
 }

 .postEdit {
     padding: 0 0 15px 0;
     text-align: center;
 }
 
  .postEdit input {
 	margin-top: 70px;
 }
 
.board_list input {
	width : 890px;	
}

.board_list .contentQ {
	width : 890px;
	height: 500px;
}
</style>    
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	
    <div id="title">
        <div class="t_head"> 
            <H1>공지사항</H1>
        </div>
    </div>
    
    <div id="content">
        <div class="board_list">
        <form method="post" name="f">
            <table>
                <tr>
                    <th class="num">번호</th>
                	<td>${post.id }
                	<input type="hidden" name="id" value="${post.id }">
                	<input type="hidden" name="userId" value="${post.userId }">
                	<input type="hidden" name="postDate" value="${post.registerDate }">
                	<input type="hidden" name="hit" value="${post.hit }">
                	</td>
                </tr>
                <tr>
                    <th class="subject">제목</th>
                    <td><input type="text" name="title" value="${post.title }"></td>
                </tr>  
                <tr>                
                    <th class="content">본문</th>
                    <td><textarea name="content" class="contentQ">${post.content }</textarea></td>
                </tr>
            </table>
        </form>
        </div>  
        
        <div class="postEdit">
			<input type="button" value="글 수정하기" onclick="modifyPostQna()">
		</div>
		
    </div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
    <script type="text/javascript">
    function modifyPostQna() {
    
		if (f.title.value == "") {
			alert("제목을 입력해주세요");
			return;
		}
		if (f.content.value == "") {
			alert("본문을 입력해주세요");
			return;
		}
		f.action = "${pageContext.request.contextPath}/moo/qnaModify";
		f.submit();
	}
    </script>
</body>
</html>