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
<title>돌봄일지 | 와요(WAYO) </title>
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
 }
 
 #header .num, #body .num, #body_2 .num, #body_3 .num {
    color: cornflowerblue;
    font-weight: 500;
}

 #pageNum {
     padding: 15px 0 15px 0;
     text-align: center;
 }

 .search {
     padding: 0 0 15px 0;
     text-align: center;
 }
 
 .modify {
	text-align: right;
	margin-top: 28px;
	margin-right: 48px;
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
            <H1>돌봄일지</H1>
        </div>
    </div>
    
    <div id="content">
        <div class="board_list">
            <table>
                <tr id="header">
                    <th class="num">번호</th>
                    <th class="reservation">예약번호</th>
                    <th class="writer">펫시터</th>
                    <th class="subject">제목</th>
                    <th class="date">작성일</th>
                </tr> 
                <c:forEach var="dolbom" items="${dolbomList }">
	                <tr id="body">
	                	<td onclick="location.href='${pageContext.request.contextPath }/dolbom/dolbomDetail?id=${dolbom.id}'">${dolbom.id }</td>
	                    <td onclick="location.href='${pageContext.request.contextPath }/dolbom/dolbomDetail?id=${dolbom.id}'">${dolbom.reservationId }</td>
	                    <td onclick="location.href='${pageContext.request.contextPath }/dolbom/dolbomDetail?id=${dolbom.id}'">${dolbom.sitterId }</td>
	                    <td onclick="location.href='${pageContext.request.contextPath }/dolbom/dolbomDetail?id=${dolbomt.id}'">${dolbom.title }</td>
	                    <td onclick="location.href='${pageContext.request.contextPath }/dolbom/dolbomDetail?id=${dolbom.id}'">${dolbomt.postDate }</td>
               		</tr>
                </c:forEach>
            </table>
        </div>  
        
        <%-- 페이지 번호를 출력하는 영역 --%>
        <div id="pageNum">
           
        </div>
        
        <div class="modify">
			<a id="modifyBtn" href="${pageContext.request.contextPath}/dolbom/dolbomWrite">
				글쓰기
			</a>
		</div>
        <div class="search">
            <form method="post" name="f" class="">
                <select>
                    <option value="all" selected>전체</option>
                    <option value="writer">작성자</option>
                    <option value="postDate">작성일</option>
                </select>
                <input type="text" name="">
                <button type="submit" class="searchBtn">검색</button>
            </form>
        </div>
   		
    </div>
   	<jsp:include page="/WEB-INF/views/footer.jsp"/>
    
</body>
</html>