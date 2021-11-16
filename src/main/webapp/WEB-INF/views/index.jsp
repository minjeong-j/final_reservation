<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
    	<!-- ==============================================
		Title and Meta Tags
		=============================================== -->
        <meta charset="utf-8">
        <title>와요(WAYO)</title>
        
        <!-- ==============================================
		Favicons
		=============================================== -->
		<link rel="shortcut icon" href="images/ico/favicon.ico">
		<link rel="apple-touch-icon" href="images/ico/favicon.ico">
		<link rel="apple-touch-icon" sizes="72x72" href="images/ico/favicon.ico">
		<link rel="apple-touch-icon" sizes="114x114" href="images/ico/favicon.ico">
		
		
        <style>
        
        /* reset */
        body,div,p,ul,ol,li,dl,dt,dd,h1,h2,h3,h4,h5,h6,table,tr,th,td,form,fieldset,legend,input,label,select,textarea,button,a,header,footer,nav,aside,section,article {margin:0; padding:0; box-sizing:border-box;}
        ul,ol,li {list-style:none;}
        a {text-decoration: none;}
        img,fieldset {border:none; vertical-align:middle;}
        
        
        #wrap {}

        /* body */  
        .content {
            background-color: #f7f7f7;
            width: 1800px;
            height: 2840px;
        }
        
        .wrapper {
        	width: 1800px;
        	/* height: 1300px; */
        	height: 2840px;
        	background-color: #f7f7f7;
        }
        
        .mainImg {
        	/* text-align: center; */
        }
        
        .mainImg video {
        	width: 100%;
        	height: 800px;
        	object-fit: cover;
        	display: flex;
        	margin-top: 60px;
        }
        
        .mainImg h2 {
        	color : #fff;
        	font-size: 70px;
        	position: absolute;
        	top: 360px;
        	margin-left: 200px;
        	/* left: 15%; */
        	line-height: 90px;
        }
         
        .dolbomS {
        	margin-left: 200px;
        	margin-top: 60px;
        }
        
        .dolbomS h1 {
        	margin-bottom: 6px;
        }
        
        .mainContent {
        	height: auto;
        	/* margin: 30px 0 80px 0; */
        }
        
        .mainContent .reservation {
        	/* margin-left: 30px; */
        	margin-left: 200px;	
        }
        
        .mainContent .apply {
         	margin-top: 40px;
        	margin-left: 45px;
        }
        
        .reservation p, .apply p {
        	margin-top: 10px;
        }
        
        .serviceR, .applyS {
        	margin-top: 20px;
        }
        
        #dolbomBtn, #sitterBtn {
			padding: 10px 20px 10px 20px;
			background-color : cornflowerblue;
			color: #000000;
		}
		
		#dolbomBtn:hover, #sitterBtn:hover {
			cursor: pointer;
			border: 0.5px solid #545457;
			background-color: #f1f1f0;
			
		}
		
		.imgTwo {
			margin-top: 110px;
		}
		.walkingD {
			margin-top: 60px;
			margin-left: 200px;
		}
		.walkingD .fp {
			margin-top: 10px;
		}
		
		.dolbom .imgOne {
			margin-top: 115px;
		}
		
		.imgOne img, .imgTwo img {
			width: 1800px;
		}
		
		.diary {
			margin-top: 60px;
			margin-left: 200px;
		}
		
		.dolbom .diary p {
			margin-top: 10px;
		}
    </style>
    
    	<!-- ==============================================
		Fonts
		=============================================== -->
		<link rel="stylesheet" href="resources/css/common.css">
		<!-- <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,200,600,700' rel='stylesheet' type='text/css'> -->
	
		
		<!-- ==============================================
		JS
		=============================================== -->
		<script type="text/javascript" src="assets/js/libs/modernizr.min.js"></script>
    </head>
   <body data-spy="scroll" data-target="#main-nav" data-offset="400">
        <!--=== PAGE PRELOADER ===-->
		<div id="page-loader"><span class="page-loader-gif"></span></div>
        
        <jsp:include page="header.jsp" />
        <!-- header -->
        
         <div class="wrapper">   
            <div id="body-wrapper" >
	            <div class="content">
	            	<div class="mainImg">
		            	<%-- <img alt="" src="${pageContext.request.contextPath }/images/img/walkingdog.jpg">  --%>    	
			            <video src="${pageContext.request.contextPath }/resources/video/main.mp4" muted autoplay loop></video>
			            <h2>펫시터가<br>집으로 와요</h2>
	            	</div>
	            	
	            	<div class="dolbomS">
	            		<h1>돌봄 서비스 소개</h1>
	            		<p>혼자 남겨진 반려동물을 생각하며, 외출을 망설인 적이 있으신가요?</p>
	            		<p>이제는 와요 펫시터에게 맡기고, 여러분의 소중한 일상을 마음 편히 보내세요 </p>
	            	</div>
	            	
	            	<div class="mainContent">
	            		<div class="reservation" style="display: inline-block">
	            			<h3>언제든지 <br>
	            			펫시터를 부르세요</h3>
	            			
	            			<p>지금까지 78,204마리의<br> 
	            			아이들이 함께 시간을 보냈어요!</p>
	            		
		            		<div class="serviceR">
			            		<a id="dolbomBtn" href="${pageContext.request.contextPath}/reservation/form">
									돌봄 예약
								</a>
		            		</div>
	            		</div>
	            		
	            		<div class="apply" style="display: inline-block">
	            			<h3>미래 유망직, 펫시터<br>
	            			와요에서 함께해요</h3>
	            			
	            			<p>사랑스러운 강아지, 고양이를 돌보며 돈도 벌 수 있어요<br>
	            				혼자 남겨진 반려동물에게 행복한 시간을 선물해볼까요?</p>
		            		<div class="applyS">
		            			<a id="sitterBtn" href="${pageContext.request.contextPath}/petsitter/sitterForm">
									지원하기
								</a>
		            		</div>
	            		</div>
	            		
	            		<div class="walking">
	            			<div class="imgTwo">
	            				<img alt="" src="${pageContext.request.contextPath }/images/img/walkingdog2.jpg">
	            			</div>
	            			<div class="walkingD">
		            			<h3>안전한 산책과 함께,<br>
			            			깔끔한 마무리</h3>
			            		<p class="fp">와요의 펫시터들은 산책 전문 교육을 수료하였으며, 안전을 위해 2중 가드줄을 착용하고 있어요</p>
			            		<p>산책이 종료된 후에는, 집이 더러워지지 않도록 발을 깨끗이 닦아 마무리해요</p>
	            			</div>
	            		</div>
	            		
	            		<!-- 돌봄일지 -->
	            		<div class="dolbom">
	            			<div class="imgOne">
	            				<img alt="" src="${pageContext.request.contextPath }/images/img/dolbom 5.jpg">
	            			</div>
	            			<div class="diary">
		            			<h3>돌봄이 종료되면<br>
		            			돌봄일지가 도착해요</h3>
		            			<p>바쁜 업무 또는 정신 없는 하루로 인해, 반려동물과의 시간을 놓치셔도 아쉬워하지 마세요</p>
	            			</div>
	            		</div>
	            	</div>
	            </div>
            </div>
            
            <!-- footer -->
        </div> <!-- wrap -->
        <jsp:include page="footer.jsp" />
        
        <!-- ==============================================
		SCRIPTS
		=============================================== -->	
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="assets/js/libs/jquery-1.9.1.min.js">\x3C/script>')</script>
		
		<script src="assets/js/libs/bootstrap.min.js"></script>
		<script src="assets/js/jquery.easing.1.3.min.js"></script>
		<script src="assets/js/waypoints.min.js"></script>
		<script src="assets/js/jquery.easypiechart.js"></script>
		<script src="assets/js/twitterFetcher_v10_min.js"></script>
		<script src="assets/js/jquery.flexslider.min.js"></script>
		<script src="assets/js/jquery.fitvids.js"></script>
		<script src="assets/js/contact.js"></script>
		<script src="assets/js/scripts.js"></script>
		
    </body>
</html>