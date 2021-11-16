<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	/* header */
	          
    #headerDiv {
        width: 100%;
        height: 60px;
        background-color: #fff;
        position: fixed;
        top: 0;
    }

    nav {
        display: block;
        width: 1200px;
        margin: 0 auto;
    }
    nav .logo_box {
        float: left;
        margin-right: 250px;
    }
    nav .logo_box .logo {}
    nav .logo_box .logo a {
        display: block;
        width: 70px;
        height: 40px;
        margin-top: 10px;
        /* text-align: center; */
        line-height: 40px;
        color: cornflowerblue;
    }
    nav .menu_wrap {
        float: right;
    }
    nav .menu_wrap .menu {
        margin-top: 10px;
    }
    nav .menu_wrap .menu li {
        display: block;
        float: left;
        margin-right: 40px;
    }
    nav .menu_wrap .menu li:last-child {
        margin-right: 0;
    }
    nav .menu_wrap .menu li a {
        display: block;
        width: 120px;
        height: 40px;
        text-align: center;
        line-height: 40px;
        color: #333;
    }
</style>
<link rel="icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">

<div id="wrap">
   <div id="headerDiv">
       <nav>
           <div class="logo_box">
               <h1 class="logo"><a href="${pageContext.request.contextPath}/index">wayo</a></h1>
           </div>
           <div class="menu_wrap">
               <ul class="menu">
                   <li><a href="${pageContext.request.contextPath }/member/login">로그인</a></li>
                   <li><a href="${pageContext.request.contextPath }/moo/noticeView">공지사항</a></li>
                   <li><a href="${pageContext.request.contextPath }/moo/qnaView">문의사항</a></li>
                   <li><a href="${pageContext.request.contextPath }/moo/reviewView">이용후기</a></li>
               </ul>
           </div> <!-- menu_wrap -->
       </nav>
   </div> <!-- header -->
</div> 