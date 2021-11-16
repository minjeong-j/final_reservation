<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 | 와요(WAYO)</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/common.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>	
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
     cursor : default;
 }

 th, td {
     padding: 10px 0 10px 0;
 }

 th {
     background-color: #f1f1f0; 
 }
 
 #headerN .num, #body .num, #body_2 .num, #body_3 .num {
    color: cornflowerblue;
    font-weight: 500;
}

 #pageNum {
     padding: 15px 0 15px 0;
     text-align: center;
 }

 .postSearch {
     padding: 0 0 15px 0;
     text-align: center;
 }
 
 .modify {
	text-align: right;
	margin-top: 28px;
	margin-right: 68px;
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
            <table>
                <tr id="headerN">
                    <th class="num">번호</th>
                    <th class="subject">제목</th>
                    <th class="writer">작성자</th>
                    <th class="date">작성일</th>
                    <th class="hit">조회</th>
                </tr> 
                <c:forEach var="post" items="${noticeList }">
	                <tr id="body">
	                	<td onclick="location.href='${pageContext.request.contextPath }/moo/noticeDetail?id=${post.id}'">${post.id }</td>
	                    <td onclick="location.href='${pageContext.request.contextPath }/moo/noticeDetail?id=${post.id}'">${post.title }</td>
	                    <td onclick="location.href='${pageContext.request.contextPath }/moo/noticeDetail?id=${post.id}'">${post.userId }</td>
	                    <td onclick="location.href='${pageContext.request.contextPath }/moo/noticeDetail?id=${post.id}'">${post.registerDate }</td>
	                    <td onclick="location.href='${pageContext.request.contextPath }/moo/noticeDetail?id=${post.id}'">${post.hit }</td>
               		</tr>
                </c:forEach>
            </table>
        </div>  
        
        <%-- 페이지 번호를 출력 --%>
        <div id="pageNum">
  			<div style="display: block; text-align: center;">		
				<c:if test="${paging.startPage != 1 }">
					<a href="/post/noticeView?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage }">
							<b>${p }</b>
						</c:when>
						<c:when test="${p != paging.nowPage }">
							<a href="/post/noticeView?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.endPage != paging.lastPage}">
					<a href="/post/noticeView?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
				</c:if>
			</div>  
        </div>
        
        <div class="modify">
			<a id="modifyBtn" href="${pageContext.request.contextPath}/post/noticeWrite">
				글쓰기
			</a>
		</div>
        <div class="postSearch">
            <form method="post" name="f" class="">
                <select>
                    <option value="all" selected>전체</option>
                    <option value="title">제목</option>
                    <option value="writer">작성자</option>
                </select>
                <input type="text" name="">
                <button type="submit" class="searchBtn">검색</button>
            </form>
        </div>
        
    </div>
    
    <!-- 자바로 게시판 페이징 넘버 예전에 했던 게시판 방식 ... -->
    
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>