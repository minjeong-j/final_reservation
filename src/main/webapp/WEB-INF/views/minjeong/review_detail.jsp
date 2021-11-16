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
<title>review_detail</title>
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
 	margin-right: 8px;
 	margin-top: 70px;
 }
</style>    
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	
    <div id="title">
        <div class="t_head"> 
            <H1>이용후기</H1>
        </div>
    </div>
    
    <div id="content">
        <div class="board_list">
            <table>
                <tr>
                    <th class="num">번호</th>
                	<td>${post.id }</td>
                </tr>
                <tr>
                    <th class="subject">제목</th>
                    <td>${post.title }</td>
                </tr>
                <tr>
                    <th class="writer">작성자</th>
                     <td>${post.userId }</td>
                </tr>    
                <tr>                
                    <th class="content">본문</th>
                    <td>${post.content }</td>
                </tr>
                <tr>                
                    <th class="date">작성일</th>
                    <td>${post.registerDate }</td>
                </tr>
                <tr>                
                    <th class="hit">조회</th>
                    <td>${post.hit }</td>
                </tr>
            </table>
        </div>  
        
        <div class="postEdit">
			<input type="button" value="글 수정하기" onclick="updatePost()">
			<input type="button" value="삭제하기" onclick="deletePost()">
			<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/moo/reviewView'">
		</div>
		
    </div>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
    <script type="text/javascript">
    function updatePost() {
		location.href = "${pageContext.request.contextPath}/moo/reviewUpdate?id=${post.id}";
	}
	function deletePost() {
		if (window.confirm("정말 삭제하시겠습니까?")) {
			location.href = "${pageContext.request.contextPath}/moo/reviewDelete?id=${post.id}";
		}
	}
    </script>
</body>
</html>